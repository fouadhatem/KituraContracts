/**
 * Copyright IBM Corporation 2018
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation

/**
 A class that conforms to `BodyDecoder` must be able to decode from `Data` into a `Codable` type.
 This class can then be used to produce input objects for a Codable route.
 */
public protocol BodyDecoder: AnyObject {
    func decode<T : Decodable>(_ type: T.Type, from data: Data) throws -> T
}

extension JSONDecoder: BodyDecoder {}