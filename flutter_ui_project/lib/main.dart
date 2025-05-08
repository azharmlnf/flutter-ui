import 'package:flutter/material.dart';
import 'package:flutter_ui_app/ui_form/Textfield_page.dart';
import 'package:flutter_ui_app/ui_form/bottomsheet_page.dart';
import 'package:flutter_ui_app/ui_form/checkbox_page.dart';
import 'package:flutter_ui_app/ui_form/dialog_page.dart';
import 'package:flutter_ui_app/ui_form/dropdownbutton_page.dart';
import 'package:flutter_ui_app/ui_form/radio_page.dart';
import 'package:flutter_ui_app/ui_form/snackbar_page.dart';
import 'package:flutter_ui_app/ui_form/switch_page.dart';
import 'package:flutter_ui_app/ui_layout/aspectratio_page.dart';
import 'package:flutter_ui_app/ui_layout/center_page.dart';
import 'package:flutter_ui_app/ui_layout/expanded_page.dart';
import 'package:flutter_ui_app/ui_layout/gridview_page.dart';
import 'package:flutter_ui_app/ui_layout/padding_page.dart';
import 'package:flutter_ui_app/ui_layout/sizedbox_page.dart';
import 'package:flutter_ui_app/ui_layout/stack_page.dart';
import 'package:flutter_ui_app/ui_layout/wrap_page.dart';
import 'package:flutter_ui_app/ui_navigator/navigatorpush_page.dart';

// basic widgets
import 'ui_basic _widget/button_page.dart';
import 'ui_basic _widget/container_page.dart';
import 'ui_basic _widget/counter_page.dart';
import 'ui_basic _widget/row_page.dart' as basic_row;
// layout widgets
import 'ui_layout/column_page.dart';
import 'ui_layout/listview_page.dart';
import 'ui_layout/row_page.dart' as layout_row;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Azhar's Flutter Home Page"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: ListView(
        children: [
          // Submenu untuk Basic Widgets
          ExpansionTile(
            title: const Text("Basic Widgets"),
            children: [
              ListTile(
                title: const Text("Counter Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const CounterPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Container Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ContainerPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Button Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ButtonPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Row Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const basic_row.RowPage(),
                    ),
                  );
                },
              ),
            ],
          ),
          // Submenu untuk Layout Widgets
          ExpansionTile(
            title: const Text("Layout Widgets"),
            children: [
              ListTile(
                title: const Text("Column Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ColumnPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Row Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const layout_row.RowPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text("listview Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ListviewPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Gridview Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const GridviewPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Padding Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const PaddingPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("AspectRatio Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AspectratioPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Center Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const CenterPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Expanded Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ExpandedPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Sizedbox Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SizedboxPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Wrap Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const WrapPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Stack Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const StackPage()),
                  );
                },
              ),
            ],
          ),

          ExpansionTile(
            title: const Text("Form Widgets"),
            children: [
              ListTile(
                title: const Text("Form Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SwitchPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Textfield Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const TextFieldPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Dropdown Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DropDownPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Switch Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SwitchPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Radio Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const RadioPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Checkbox Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const CheckboxPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Dialog Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DialogPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("BottomSheet Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const BottomSheetPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("SnackBar Example"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SnackBarPage()),
                  );
                },
              ),
            ],
          ),
          ExpansionTile(
            title: const Text("Navigator Widgets"),
            children: [
              ListTile(
                title: const Text("Navigator Page"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const NavigatorPage()),
                  );
                },
              ),
              
              
              

            ],
          ),
        ],
      ),
    );
  }
}
