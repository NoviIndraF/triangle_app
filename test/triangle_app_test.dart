import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_app/triangle_app.dart';

void main(){
  group('Detect The Triangle', (){
    test('Should throw Error when there is side less than 1', (){
      expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, -2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, 2, -2), throwsA(isA<Exception>()));
    });
    
    test('Should return "Segitiga Sama Sisi" when all sides are equal', ()
    {
      expect(detectTriangle(1, 1, 1), "Segitiga sama sisi");
      expect(detectTriangle(2, 2, 1), isNot("Segitiga sama sisi"));

    });

    test('Should return "Segitiga Sama Kaki" when only two sides are equal', () {
      expect(detectTriangle(1, 1, 2), "Segitiga sama kaki");
      expect(detectTriangle(1, 2, 1), "Segitiga sama kaki");
      expect(detectTriangle(1, 2, 2), "Segitiga sama kaki");
      expect(detectTriangle(4, 1, 4), "Segitiga sama kaki");
    });

    test('Should return "Segitiga Sembarang" when no sides are equal', () {
      expect(detectTriangle(1, 2, 3), "Segitiga sembarang");
    });

    test('Should throw error when side a + b <= c', () {
      expect(detectTriangle(1, 2, 4), throwsA(isA<Exception>));
      expect(detectTriangle(2, 1, 5), throwsA(isA<Exception>));
    });
  });
}