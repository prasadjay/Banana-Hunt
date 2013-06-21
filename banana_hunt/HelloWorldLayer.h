//
//  HelloWorldLayer.h
//  banana_hunt
//
//  Created by Lion User on 14/06/2013.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"
#import "aboutDev.h"
#import "gameLevelOne.h"
#import "gameLevelTwo.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer
{
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
