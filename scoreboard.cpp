#include "scoreboard.h"

Scoreboard::Scoreboard(QGraphicsItem *parent) : QGraphicsSimpleTextItem(parent)
{
	initScoreboard();
}

Scoreboard::Scoreboard(qreal x, qreal y, qreal width, qreal height, QGraphicsItem *parent) : QGraphicsSimpleTextItem(x, y, width, height, parent)
{
	initScoreboard();
}

void Scoreboard::initScoreboard()
{
	score = 0;
	this->setText(QString::number(score));

	QFont font("Helvetica", 12);
	this->setFont(font);
}

void Scoreboard::paint(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *)
{
	// Draw a white rectangle
	painter->setPen(Qt::white);
	painter->setBrush(QBrush(Qt::white));
	QGraphicsSimpleTextItem::paint(painter, option, widget);
}

void Scoreboard::incScore()
{
	score++;
	setText(QString::number(score));
}