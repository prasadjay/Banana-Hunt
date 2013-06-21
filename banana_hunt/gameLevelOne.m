//
//  gameLevelOne.m
//  banana_hunt
//
//  Created by Lion User on 14/06/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "gameLevelOne.h"

@implementation gameLevelOne
{
}

@synthesize t1, tt;

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	gameLevelOne *layer = [gameLevelOne node];
    
    
    CCTMXTiledMap *map = [CCTMXTiledMap tiledMapWithTMXFile:@"background_new_tmx.tmx"];
    [layer addChild:map];
    
    /*
    
  
    
    
    CCSprite *t2 = [CCSprite spriteWithFile:@"icon.png"];
    t2.position = ccp(2000,200);
    [layer addChild:t2];
     
     */
    
   // gameLevelOne *layer2 = [gameLevelOne node];
    
      
  //  [layer2 addChild:menu z:5];
    
    
    
  
    
    //[layer2 runAction:[CCRepeatForever actionWithAction:[CCMoveBy actionWithDuration:1 position:ccp(5,0)]]];
   // [layer2 runAction:[CCFollow actionWithTarget:scene worldBoundary:CGRectMake(0, 0, 4800, 320)]];
	   //     [layer runAction:[CCFollow actionWithTarget:t1 worldBoundary:CGRectMake(0,0,4800,320)]];
	// add layer as a child to scene
     
     
	[scene addChild: layer];
     
     
  //  [scene addChild:layer2]; 
   
    
	// return the scene
	return scene;
}



-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
    
        isTouchEnabled_ =YES;
        
        //tile map loading
        
       
        
        //test sprites
        
        t1 = [CCSprite spriteWithFile:@"icon.png"];
        t1.position = ccp(100,100);
        [self addChild:t1 z:5];
        
       [self runAction:[CCFollow actionWithTarget:t1 worldBoundary:CGRectMake(0, 0, 4800, 320)]];
        

        
        //run viewport with the player



        tt  = [CCMenuItemImage itemFromNormalImage:@"button.png" selectedImage:@"button_sel.png" target:NULL selector:@selector(button_left_pressed)];
        
        
        
        tt.position = ccp(100,100);
        
        
        
        CCMenu *menu = [CCMenu menuWithItems:tt, nil];

        [self addChild:menu z:5];
    
    }
    
    return self;
}


-(void)ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
     [self schedule:@selector(game_update) interval:0];
    //t1.position = ccp(t1.position.x + 10, t1.position.y + 0);

    
    
}

-(void) game_update
{
    
    tt.position = ccp(t1.position.x-300, t1.position.y-200);
    t1.position = ccp(t1.position.x + 1, t1.position.y + 0);
  //  button_left.position = ccp(t1.position.x , t1.position.y);
    
  //  CGSize size = [[CCDirector sharedDirector] winSize];
    
  //  NSString *temp = [NSString stringWithFormat:@"$ %f %f",size.width, size.height];
    
    NSLog(@"loop working");
}

-(void) button_left_pressed
{
    
}

-(void) button_right_pressed
{
    
}

-(void) button_jump_pressed
{
    
}

@end
