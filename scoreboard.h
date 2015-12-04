#ifndef SCOREBOARD_H
#define SCOREBOARD_H

#include <QGraphicsSimpleTextItem>
#include <QPainter>
#include <QString>

class Scoreboard : public QGraphicsSimpleTextItem
{
public:
	// Constructors for Scoreboard
	Scoreboard(QGraphicsItem *parent = 0);
	Scoreboard(qreal x, qreal y, qreal width, qreal height, QGraphicsItem *parent = 0);

	// Color and shape settings for scoreboard
	void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget);
	
	// Increment the score by one and set the text
	void incScore();

private:
	// Sets the initial value, color, and other settings for the board
	void initScoreboard();

	// Score to be displayed on the board
	int score;
};

#endif // SCOREBOARD_H