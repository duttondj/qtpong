#include "paddle.h"

#include <QPainter>

Paddle::Paddle(QGraphicsItem *parent) : QGraphicsRectItem(parent)
{}

Paddle::Paddle(qreal x, qreal y, qreal width, qreal height, QGraphicsItem *parent) : QGraphicsRectItem(x, y, width, height, parent)
{}

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