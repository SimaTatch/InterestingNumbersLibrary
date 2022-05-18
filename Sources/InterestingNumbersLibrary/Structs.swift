
import Foundation

//MARK: - Cтруктура для чисел и дат
public struct SearchResultsDateJSON: Decodable {
    let text: String
    let year: Int?
    let number: Int?
    let found: Bool?
    let type: String?
}

public enum SearchResult {
    case Success(SearchResultsDateJSON)
    case Error(String)
}
