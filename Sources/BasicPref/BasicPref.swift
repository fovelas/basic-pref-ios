// © 2025 Fovelas

import Foundation

public final class BasicPref: @unchecked Sendable {
    private static let instance: BasicPref = {
        let b = BasicPref()
        return b
    }()
    
    private let userDefaults = UserDefaults.standard
    
    private init() {}
    
    public static func getInstance() -> BasicPref {
        return instance;
    }

    public func setBoolean(
        _ key: String,
        _ value: Bool
    ) -> Void {
        userDefaults.set(value, forKey: key)
    }
    
    public func setFloat(
        _ key: String,
        _ value: Float
    ) -> Void {
        userDefaults.set(value, forKey: key)
    }
    
    public func setInt(
        _ key: String,
        _ value: Int
    ) -> Void {
        userDefaults.set(value, forKey: key)
    }
    
    public func setString(
        _ key: String,
        _ value: String
    ) -> Void {
        userDefaults.set(value, forKey: key)
    }

    public func getBoolean(
        _ key: String,
        _ defValue: Bool
    ) -> Bool {
        return userDefaults.bool(forKey: key)
    }
    
    public func getFloat(
        _ key: String,
        _ defValue: Float
    ) -> Float {
        return userDefaults.float(forKey: key)
    }
    
    public func getInt(
        _ key: String,
        _ defValue: Int
    ) -> Int {
        return userDefaults.integer(forKey: key)
    }
    
    public func getString(
        _ key: String,
        _ defValue: String
    ) -> String {
        return userDefaults.string(forKey: key) ?? defValue
    }
    
    public func remove(
        _ key: String
    ) -> Void {
        userDefaults.removeObject(forKey: key)
    }
    
    public func clear(
    ) -> Void {
        let keys = userDefaults.dictionaryRepresentation().keys
        
        for key in keys {
            userDefaults.removeObject(forKey: key)
        }
    }
}
