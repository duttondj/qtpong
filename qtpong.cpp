#include "qtpong.h"

QtPong::QtPong(QObject *parent) : QGraphicsScene(parent)
{
	startNew();
}

QtPong::QtPong(qreal x, qreal y, qreal width, qreal height, QObject *parent) : QGraphicsScene(parent)
{
	startNew();
}

void QtPong::startNew()
{
	Engine engine;
	QThread * thread;

	// Seed the RNG with current millisec time
	qsrand(QTime::currentTime().msec());

	// Create a new game area, paddles, ball, and timer
	gameArea = new QGraphicsRectItem;
	p1Paddle = new Paddle(0, 0, 5, 50);
	p2Paddle = new Paddle(0, 0, 5, 50);
	ball = new Ball(0, 0, 10, 10);
	p1Score = new Scoreboard();
	p2Score = new Scoreboard();
	timer = new QTimer(this);

	// Black game area
	gameArea->setPen(QPen(Qt::black,1));
	gameArea->setBrush(Qt::black);
	gameArea->setRect(0,0,widthGame, heightGame);

	// Reset placement of parts
	setGame();

	// Connect the timer to the advance and moveBall functions
	QObject::connect(timer, SIGNAL(timeout()), this, SLOT(advance()));
	QObject::connect(timer, SIGNAL(timeout()), &engine, SLOT(moveBall(Ball* ball, Paddle* p1Paddle, Paddle* p2Paddle)));
	QObject::connect(this, SIGNAL(paddleMoved(Paddle*, bool)), &engine, SLOT(movePaddle(Paddle*, bool)));
	QObject::connect(&engine, SIGNAL(sendWin(bool)), this, SLOT(win(bool)));
	QObject::connect(&engine, SIGNAL(finished()), &engine, SLOT(deleteLater()));
    QObject::connect(thread, SIGNAL(finished()), thread, SLOT(deleteLater()));

	// Place and make visible all the pieces
	this->addItem(gameArea);
	this->addItem(p1Paddle);
	this->addItem(p2Paddle);
	this->addItem(ball);
	this->addItem(p1Score);
	this->addItem(p2Score);

	gameArea->setVisible(true);
	p1Paddle->setVisible(true);
	p2Paddle->setVisible(true);
	ball->setVisible(true);
	p1Score->setVisible(true);
	p2Score->setVisible(true);

	thread->start();
}

void QtPong::setGame()
{
	// Set the parts to where they should be at the begining of a game
	p1Paddle->setPos(0, (heightGame/2)-25);
	p2Paddle->setPos(widthGame-5, (heightGame/2)-25);
	ball->setPos(274, (qrand() % (heightGame-50+1)));
	p1Score->setPos((widthGame/2)-40, 0);
	p2Score->setPos((widthGame/2)+20, 0);

	ball->resetBall();

	// Update 60 times a second [1/(60ms) ~ 17ms]
	timer->start(17);
}

void QtPong::win(bool player)
{
	// Increment score, stop timer, and then reset game
	if (player)
		p2Score->incScore();
	else
		p1Score->incScore();

	timer->stop();
	setGame();
}

void QtPong::keyPressEvent(QKeyEvent *event)
{
	// Check for key presses
	if(event->key() == Qt::Key_A)
		emit paddleMoved(p1Paddle, false);
	if(event->key() == Qt::Key_S)
		emit paddleMoved(p1Paddle, true);
	if(event->key() == Qt::Key_K)
		emit paddleMoved(p2Paddle, false);
	if(event->key() == Qt::Key_L)
		emit paddleMoved(p2Paddle, true);
	if(event->key() == Qt::Key_Q)
		exit(0);
}