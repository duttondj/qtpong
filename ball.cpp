#include "ball.h"
#include <QTime>

Ball::Ball(QGraphicsItem *parent) : QGraphicsEllipseItem(parent)
{
	// Seed the RNG with current millisec time
	qsrand(QTime::currentTime().msec());

	// Set x component to be between 1-4
	x = (qrand() % 4) + 1;

	// If x is 3 or 4, set it to -2 or -1 respectively
	if (x > 2)
		x -= 5;
	
	// Perform same random number limits for y
	y = (qrand() % 4) + 1;

	if (y > 2)
		y -= 5;

	// Set speed to be 1-MAXSPEED, 1 is slowest, max is fastest
	v = (qrand() % MAXBALLSPEED) + 1;
}

Ball::Ball(qreal x, qreal y, qreal w, qreal h, QGraphicsItem *parent) : QGraphicsEllipseItem(parent)
{
	// Perform identical random settings for x, y, v
	qsrand(QTime::currentTime().msec());

	x = (qrand() % 4) + 1;

	if (x > 2)
		x -= 5;
	
	y = (qrand() % 4) + 1;

	if (y > 2)
		y -= 5;

	v = (qrand() % MAXBALLSPEED) + 1;
}

void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget)
{
	// Ball is a white circle
	painter->setBrush(QBrush(Qt::white));
	painter->drawEllipse(this->rect());
}

void setDirection(int newX, int newY)
{
	x = newX;
	y = newY;
}

void setSpeed(int newV)
{
	v = newV;
}

int getX()
{
	return x;
}

int getY()
{
	return y;
}

int getSpeed()
{
	return v;
}

int getMaxBallSpeed()
{
	return MAXBALLSPEED;
}

void Ball::advance(int phase)
{
	// If phase is high (timer has reset), set the coordinates of the ball
	// to move in the <x*v,y*v> direction
	if(phase == 1)
	{
		this->setPos(this->x()+(x*v),this->y()+(y*v));
	}
}