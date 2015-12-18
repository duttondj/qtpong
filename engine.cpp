#include <engine.h>

// Get the ball and paddles so we can manipulate them
Engine::Engine(Ball * ball, Paddle * p1Paddle, Paddle * p2Paddle, QObject * parent):QObject(parent)
{
	this->b = ball;
	this->p1 = p1Paddle;
	this->p2 = p2Paddle;
}

// Move a paddle based on collision detection
void Engine::movePaddle(Paddle *paddle, bool up)
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

// Move the ball based on collision detection
void Engine::moveBall()
{
	int xDir = this->b->getX();
	int yDir = this->b->getY();
	int x = this->b->x();
	int y = this->b->y();

	// Check if ball got past a paddle
	if(x < 2 || x > 547)
	{
		if(x <= 20)
			emit sendWin(1);
		else if(x >= 540)
			emit sendWin(0);
	}
	// Check if ball hit top or bottom walls
	if(y < 2 || y > 387)
	{
		this->b->setDirection(xDir, (-1)*yDir);
	}
	// Check if ball hit paddles
	if(this->b->collidesWithItem(this->p1) || this->b->collidesWithItem(this->p2))
	{
		this->b->setDirection(-1*xDir, yDir);
	}
}