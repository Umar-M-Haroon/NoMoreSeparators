
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>




%hook PTHTweetbotStatusView //tweetbot
	-(void)setHideSeparatorLine:(BOOL)arg1{
		%orig(TRUE);
	}
%end

//global
	%hook UITableView 
		-(void)setSeparatorStyle:(long long)arg1
		{
			%orig(0);
		}
	%end
	
	%hook UITableViewCellSeparatorView

		-(void)setSeparatorEffect:(id)arg1
		{
			%orig(0);
		}

		-(id)separatorEffect
		{
			return 0;
		}
	%end



//contacts
	%hook ABContactCell 

	- (void)setShowSeparator:(BOOL)arg1
	{
		%orig(FALSE);
	}
	

	-(BOOL)showSeparator
	{
		return FALSE;
	}

	%end


//Telegram
	%hook TGHashtagPanelCell
	- (void)setDisplaySeparator:(_Bool)arg1
	{
		%orig(FALSE);
	}
	%end
/*%hook TGUserInfoPhoneCollectionItemView
- (void)setLastInList:(bool)lastInList
{
    %orig(TRUE);
}

%end

%hook TGTelegraphConversationMessageAssetsSource
- (UIImage *)messageEditingSeparator
{
    return nil;
}
%end */ 

//WHATSAPP
	%hook _WACustomSeparatorView
	-(void)setSeparatorColor:(UIColor *)separatorColor
	{
		%orig(nil);
	}

	%end

	%hook WAChatListViewController
	- (void)redrawSeparatorsInTableView:(id)arg1
	{
		%orig(nil);
	}
	- (id)separatorColor
	{
		return [UIColor clearColor];
	}

	%end

	%hook WAChatSessionsViewController

	- (id)separatorColor
	{
		return [UIColor clearColor];
	}

	%end

	%hook WAProfileTableViewCell

	-(void)setBottomSeparatorHidden:(_Bool)bottomSeparatorHidden
	{
		%orig(TRUE);
	}
	%end

	%hook WACallHistoryTableViewCell

	-(void)setSeparatorStyle:(int)style
	{
		%orig(0);
	}
	%end

	%hook ContactTableViewCell

	-(void)_setSeparatorHidden:(BOOL)arg1
	{
		%orig(TRUE);
	}

	%end

	%hook WACallHistoryViewController//TableView

	-(void)setSeparatorStyle:(NSInteger)separatorStyle
	{
		%orig(0);
	}
	%end


//VIBER

%hook ShopTableViewController

-(void)setShowsTopSeparator:(BOOL)showsTopSeparator
{
	%orig(FALSE);
}
%end

//LINE//LINE

	%hook LineTableViewCell

	-(void)setSeparatorHidden:(bool)arg1
	{
		%orig(TRUE);
	}
	-(void)setSeparatorColor:(id)arg1
	{
		%orig(nil);
	}

	%end

	%hook NCLineCallBalanceTableViewCell
	-(void)setTopSeparatorType:(int)arg1 bottomSeparatorType:(int)arg2
	{
		%orig(0,0);
	}
	%end

	%hook NLPayMainViewCell
	-(void)setShowSeparator:(bool)arg1
	{
		%orig(FALSE);
	}
	%end

	%hook MoreDetailSectionHeader
	-(void)setShowTopSeparator:(bool)arg1
	{
		%orig(FALSE);
	}
	%end

	%hook NLThemeShopDetailView
	-(void)setSeparatorView:(id)arg1
	{
		%orig(nil);
	}
	%end

	%hook NCLineCallSettingsTableViewCell
	-(void)setTopSeparatorType:(int)arg1 bottomSeparatorType:(int)arg2
	{
		%orig(0,0);
	}
	%end



//paypal

	%hook PPAccountActivityCell
		-(void)setSeparatorStyle:(NSInteger)style
		{
			%orig(0);
		}
	%end

	%hook PPSettingsTabViewController
		-(void)setSeparatorStyle:(NSInteger)style
		{
			%orig(0);
		}
	%end

