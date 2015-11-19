#include "ball.h"
#include <QTime>

Ball::Ball(QGraphicsItem *parent) : QGraphicsEllipseItem(parent)
{
	qsrand(QTime::currentTime().msec());

	x = (qrand() % 4) + 1;

	if (x > 2)
		x -= 5;
	
	y = (qrand() % 4) + 1;

	if (y > 2)
		y -= 5;

	v = (qrand() % MAXBALLSPEED) + 1;
}

Ball::Ball(qreal x, qreal y, qreal w, qreal h, QGraphicsItem *parent) : QGraphicsEllipseItem(parent)
{
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
	if(phase == 1)
	{
		this->setPos(this->x()+(x*v),this->y()+(y*v));
	}
}