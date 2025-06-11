//
//  Value+SwiftyJsonSchema.swift
//  mcp-swift-sdk
//
//  Created by Peter Liddle on 6/11/25.
//

import Foundation
import SwiftyJsonSchema

public extension Value {
    static func produced<T>(from schemaType: T.Type) throws -> Value where T: ProducesJSONSchema {
        return try Value.init(JsonSchemaCreator.createJSONSchema(for: T.exampleValue))
    }
}
