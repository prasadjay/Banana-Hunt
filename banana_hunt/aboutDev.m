//
//  aboutDev.m
//  banana_hunt
//
//  Created by Lion User on 14/06/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "aboutDev.h"

@implementation aboutDev


+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	aboutDev *layer = [aboutDev node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
        
        
        //main info
        CCSprite *test = [CCSprite spriteWithFile:@"about_details.png"];
        test.position = ccp(480/2, 320/2);
        [self addChild:test z:-1];
        
        // social buttons
        
        CCMenuItemImage *twitter = [CCMenuItemImage itemFromNormalImage:@"twitter_icon.png" selectedImage:@"start_button" target:self selector:@selector(open_twitter)];
        
        twitter.position = ccp(-130,-40);
        
        CCMenuItemImage *facebook = [CCMenuItemImage itemFromNormalImage:@"facebook_icon.png" selectedImage:@"start_button" target:self selector:@selector(open_facebook)];
        
        facebook.position = ccp(0,-40);
        
        CCMenuItemImage *blogger = [CCMenuItemImage itemFromNormalImage:@"blogger_icon.png" selectedImage:@"start_button" target:self selector:@selector(open_blogger)];
        
        blogger.position = ccp(130,-40);
        
        
        // back button
        
        CCMenuItemImage *back = [CCMenuItemImage itemFromNormalImage:@"back_button.png" selectedImage:@"start_button" target:self selector:@selector(go_back_menu)];
        
        back.position = ccp(-160,-120);
        
        
        //menu intergration
        
        
        CCMenu *menu = [CCMenu menuWithItems:back,twitter,facebook,blogger , nil];
        
        [self addChild:menu];

        
        
    }
    
    return self;
}

-(void) go_back_menu
{
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:2.0 scene:[HelloWorldLayer scene]]];
}

-(void) open_twitter
{
    NSURL * url = [[NSURL alloc] initWithString:@"http://www.twitter.com/prasadjayashan/"];
                   [[UIApplication sharedApplication] openURL:url];
}

-(void) open_facebook
{
    NSURL * url = [[NSURL alloc] initWithString:@"http://www.facebook.com/prasad.jayashanka/"];
    [[UIApplication sharedApplication] openURL:url];
}


-(void) open_blogger
{
    NSURL * url = [[NSURL alloc] initWithString:@"http://www.prasad-notes.blogspot.com/"];
    [[UIApplication sharedApplication] openURL:url];
}


@end
