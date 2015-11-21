#include "ball.h"
#include <QTime>

Ball::Ball(QGraphicsItem *parent) : QGraphicsEllipseItem(parent)
{
	// Seed the RNG with current millisec time
	qsrand(QTime::currentTime().msec());

	// Set x component to be between 1-4
	xDir = (qrand() % 4) + 1;

	// If x is 3 or 4, set it to -2 or -1 respectively
	if (xDir > 2)
		xDir -= 5;
	
	// Perform same random number limits for y
	yDir = (qrand() % 4) + 1;

	if (yDir > 2)
		yDir -= 5;

	// Set speed to be 1-MAXSPEED, 1 is slowest, max is fastest
	v = (qrand() % MAXBALLSPEED) + 1;
}

Ball::Ball(qreal x, qreal y, qreal w, qreal h, QGraphicsItem *parent) : QGraphicsEllipseItem(x, y, w, h, parent)
{
	// Perform identical random settings for x, y, v
	qsrand(QTime::currentTime().msec());

	xDir = (qrand() % 4) + 1;

	if (xDir > 2)
		xDir -= 5;
	
	yDir = (qrand() % 4) + 1;

	if (yDir > 2)
		yDir -= 5;

	v = (qrand() % MAXBALLSPEED) + 1;
}

void Ball::paint(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *)
{
	// Ball is a white circle
	painter->setPen(Qt::white);
	painter->setBrush(QBrush(Qt::blue));
	painter->drawEllipse(this->rect());
}

void Ball::setDirection(int newX, int newY)
{
	xDir = newX;
	yDir = newY;
}

void Ball::setSpeed(int newV)
{
	v = newV;
}

int Ball::getX()
{
	return xDir;
}

int Ball::getY()
{
	return yDir;
}

int Ball::getSpeed()
{
	return v;
}

int Ball::getMaxBallSpeed()
{
	return MAXBALLSPEED;
}

void Ball::advance(int phase)
{
	// If phase is high (timer has reset), set the coordinates of the ball
	// to move in the <x*v,y*v> direction
	if(phase == 1)
	{
		this->setPos((this->x())+(xDir*v),(this->y())+(yDir*v));
	}
}