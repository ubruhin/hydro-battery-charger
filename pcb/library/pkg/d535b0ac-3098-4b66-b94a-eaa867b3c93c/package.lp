(librepcb_package d535b0ac-3098-4b66-b94a-eaa867b3c93c
 (name "PT10LH02")
 (description "")
 (keywords "pot")
 (author "U. Bruhin")
 (version "0.1")
 (created 2020-06-26T21:55:31Z)
 (deprecated false)
 (category 72ceb547-9e68-4d6b-8c96-283d325e1abf)
 (pad f5481ee0-ab60-41b6-b152-acf920354e59 (name "A"))
 (pad e1ba884f-6fd9-46f7-a0b8-34573146884c (name "S"))
 (pad 5a1dea17-383f-4d3b-97a2-33ddf9bd9ddd (name "E"))
 (footprint 8b70ad61-303a-4e63-8cf1-26b31ee2e461
  (name "default")
  (description "")
  (pad f5481ee0-ab60-41b6-b152-acf920354e59 (side tht) (shape round)
   (position -2.5 -1.25) (rotation 0.0) (size 2.3 2.3) (drill 1.3)
  )
  (pad e1ba884f-6fd9-46f7-a0b8-34573146884c (side tht) (shape round)
   (position 0.0 1.25) (rotation 0.0) (size 2.3 2.3) (drill 1.3)
  )
  (pad 5a1dea17-383f-4d3b-97a2-33ddf9bd9ddd (side tht) (shape round)
   (position 2.5 -1.25) (rotation 0.0) (size 2.3 2.3) (drill 1.3)
  )
  (polygon 0936c74c-7e21-4984-b296-ccb838a7a7c6 (layer top_documentation)
   (width 0.2) (fill false) (grab_area false)
   (vertex (position -5.05 -1.25) (angle 0.0))
   (vertex (position 5.05 -1.25) (angle 0.0))
   (vertex (position 5.05 3.35) (angle 0.0))
   (vertex (position -5.05 3.35) (angle 0.0))
   (vertex (position -5.05 -1.25) (angle 0.0))
  )
  (polygon 6322379a-9578-43d9-bad2-c7e5d11ccadc (layer top_placement)
   (width 0.2) (fill false) (grab_area false)
   (vertex (position 4.5 -1.45) (angle 0.0))
   (vertex (position 5.25 -1.45) (angle 0.0))
   (vertex (position 5.25 3.55) (angle 0.0))
   (vertex (position -5.25 3.55) (angle 0.0))
   (vertex (position -5.25 -1.45) (angle 0.0))
   (vertex (position -4.5 -1.45) (angle 0.0))
  )
  (stroke_text a0809b31-2e79-430d-ba84-aecd6b283de9 (layer top_names)
   (height 1.0) (stroke_width 0.2) (letter_spacing auto) (line_spacing auto)
   (align center bottom) (position 0.0 4.445) (rotation 0.0)
   (auto_rotate true) (mirror false) (value "{{NAME}}")
  )
  (stroke_text 129ac281-5b82-44a7-8a1e-7560eb8fbfc5 (layer top_values)
   (height 1.0) (stroke_width 0.2) (letter_spacing auto) (line_spacing auto)
   (align center top) (position 0.0 -3.175) (rotation 0.0)
   (auto_rotate true) (mirror false) (value "{{VALUE}}")
  )
 )
)
