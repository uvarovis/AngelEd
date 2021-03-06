//
//  Posts.h
//  Angel Ed
//
//  Created by Иван on 3/27/14.
//  Copyright (c) 2014 Global App Initiative. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kDefaultText @""
#define kDefaultTitle @""
#define kDefaultCategory @"uncategorized"
#define kDefaultTime @"default"
#define kDefaultMonth @"default"
#define kDefaultDate @"default"

#define kCategoryPlaceholder @"Category"
#define kTextPlaceholder @"Your post"
#define kTitlePlaceholder @"Your title"

#define kAllPosts @"posts"
#define kAllCategories @"categories"

#define kPostCategory @"category"
#define kPostTitle @"title"
#define kPostText @"text"
#define kPostTime @"time"
#define kPostDate @"date"
#define kPostMonth @"month"
#define kPostPoints @"points"

#define kCategoryDefault @"uncategorized"
#define kCategoryCommunity @"community"
#define kCategoryNetworking  @"networking"
#define kCategoryProfessional @"professional"
#define kCategoryAcademic @"academic"

// For personal info
#define kPersonName @"name"
#define kPersonPhoto @"photo"
#define kAllPersonalInfo @""
#define kNamePlaceholder @"Your name"

#define kDetailView @"showDetail"

#define kCategoryRankings @"categoryRankings"
#define kRankingsByDifficulty @"rankingsByDifficulty"
#define kRankingsByInterest @"rankingsByInterest"

#define kAcademicDifficulty @"academicDifficulty"
#define kProfessionalDifficulty @"professionalDifficulty"
#define kNetworkingDifficulty @"networkingDifficulty"
#define kCommunityDifficulty @"communityDifficulty"

#define kAcademicInterest @"academicInterest"
#define kProfessionalInterest @"professionalInterest"
#define kNetworkingInterest @"networkingInterest"
#define kCommunityInterest @"communityInterest"

@interface Posts : NSObject

+(NSString *)convertMonthToText:(NSString *)num;

// Getting data for posts and categories
+(NSMutableDictionary *)getAllPosts;
+(NSMutableDictionary *)getAllCategories;

+(NSMutableDictionary *)getPostDataForKey:(NSString *)key;
+(NSMutableDictionary *)getPostDataForCurrentKey;



+(NSMutableDictionary *)getAllRankings;
+(NSString *)getCategoryByDifficultyRanking:(NSInteger) n;
+(void)changeDifficultyRankingFrom:(NSInteger)old To:(NSInteger)new;
+(NSString *)getCategoryByInterestRanking:(NSInteger) n;
+(void)changeInterestRankingFrom:(NSInteger)old To:(NSInteger)new;
+(void)initRankings;
+(float)getMultiplierFromCategoryName:(NSString *)category;
+(void)saveRankings;





// Removing posts
+(void)removePostForKey:(NSString *)key;
// Savind data to user defaults
+(void)savePosts;

// Current key
+(void)setCurrentKey:(NSString *)key;
+(NSString *)getCurrentKey;

+(void)setTitle:(NSString *)title setText:(NSString *)text setCategory:(NSString *)category forKey:(NSString *)key;
+(void)setTitle:(NSString *)title setText:(NSString *)text setCategoryforCurrentKey:(NSString *)category;
+(void)setCategoryforCurrentKey:(NSString *)category;
+(void)setTextforCurrentKey:(NSString *)text;
+(void)setTitleforCurrentKey:(NSString *)title;

+(void)countPointsForCategories;
+(NSMutableDictionary *)getPersonalInfo;
+(void)setPersonalName:(NSString *)name;
+(void)setPersonalPhoto:(NSData *)photo;

@end
