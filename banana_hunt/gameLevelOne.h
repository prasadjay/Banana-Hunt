//
//  gameLevelOne.h
//  banana_hunt
//
//  Created by Lion User on 14/06/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

@interface gameLevelOne : CCLayer
{
    CCSprite *t1;
    CCMenuItemImage * tt;
}

+(CCScene *) scene;


@property (nonatomic, retain)CCSprite *t1;
@property (nonatomic, retain)CCMenuItemImage * tt;
@end
