//
//  gameLevelTwo.m
//  banana_hunt
//
//  Created by Lion User on 20/06/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "gameLevelTwo.h"

@implementation gameLevelTwo
@synthesize monkey,  speed, rightIcon,leftIcon, horaImage, jumpIcon;


@synthesize banana_1, banana_2, banana_3,banana_4, banana_5,banana_6,banana_7,banana_8,banana_9,banana_10;
@synthesize block_1, block_2, block_3, block_4, block_5, block_6, block_7, block_8, block_9, block_10; 

@synthesize pillar_1, pillar_2;


+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	gameLevelTwo *layer = [gameLevelTwo node];
	
    CCTMXTiledMap *map = [CCTMXTiledMap tiledMapWithTMXFile:@"background_new_tmx.tmx"];
    [layer addChild:map z:-1];
    
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) 
    {
        
      //  [self schedule:@selector(gameLoop) interval:0];
        [self schedule:@selector(collide) interval:0];
        
        xVel = 0;
        yVel = 0;
        
        [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(check) userInfo:nil repeats:YES];
        
        speed = 0;
        
        isTouchEnabled_ = YES;
        
        //monkey
       
        
        monkey = [CCSprite spriteWithFile:@"monkey_walk_right_1.png"];
        monkey.position = ccp(480/2, 100);
        
        [self addChild:self.monkey z:5];
        
        
        //restrict image
        horaImage = [CCSprite spriteWithFile:@"icon.png"];
        horaImage.position = ccp(240, 0);
        
        [self addChild:horaImage z:-2];
         	
        
   
        //bananas
        
        banana_1 = [CCSprite spriteWithFile:@"banana_single.png"];
        banana_1.position = ccp(440, 150);
        
        [self addChild:banana_1];
        
        
        banana_2 = [CCSprite spriteWithFile:@"banana_single.png"];
        banana_2.position = ccp(540, 250);
        
        [self addChild:banana_2];
        
        
        banana_3 = [CCSprite spriteWithFile:@"banana_single.png"];
        banana_3.position = ccp(500, 200);
        
        [self addChild:banana_3];
        
        
        banana_4 = [CCSprite spriteWithFile:@"banana_single.png"];
        banana_4.position = ccp(2920/2, 150);
        
    //    [self addChild:banana_4];
        
        
        banana_5 = [CCSprite spriteWithFile:@"banana_single.png"];
        banana_5.position = ccp(3100/2, 150);
        
    //    [self addChild:banana_5];
        
        
        banana_6 = [CCSprite spriteWithFile:@"banana_single.png"];
        banana_6.position = ccp(320, 150);
        
    //    [self addChild:banana_6];
        
        
        banana_7 = [CCSprite spriteWithFile:@"banana_single.png"];
        banana_7.position = ccp(920/2, 150);
        
     //   [self addChild:banana_7];
        
        
        banana_8 = [CCSprite spriteWithFile:@"banana_single.png"];
        banana_8.position = ccp(1920/2, 150);
        
     //   [self addChild:banana_8];
        
        
        banana_9 = [CCSprite spriteWithFile:@"banana_single.png"];
        banana_9.position = ccp(2920/2, 150);
        
    //    [self addChild:banana_9];
        
        
        banana_10 = [CCSprite spriteWithFile:@"banana_single.png"];
        banana_10.position = ccp(3100/2, 150);
        
   //     [self addChild:banana_10];

        
        
        
        //pillars
        
        pillar_1 = [CCSprite spriteWithFile:@"start_finish_blocks.png"];
        pillar_1.position = ccp(105, 110);
        
        [self addChild:pillar_1];
        
        pillar_2 = [CCSprite spriteWithFile:@"start_finish_blocks.png"];
        pillar_2.position = ccp(4650, 110);
        
        [self addChild:pillar_2];
        
        
        
        //blocks
        
        block_1 = [CCSprite spriteWithFile:@"stone.png"];
        block_1.position = ccp(500, 50);
        
        [self addChild:self.block_1 z:5];
        
        
        block_2 = [CCSprite spriteWithFile:@"stone.png"];
        block_2.position = ccp(600, 50);
        
        [self addChild:block_2];
        
        
        block_3 = [CCSprite spriteWithFile:@"stone.png"];
        block_3.position = ccp(550, 90);
        
        [self addChild:block_3];
        
        
        block_4 = [CCSprite spriteWithFile:@"stone.png"];
        block_4.position = ccp(3100/2, 150);
        
        [self addChild:block_4];
        
        
        block_5 = [CCSprite spriteWithFile:@"stone.png"];
        block_5.position = ccp(3100/2, 150);
        
        [self addChild:block_5];
        
        
        block_6 = [CCSprite spriteWithFile:@"stone.png"];
        block_6.position = ccp(3100/2, 150);
        
        [self addChild:block_6];
        
        
        block_7 = [CCSprite spriteWithFile:@"stone.png"];
        block_7.position = ccp(3100/2, 150);
        
        [self addChild:block_7];
        
        
        block_8 = [CCSprite spriteWithFile:@"stone.png"];
        block_8.position = ccp(3100/2, 150);
        
        [self addChild:block_8];
        
        
        block_9 = [CCSprite spriteWithFile:@"stone.png"];
        block_9.position = ccp(3100/2, 150);
        
        [self addChild:block_9];
        
        
        block_10 = [CCSprite spriteWithFile:@"stone.png"];
        block_10.position = ccp(3100/2, 150);
        
        [self addChild:block_10];
        
              
        //gamepad
        
        rightIcon  = [CCMenuItemImage itemFromNormalImage:@"button.png" selectedImage:@"button_sel.png" target:self selector:@selector(goRight)];
        
        leftIcon  = [CCMenuItemImage itemFromNormalImage:@"button.png" selectedImage:@"button_sel.png" target:self selector:@selector(goLeft)];
        
        
        jumpIcon  = [CCMenuItemImage itemFromNormalImage:@"button.png" selectedImage:@"button_sel.png" target:self selector:@selector(jump)];
        
        rightIcon.position = ccp(-140,-120);
        leftIcon.position = ccp(-205, -120);
        jumpIcon.position = ccp(205, -120);
        
        
        
        CCMenu *menu = [CCMenu menuWithItems:rightIcon,leftIcon, jumpIcon, nil];
        
        [self addChild:menu z:5];

    [self runAction:[CCFollow actionWithTarget:horaImage worldBoundary:CGRectMake(0, 0, 4800, 320)]];
        
    }
        
    return  self;
    
}


-(void)ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch * touch = [touches anyObject];
    CGPoint location = [touch locationInView:[touch view]];
    location = [[CCDirector sharedDirector] convertToGL:location];
    

    


}



-(void)ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event
{
    
 
}

-(void)goRight
{
    if(monkey.position.x < 4450 )
    {
    [monkey runAction:[CCMoveBy actionWithDuration:0.2 position:ccp(15,0)]];
    [rightIcon runAction:[CCMoveBy actionWithDuration:0.2 position:ccp(15,0)]];
    [leftIcon runAction:[CCMoveBy actionWithDuration:0.2 position:ccp(15,0)]];
    [jumpIcon runAction:[CCMoveBy actionWithDuration:0.2 position:ccp(15,0)]];
    [horaImage runAction:[CCMoveBy actionWithDuration:0.2 position:ccp(15,0)]];
    }
}

-(void)goLeft
{
    
    if(monkey.position.x > 240)
    {
    [monkey runAction:[CCMoveBy actionWithDuration:0.2 position:ccp(-150,0)]];
    [rightIcon runAction:[CCMoveBy actionWithDuration:0.2 position:ccp(-150,0)]];
    [leftIcon runAction:[CCMoveBy actionWithDuration:0.2 position:ccp(-150,0)]];
    [jumpIcon runAction:[CCMoveBy actionWithDuration:0.2 position:ccp(-150,0)]];
    [horaImage runAction:[CCMoveBy actionWithDuration:0.2 position:ccp(-150,0)]];
    }

}

-(void)jump
{
    
    
    
    yVel = 6 ;
    xVel = 0.5;
    
}



-(void)gameLoop
{
    
    if(monkey.position.y != 100)
    {
       // [monkey runAction:[CCMoveBy actionWithDuration:1.0 position:ccp(monkey.position.y, -100)]];
        
        
    }
    
}


-(void)check
{
    if(monkey.position.y > 99)
    {
        yVel -= 0.3;
        
        
    }
    else {
        if(yVel != 6)
        { 
            yVel = 0;
            xVel = 0;
        }
    }

    monkey.position = ccp(monkey.position.x, monkey.position.y + yVel);
    
}

-(void)collide
{
    CGRect r1 = CGRectMake(monkey.position.x, monkey.position.y, 70 , 84);
    CGRect r2 = CGRectMake(block_1.position.x, block_1.position.y, 40, 12);
    
    if(CGRectIntersectsRect(r1, r2))
    {
        NSLog(@"collided");
    }
    else {
        NSLog(@"Not Collided");
    }
}

@end
