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
	QObject::connect(timer, SIGNAL(timeout()), this, SLOT(moveBall()));

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

void QtPong::moveBall()
{
	int xDir = ball->getX();
	int yDir = ball->getY();
	int x = ball->x();
	int y = ball->y();

	// Check if ball got past a paddle
	if(x < 2 || x > 547)
	{
		if(x <= 20)
			win(1);
		else if(x >= 540)
			win(0);
	}
	// Check if ball hit top or bottom walls
	if(y < 2 || y > 387)
	{
		ball->setDirection(xDir, (-1)*yDir);
	}
	// Check if ball hit paddles
	if(ball->collidesWithItem(p1Paddle) || ball->collidesWithItem(p2Paddle))
	{
		ball->setDirection(-1*xDir, yDir);
	}
}

void QtPong::keyPressEvent(QKeyEvent *event)
{
	// Check for key presses
	if(event->key() == Qt::Key_A)
		movePaddle(p1Paddle, false);
	if(event->key() == Qt::Key_S)
		movePaddle(p1Paddle, true);
	if(event->key() == Qt::Key_K)
		movePaddle(p2Paddle, false);
	if(event->key() == Qt::Key_L)
		movePaddle(p2Paddle, true);
	if(event->key() == Qt::Key_Q)
		exit(0);
}

void QtPong::movePaddle(Paddle *paddle, bool up)
{
	int max = paddle->getMaxPaddleSpeed();
	int y = paddle->y();

	// Move up
	if(((y - max) > 1) && up) 
	{
		paddle->setY(y-max);
	}
	else if(up)
	{
		paddle->setY(1);
	}
	
	// Move down
	else if(((y + 50 + max) < 399) && !up) 
	{
		paddle->setY(y+max);
	}
	else
	{
		paddle->setY(349);
	}
}