[1, 2, 3, 4].find_all { |number| number.odd? }
[1, 2, 3, 4].find_all { |number| true }
[1, 2, 3, 4].find_all { |number| false }
[1, 2, 3, 4].find { |number| number.even? }
[1, 2, 3, 4].reject { |number| number.odd? }
[1, 2, 3, 4].all? { |number| number.odd? }
[1, 2, 3, 4].any? { |number| number.odd? }
[1, 2, 3, 4].none? { |number| number > 4 }
[1, 2, 3, 4].count { |number| number.odd? }
[1, 2, 3, 4].partition { |number| number.odd? }
['$', '$$', '$$$'].map { |string| string.length }
['$', '$$', '$$$'].max_by { |string| string.length }
['$', '$$', '$$$'].min_by { |string| string.length }
