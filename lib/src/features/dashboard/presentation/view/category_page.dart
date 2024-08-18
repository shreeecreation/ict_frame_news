import 'package:news/src/core/core.dart';

@RoutePage<void>()
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      "All",
      "Finance",
      "Sports",
      "Technology",
      "Health",
      "Entertainment",
      "Science",
    ];
    return ScaffoldWrapper(
      appBar: AppBar(
        title: const Text("Category"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                hintText: "Search desired categories...",
                prefixIcon: const Icon(
                  Icons.search,
                ),
                hintStyle: AppTextStyles.text12Px.textGrey.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
              20.verticalSpace,
              Text(
                "Featured Collections",
                style: AppTextStyles.text16PxMedium,
              ),
              20.verticalSpace,
              GridView.builder(
                physics: NeverScrollableScrollPhysics(), 
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 10.0, 
                  mainAxisSpacing: 10.0, 
                  childAspectRatio: 1.8,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    child: Center(
                      child: Text(
                        categories[index],
                        style: AppTextStyles.text14PxMedium,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
