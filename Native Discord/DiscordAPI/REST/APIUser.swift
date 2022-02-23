//
//  APIUser.swift
//  Native Discord
//
//  Created by Vincent Kwok on 22/2/22.
//

import Foundation

extension DiscordAPI {
    // MARK: Get Current User
    // GET /users/@me
    func getCurrentUser() async -> User? {
        return await getReq(path: "users/@me")
    }
    
    // MARK: Get User (Get user object from ID)
    // GET /users/{user.id}
    func getUser(user: Snowflake) async -> User? {
        return await getReq(path: "users/\(user)")
    }
    
    // MARK: Modify Current User
    // TODO: Patch not yet implemented
    
    // MARK: Get Current User Guilds
    // GET /users/@me/guilds
    func getGuilds(
        before: Snowflake? = nil,
        after: Snowflake? = nil,
        limit: Int = 200
    ) async -> [PartialGuild]? {
        return await getReq(path: "users/@me/guilds")
    }
    
    // MARK: Get Current User Guild Member
    // Get guild member object for current user in a guild
    // GET /users/@me/guilds/{guild.id}/member
    func getGuildMember(guild: Snowflake) async -> Member? {
        return await getReq(path: "users/@me/guilds/\(guild)/member")
    }
    
    // MARK: Leave Guild
    // DELETE /users/@me/guilds/{guild.id}
    // TODO: Delete not yet implemented
    
    // MARK: Create DM
    
}