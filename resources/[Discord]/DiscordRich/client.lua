Citizen.CreateThread(function()
	while true do
        --This is the Application ID (Replace this with you own)
		SetDiscordAppId(659554231631609897)

        --Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('refugiogamerrpbg')
        
        --(11-11-2018) New Natives:

        --Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('refugiogamerrpbg')
       
        --Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('refugiogamerrppng')

        --Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('refugiogamerrppng')

        --It updates every one minute just in case.
		Citizen.Wait(60000)
	end
end)