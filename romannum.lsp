(defun roman-numerals(a)
	(if (> a 5000)
		(return-from roman-numerals "The limit is 5000")
	)
	(setq b "" )
	(if (> a 0)
		(progn
			(setq r (rem a 10))
			(case r
				(1 (setf b (concatenate `string b "I")))
				(2 (setf b (concatenate `string b "II")))
				(3 (setf b (concatenate `string b "III")))
				(4 (setf b (concatenate `string b "IV")))
				(5 (setf b (concatenate `string b "V")))
				(6 (setf b (concatenate `string b "VI")))
				(7 (setf b (concatenate `string b "VII")))
				(8 (setf b (concatenate `string b "VIII")))
				(9 (setf b (concatenate `string b "IX")))
			)
			(setq a (floor a 10)))
			(if (> a 0)
				(progn
					(setq r (rem a 10))
					(case r
						(1 (setf b (concatenate `string "X" b)))
						(2 (setf b (concatenate `string "XX" b)))
						(3 (setf b (concatenate `string "XXX" b)))
						(4 (setf b (concatenate `string "XL" b)))
						(5 (setf b (concatenate `string "L" b)))
						(6 (setf b (concatenate `string "LX" b)))
						(7 (setf b (concatenate `string "LXX" b)))
						(8 (setf b (concatenate `string "LXXX" b)))
						(9 (setf b (concatenate `string "XC" b)))
					)
					(setq a (floor a 10))
					(if (> a 0)
						(progn
							(setq r (rem a 10))
							(case r
								(1 (setf b (concatenate `string "C" b)))
								(2 (setf b (concatenate `string "CC" b)))
								(3 (setf b (concatenate `string "CCC" b)))
								(4 (setf b (concatenate `string "CD" b)))
								(5 (setf b (concatenate `string "D" b)))
								(6 (setf b (concatenate `string "DC" b)))
								(7 (setf b (concatenate `string "DCC" b)))
								(8 (setf b (concatenate `string "DCCC" b)))
								(9 (setf b (concatenate `string "CM" b)))
							)
							(setq a (floor a 10))
							(if (> a 0)
								(progn
									(setq r (rem a 10))
									(case r
										(1 (setf b (concatenate `string "M" b)))
										(2 (setf b (concatenate `string "MM" b)))
										(3 (setf b (concatenate `string "MMM" b)))
										(4 (setf b (concatenate `string "MV" b)))
										(5 (setf b (concatenate `string "V" b)))
									)
								)
							)
						)
					)
				)
			)
		)
		(return-from roman-numerals "Give a number greater than 0")
	)
	(return-from roman-numerals b)
)