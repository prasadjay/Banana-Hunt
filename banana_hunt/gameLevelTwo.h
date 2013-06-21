//
//  gameLevelTwo.h
//  banana_hunt
//
//  Created by Lion User on 20/06/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "CCLayer.h"
#import "cocos2d.h"

@interface gameLevelTwo : CCLayer
{
    float xVel;
    float yVel;
    
    
    
    CCSprite * monkey;
    CCMenuItem * rightIcon;
    CCMenuItem * leftIcon;
    CCMenuItem * jumpIcon;
    int speed;
    CCSprite * horaImage;
    
    //bananas
    
    CCSprite * banana_1;
    CCSprite * banana_2;
    CCSprite * banana_3;
    CCSprite * banana_4;
    CCSprite * banana_5;
    CCSprite * banana_6;
    CCSprite * banana_7;
    CCSprite * banana_8;
    CCSprite * banana_9;
    CCSprite * banana_10;

    
    // Pillars
    
    CCSprite * pillar_1;
    CCSprite * pillar_2;
    
    //blocks
    
    CCSprite *block_1;
    CCSprite *block_2;
    CCSprite *block_3;
    CCSprite *block_4;
    CCSprite *block_5;
    CCSprite *block_6;
    CCSprite *block_7;
    CCSprite *block_8;
    CCSprite *block_9;
    CCSprite *block_10;
}


+(CCScene *) scene;

@property (nonatomic, assign)int speed;
@property (nonatomic, retain)CCSprite *monkey;
@property (nonatomic, retain)CCSprite *horaImage;
@property (nonatomic, retain)CCMenuItem *rightIcon;
@property (nonatomic, retain)CCMenuItem *jumpIcon;
@property (nonatomic, retain)CCMenuItem *leftIcon;

//bananas

@property (nonatomic, retain)CCSprite *banana_1;
@property (nonatomic, retain)CCSprite *banana_2;
@property (nonatomic, retain)CCSprite *banana_3;
@property (nonatomic, retain)CCSprite *banana_4;
@property (nonatomic, retain)CCSprite *banana_5;
@property (nonatomic, retain)CCSprite *banana_6;
@property (nonatomic, retain)CCSprite *banana_7;
@property (nonatomic, retain)CCSprite *banana_8;
@property (nonatomic, retain)CCSprite *banana_9;
@property (nonatomic, retain)CCSprite *banana_10;



// Pillars

@property (nonatomic, retain) CCSprite * pillar_1;
@property (nonatomic, retain) CCSprite * pillar_2;

//blocks

@property (nonatomic, retain) CCSprite *block_1;
@property (nonatomic, retain) CCSprite *block_2;
@property (nonatomic, retain) CCSprite *block_3;
@property (nonatomic, retain) CCSprite *block_4;
@property (nonatomic, retain) CCSprite *block_5;
@property (nonatomic, retain) CCSprite *block_6;
@property (nonatomic, retain) CCSprite *block_7;
@property (nonatomic, retain) CCSprite *block_8;
@property (nonatomic, retain) CCSprite *block_9;
@property (nonatomic, retain) CCSprite *block_10;




@end
