local function createMessage(Message,Error) 
    game.StarterGui:SetCore(
        "ChatMakeSystemMessage",
          { Text = "[astraHub]"..tostring(Message),
           Color = Color3.fromRGB( 62, 165, 6 ),
           Font = Enum.Font.Ubuntu, FontSize = Enum.FontSize.Size24
            } 
           )
end)