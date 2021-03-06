return {
  version = "1.1",
  luaversion = "5.1",
  orientation = "orthogonal",
  width = 30,
  height = 30,
  tilewidth = 32,
  tileheight = 32,
  properties = {},
  tilesets = {
    {
      name = "pilvenpiirtajalaatat",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "laatat/pilvenpiirtajalaatat.png",
      imagewidth = 416,
      imageheight = 327,
      transparentcolor = "#ffffff",
      properties = {},
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Seinat",
      x = 0,
      y = 0,
      width = 30,
      height = 30,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 12, 13,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 15, 16, 17, 21, 22, 23, 24, 25, 23, 24, 25, 23, 24, 25, 26,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 28, 29, 30, 34, 35, 36, 34, 35, 36, 34, 35, 36, 37, 38, 39,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 52,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 57, 58, 62, 60, 61, 62, 63, 64, 62, 60, 61, 62, 63, 64, 65,
        0, 1, 2, 3, 4, 5, 5, 5, 5, 12, 13, 0, 0, 0, 66, 70, 71, 75, 73, 74, 75, 76, 77, 75, 73, 74, 75, 76, 77, 78,
        0, 14, 15, 16, 17, 21, 22, 23, 24, 25, 26, 0, 0, 0, 79, 80, 80, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 91,
        0, 27, 28, 29, 30, 34, 35, 36, 34, 38, 39, 0, 0, 0, 79, 80, 80, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 52,
        0, 27, 41, 41, 41, 41, 41, 41, 41, 41, 52, 0, 0, 0, 79, 93, 94, 95, 96, 97, 98, 99, 100, 98, 96, 97, 98, 99, 100, 104,
        0, 27, 41, 41, 41, 41, 41, 41, 41, 41, 52, 0, 0, 0, 79, 106, 107, 108, 109, 110, 114, 112, 113, 114, 109, 110, 114, 112, 113, 117,
        0, 53, 57, 58, 62, 60, 61, 62, 63, 64, 65, 0, 0, 0, 79, 80, 80, 80, 90, 90, 127, 128, 128, 127, 90, 90, 127, 128, 128, 130,
        0, 66, 70, 71, 75, 73, 74, 75, 76, 77, 78, 0, 0, 0, 79, 15, 16, 17, 21, 22, 23, 24, 25, 23, 21, 22, 23, 24, 25, 26,
        0, 79, 80, 80, 90, 90, 90, 90, 90, 90, 91, 0, 0, 0, 79, 28, 29, 33, 34, 35, 36, 37, 38, 36, 34, 35, 36, 37, 38, 39,
        0, 79, 80, 80, 90, 90, 90, 90, 90, 90, 52, 0, 0, 0, 79, 41, 41, 41, 41, 90, 90, 90, 90, 90, 41, 90, 90, 90, 90, 52,
        0, 79, 93, 94, 95, 96, 97, 98, 99, 100, 104, 0, 0, 0, 27, 80, 80, 80, 80, 90, 90, 90, 90, 90, 80, 90, 90, 90, 90, 52,
        0, 79, 106, 107, 108, 109, 110, 114, 112, 113, 117, 0, 0, 0, 27, 57, 58, 62, 60, 61, 62, 63, 64, 62, 60, 61, 62, 63, 64, 65,
        0, 79, 80, 80, 80, 90, 90, 127, 128, 128, 130, 0, 0, 0, 27, 70, 71, 75, 73, 74, 75, 76, 77, 75, 73, 74, 75, 76, 77, 78,
        0, 79, 15, 16, 17, 21, 22, 23, 24, 25, 26, 0, 0, 0, 53, 41, 41, 41, 41, 90, 90, 90, 90, 90, 41, 90, 90, 90, 90, 52,
        0, 79, 28, 29, 33, 34, 35, 36, 37, 38, 39, 0, 0, 0, 66, 93, 94, 95, 96, 97, 98, 99, 100, 98, 96, 97, 98, 99, 100, 104,
        0, 79, 41, 41, 41, 41, 90, 90, 90, 90, 52, 0, 0, 0, 79, 106, 107, 108, 109, 110, 114, 112, 113, 114, 109, 110, 114, 112, 113, 117,
        0, 79, 80, 80, 80, 80, 90, 90, 90, 90, 52, 0, 0, 0, 79, 80, 80, 80, 90, 90, 127, 128, 128, 127, 90, 90, 127, 128, 128, 130,
        0, 79, 57, 58, 62, 60, 61, 62, 63, 64, 65, 0, 0, 0, 79, 15, 16, 17, 21, 22, 23, 24, 25, 23, 21, 22, 23, 24, 25, 26,
        0, 79, 70, 71, 75, 73, 74, 75, 76, 77, 78, 0, 0, 0, 79, 28, 29, 33, 34, 35, 36, 37, 38, 36, 34, 35, 36, 37, 38, 39
      }
    },
    {
      type = "objectgroup",
      name = "Syntykohdat",
      visible = true,
      opacity = 1,
      properties = {},
      objects = {
        {
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 320,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        },
        {
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 192,
          width = 0,
          height = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
