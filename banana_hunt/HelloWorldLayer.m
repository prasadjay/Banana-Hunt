//
//  HelloWorldLayer.m
//  banana_hunt
//
//  Created by Lion User on 14/06/2013.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
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
	if( (self=[super init])) {
		
        // main menu 
        
        CCSprite * welcome = [CCSprite spriteWithFile:@"game_welcome.png"];
        welcome.position = ccp(480/2,320/2);
        [self addChild:welcome];
        
        
        // main menu buttons
        
        CCMenuItemImage *start_game = [CCMenuItemImage itemFromNormalImage:@"start_button.png" selectedImage:@"start_button" target:self selector:@selector(start_damn_game)];
        
    
        start_game.position = ccp(-150,-120);
        
        CCMenuItemImage *aboutGame = [CCMenuItemImage itemFromNormalImage:@"about_button.png" selectedImage:@"about_button.png" target:self selector:@selector(load_about_page)];
        
        aboutGame.position = ccp(150, -120);
        
        CCMenu *menu = [CCMenu menuWithItems:start_game, aboutGame , nil];
        
        [self addChild:menu];
        
        
        
        
        
        
        
		// create and initialize a Label
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Beta 1.0" fontName:@"Marker Felt" fontSize:30];

		// ask director the the window size
	//	CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		label.position =  ccp( 350, 240);
		
		// add the label as a child to this Layer
		[self addChild: label];
         
         
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}

-(void) load_about_page
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:2.0 scene:[aboutDev scene]]];
}

-(void) start_damn_game
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:2.0 scene:[gameLevelTwo scene]]];
}


@end
