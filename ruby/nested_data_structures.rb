school = {
	'gym': {
		'teacher': 'Mr.Feeny',
		'number_of_students': 20,
		'student_of_the_week': 'Elijah Stringer',
		'top_three_grade': [99, 80, 79]
	},
	'social_studies': {
		'teacher': 'Johnny Castle',
		'number_of_students': 35,
		'student_of_the_week': 'Wynona Westcott',
		'top_three_grade': [95, 89, 80]
	},
	'history': {
		'teacher': 'Dewey Finn',
		'number_of_students': 15,
		'student_of_the_week': 'Cullen Ackerman',
		'top_three_grade': [90, 82, 82]
	},
	'math': {
		'teacher': 'Ms. Norbury',
		'number_of_students': 25,
		'student_of_the_week': 'Hartley Pocock',
		'top_three_grade': [92, 87, 83]
	},
	'biology': {
		'teacher': 'Charles Xavier',
		'number_of_students': 30,
		'student_of_the_week': 'Spring Danniel',
		'top_three_grade': [91, 81, 70]
	}
}

puts school[:gym][:teacher]
puts school[:social_studies][:top_three_grade][1]
puts school[:biology][:student_of_the_week]
school[:biology][:student_of_the_week] = 'Laury Sims'
puts school[:biology][:student_of_the_week]
school[:history][:number_of_students] += 2
puts school[:history][:number_of_students]
