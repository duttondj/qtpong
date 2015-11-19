#include "paddle.h"

#include <QPainter>

Paddle::Paddle(QGraphicsItem *parent) : QGraphicsRectItem(parent)
{
	
}

Paddle::Paddle(qreal x, qreal y, qreal w, qreal h, QGraphicsItem *parent) : QGraphicsRectItem(parent)
{
	
}

void Paddle::paint(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *)
{
	// Draw a white rectangle
	painter->setBrush(QBrush(Qt::white));
	painter->drawRect(this->rect());
}

int Paddle::getMaxPaddleSpeed()
{
	return MAXPADDLESPEED;
}