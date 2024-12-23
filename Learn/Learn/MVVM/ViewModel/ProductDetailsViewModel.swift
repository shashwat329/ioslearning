import Foundation

@MainActor
class ProductDetailsViewModel: ObservableObject {
    @Published var products: [ProductViewModel] = []
    let webservice: Webservices

    init(webservice: Webservices) {
        self.webservice = webservice
    }

    func populateProductDetails() async {
        do {
            let products = try await webservice.getproductDetails()
            self.products = products.map { ProductViewModel(product: $0) }
        } catch {
            print(error)
        }
    }
}

struct ProductViewModel: Identifiable {
    private var product: Product

    init(product: Product) {
        self.product = product
    }

    var id: Int {
        product.id
    }

    var title: String {
        product.title
    }

    var description: String {
        product.description
    }

    var price: Double {
        product.price
    }

    var category: String {
        product.category
    }
}
