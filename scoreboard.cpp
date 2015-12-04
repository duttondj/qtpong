#include "scoreboard.h"

Scoreboard::Scoreboard(QGraphicsItem *parent) : QGraphicsSimpleTextItem(parent)
{
	score = 0;
	this->setText(QString::number(score));

	QFont font("Helvetica", 20);
	this->setFont(font);
	this->setBrush(QBrush(Qt::white));
}

void Scoreboard::paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget)
{
	// // Draw a white rectangle
	// painter->setBrush(QBrush(QColor(255, 255, 255, 255)));
	// painter->drawRect(0,0,12,24);
	// //painter->drawText(50,50,this->text());
	QGraphicsSimpleTextItem::paint(painter, option, widget);

}

void Scoreboard::incScore()
{
	score++;
	setText(QString::number(score));
}