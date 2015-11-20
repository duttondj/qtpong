#include "qtpong.h"

QtPong::QtPong(QObject *parent) : QGraphicsScene(parent)
{
	// Seed the RNG with current millisec time
	qsrand(QTime::currentTime().msec());

	gameArea = new QGraphicsRectItem(0, 0, widthGame, heightGame);
	p1Paddle = new Paddle(0, (heightGame/2)-50, 20, 50);
	p2Paddle = new Paddle(widthGame-20, (heightGame/2)-50, 20, 50);
	ball = new Ball(280, (qrand() % (heightGame-50+1))+25, 20, 20);
	timer = new QTimer(this);

	// Update 60 times a second (1000 ms)
	timer->start(1000/60);

	QObject::connect(timer, SIGNAL(timeout()), this, SLOT(advance()));
	QObject::connect(timer, SIGNAL(timeout()), this, SLOT(moveBall()));

	this->addItem(p1Paddle);
	this->addItem(p2Paddle);
	this->addItem(ball);

	p1Paddle->setVisible(true);
	p2Paddle->setVisible(true);
	ball->setVisible(true);
}

// QtPong::QtPong(qreal x, qreal y, qreal width, qreal height, QObject *parent) : QGraphicsScene(parent)
// {
// 	// Seed the RNG with current millisec time
// 	qsrand(QTime::currentTime().msec());

// 	gameArea = new QGraphicsRectItem(0, 0, widthGame, heightGame);
// 	p1Paddle = new Paddle(0, (heightGame/2)-50, 20, 50);
// 	p2Paddle = new Paddle(widthGame-20, (heightGame/2)-50, 20, 50);
// 	ball = new Ball(280, (qrand() % (heightGame-50+1))+25, 20, 20);

// 	// Update 60 times a second (1000 ms)
// 	timer->start(1000/60);

// 	QObject::connect(timer, SIGNAL(timeout()), this, SLOT(advance()));
// 	QObject::connect(timer, SIGNAL(timeout()), this, SLOT(moveBall()));

// 	p1Paddle->setVisible(true);
// 	p2Paddle->setVisible(true);
// 	ball->setVisible(true);
// }

void QtPong::moveBall()
{
	int xDir = ball->getX();
	int yDir = ball->getY();
	int x = ball->x();
	int y = ball->y();

	// Check if ball got past a paddle
	if(x <= 20 || x >= 540)
	{
		// if(x <= 20)
		// 	incScore(0);
		// else if(x >= 540)
		// 	incScore(1);
	}
	// Check if ball hit paddles
	else if(ball->collidesWithItem(p1Paddle) || ball->collidesWithItem(p2Paddle))
	{
		ball->setDirection(-1*xDir, yDir);
	}
	// Check if ball hit top or bottom walls
	else if(y <= 20 || y >= 180)
	{
		ball->setDirection(xDir, -1*yDir);
	}
}