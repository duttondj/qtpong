#include <QApplication>

#include "QtPong.h"

int main()
{
	QApplication game();

	QtPong qtPong;
	qtPong.show();

	return game.exec();
}