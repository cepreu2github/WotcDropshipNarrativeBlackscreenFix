class DropshipNarrativeFix_UINarrativeMgr extends UINarrativeMgr;

simulated function BeginConversation(optional bool bMuffleVOOnly = true)
{
	// skip while loading logo is present
	if (`XENGINE.IsMoviePlaying("CIN_XP_UI_LogoSpin.bk2"))
	{
		SetTimer(0.1, false, 'BeginConversation', self);
		return;
	}
	Super.BeginConversation(bMuffleVOOnly);
}