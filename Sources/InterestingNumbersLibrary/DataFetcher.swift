
import Foundation

public class NetworkDataFetcher {
    
    var networkService = NetworkService()
    
    //MARK: - fetch для чисел и дат
    public func fetchFacts(number: String, type: String, completion: @escaping (SearchResult?) -> ()) {
        networkService.request(number: number, type: type) { data, error in
            if let error = error {
                print("Error received requesting data: \(error.localizedDescription)")
                completion(nil)
            }
            let decode = self.decodeJSON(type: SearchResultsDateJSON.self, from: data)
            DispatchQueue.main.async {
                completion(decode)
            }
        }
    }
    
    //MARK: - fetch для диапазонов и пар чисел
    public func fetchRange(number: String, type: String, completion: @escaping ([String: String]?) -> ()) {
        networkService.request(number: number, type: type) { data, error in
            if let error = error {
                print("Error received requesting data: \(error.localizedDescription)")
                completion(nil)
            }
            let raw = try? JSONSerialization.jsonObject(with: data ?? Data(), options: [])
             let json = raw as? [String: String]
            completion(json)
        }
    }
    
    public func decodeJSON<T: Decodable>(type: T.Type, from: Data?) -> SearchResult? {
        let decoder = JSONDecoder()
        guard let data = from else {return nil}
        do {
            let objects = try decoder.decode(type.self, from: data)
            return .Success(objects as! SearchResultsDateJSON)
        } catch let jsonError {
            print("Failed to decode JSON", jsonError)
            return .Error("Malformed JSON response")
        }
    }
}
