import 'package:flutter/material.dart';
import 'package:mojatax/widgets/notes.dart';

class RegistationForm extends StatefulWidget {
  const RegistationForm({Key? key}) : super(key: key);

  @override
  _RegistationFormState createState() => _RegistationFormState();
}

class _RegistationFormState extends State<RegistationForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.grey[300]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Business Name",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: "",
                        fillColor: Colors.white.withOpacity(0.9),
                        filled: true,
                        contentPadding: const EdgeInsets.all(12.0),
                      ),
                      validator: (value) {
                        // if (value.trim().length <= 0) {
                        if (value!.isEmpty || value.length < 3) {
                          return 'Tin number is required';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Director's Name",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: "",
                        fillColor: Colors.white.withOpacity(0.9),
                        filled: true,
                        contentPadding: const EdgeInsets.all(12.0),
                      ),
                      validator: (value) {
                        // if (value.trim().length <= 0) {
                        if (value!.isEmpty || value.length < 3) {
                          return 'Tin number is required';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: "",
                        fillColor: Colors.white.withOpacity(0.9),
                        filled: true,
                        contentPadding: const EdgeInsets.all(12.0),
                      ),
                      validator: (value) {
                        // if (value.trim().length <= 0) {
                        if (value!.isEmpty || value.length < 3) {
                          return 'Tin number is required';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Region",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: "",
                        fillColor: Colors.white.withOpacity(0.9),
                        filled: true,
                        contentPadding: const EdgeInsets.all(12.0),
                      ),
                      validator: (value) {
                        // if (value.trim().length <= 0) {
                        if (value!.isEmpty || value.length < 3) {
                          return 'Tin number is required';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tin Number",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: "",
                        fillColor: Colors.white.withOpacity(0.9),
                        filled: true,
                        contentPadding: const EdgeInsets.all(12.0),
                      ),
                      validator: (value) {
                        // if (value.trim().length <= 0) {
                        if (value!.isEmpty || value.length < 3) {
                          return 'Tin number is required';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: "",
                        fillColor: Colors.white.withOpacity(0.9),
                        filled: true,
                        contentPadding: const EdgeInsets.all(12.0),
                      ),
                      validator: (value) {
                        // if (value.trim().length <= 0) {
                        if (value!.isEmpty || value.length < 3) {
                          return 'Tin number is required';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mobile No.",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: "",
                        fillColor: Colors.white.withOpacity(0.9),
                        filled: true,
                        contentPadding: const EdgeInsets.all(12.0),
                      ),
                      validator: (value) {
                        // if (value.trim().length <= 0) {
                        if (value!.isEmpty || value.length < 3) {
                          return 'Tin number is required';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                Notes(
                    "Taxpayer Name and TIN number must be the same as on TIN Certificate"),
                const SizedBox(height: 18),
                Notes("Only Use Active Email and Mobile Number"),
                const SizedBox(height: 18),
                Notes("Click download button to donwload filled form to sign"),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Download",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(width: 1.0, color: Colors.black)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.yellow),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700))),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
