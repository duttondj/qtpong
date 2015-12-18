#include <QDebug>
#include <QtTest>
#include <QPixmap>
#include <QApplication>
#include "mainwindow.h"

class TestQtPong: public QObject
{
	Q_OBJECT
private slots:
	void gameTest();
};

// Create a new window and test moving the paddles
void TestQtPong::gameTest()
{	
    MainWindow * testW = new MainWindow();
    testW->setVisible(true);;
	testW->setFocus();

	qDebug()<<"start";

	QPixmap pixmap(testW->size());
	
	qDebug()<<"0";

	// Take initial game screenshot
	testW->render(&pixmap);

	QTest::qSleep(1000);

	QVERIFY(pixmap.save("test0.png", "PNG"));

	qDebug()<<"1";

	// Move left paddle to a bottom position
	for(int i = 0; i < 8; i++)
	{
		QTest::keyClick(testW, Qt::Key_A, Qt::NoModifier, 17);
		QTest::keyClick(testW, Qt::Key_S, Qt::NoModifier, 17);
	}
	// Take screenshot
	testW->render(&pixmap);
	QVERIFY(pixmap.save("test1.png", "PNG"));

	qDebug()<<"2";

	// Move right paddle to a top position
	for(int i = 0; i < 16; i++)
	{
		QTest::keyClick(testW, Qt::Key_K, Qt::NoModifier, 17);
		QTest::keyClick(testW, Qt::Key_L, Qt::NoModifier, 17);
	}
	// Take screenshot
	testW->render(&pixmap);
	QVERIFY(pixmap.save("test2.png", "PNG"));
}

QTEST_MAIN(TestQtPong)

#include "testqtpong.moc"
