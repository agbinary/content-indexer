# Content Indexer

Index tag information (`h1`, `h2`, `h2`, `a`) from a given website

## Setup

Clone the repository

```
git clone git@github.com:angela4713/content-indexer.git
```

Run bundle

```
bundle install
```

## Tests

Run all the tests

```
bundle exec rspec
```

## Usage

Run the application

```
rails s
```

## Methods
### create page and elements

Creates a page with the parameters

* Important note! All params must be send with `Content-Type: application/vnd.api+json` header

** Endpoint: **

`POST /api/v1/pages`

** Request example: **

```rb
{
  "data": {
    "type": "pages",
    "attributes": {
      "url": "http://jsonapi.org/"
    }
  }
}
```

** Response example: **

```
{
  "data": {
    "id": "1",
    "type": "pages",
    "links": {
      "self": "http://localhost:3000/api/v1/pages/1"
    },
    "attributes": {
      "url": "http://jsonapi.org/"
    },
    "relationships": {
      "elements": {
        "links": {
          "self": "http://localhost:3000/api/v1/pages/1/relationships/elements",
          "related": "http://localhost:3000/api/v1/pages/1/elements"
        }
      }
    }
  }
}
```

### list pages

List all saved pages
** Endpoint: **

`GET /api/v1/pages`

** Response example: **

```
{
  "data": [
    {
      "id": "1",
      "type": "pages",
      "links": {
        "self": "http://localhost:3000/api/v1/pages/1"
      },
      "attributes": {
        "url": "http://jsonapi.org/"
      },
      "relationships": {
        "elements": {
          "links": {
            "self": "http://localhost:3000/api/v1/pages/1/relationships/elements",
            "related": "http://localhost:3000/api/v1/pages/1/elements"
          }
        }
      }
    }
  ]
}
```

### list pages with relationships

List all saved pages
** Endpoint: **

`GET /api/v1/pages?include=elements`

** Response example: **

```
{
  "data": [
    {
      "id": "1",
      "type": "pages",
      "links": {
        "self": "http://localhost:3000/api/v1/pages/1"
      },
      "attributes": {
        "url": "http://jsonapi.org/"
      },
      "relationships": {
        "elements": {
          "links": {
            "self": "http://localhost:3000/api/v1/pages/1/relationships/elements",
            "related": "http://localhost:3000/api/v1/pages/1/elements"
          },
          "data": [
            {
              "type": "elements",
              "id": "1"
            },
            {
              "type": "elements",
              "id": "2"
            },
            {
              "type": "elements",
              "id": "3"
            },
            {
              "type": "elements",
              "id": "4"
            },
            {
              "type": "elements",
              "id": "5"
            },
            {
              "type": "elements",
              "id": "6"
            },
            {
              "type": "elements",
              "id": "7"
            },
            {
              "type": "elements",
              "id": "8"
            },
            {
              "type": "elements",
              "id": "9"
            },
            {
              "type": "elements",
              "id": "10"
            },
            {
              "type": "elements",
              "id": "11"
            },
            {
              "type": "elements",
              "id": "12"
            },
            {
              "type": "elements",
              "id": "13"
            },
            {
              "type": "elements",
              "id": "14"
            },
            {
              "type": "elements",
              "id": "15"
            },
            {
              "type": "elements",
              "id": "16"
            },
            {
              "type": "elements",
              "id": "17"
            },
            {
              "type": "elements",
              "id": "18"
            },
            {
              "type": "elements",
              "id": "19"
            },
            {
              "type": "elements",
              "id": "20"
            },
            {
              "type": "elements",
              "id": "21"
            },
            {
              "type": "elements",
              "id": "22"
            },
            {
              "type": "elements",
              "id": "23"
            },
            {
              "type": "elements",
              "id": "24"
            },
            {
              "type": "elements",
              "id": "25"
            },
            {
              "type": "elements",
              "id": "26"
            },
            {
              "type": "elements",
              "id": "27"
            },
            {
              "type": "elements",
              "id": "28"
            },
            {
              "type": "elements",
              "id": "29"
            }
          ]
        }
      }
    }
  ],
  "included": [
    {
      "id": "1",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/1"
      },
      "attributes": {
        "tag": "h1",
        "content": "JSON API"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/1/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/1/page"
          }
        }
      }
    },
    {
      "id": "2",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/2"
      },
      "attributes": {
        "tag": "h2",
        "content": "A specification for building APIs in JSON"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/2/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/2/page"
          }
        }
      }
    },
    {
      "id": "3",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/3"
      },
      "attributes": {
        "tag": "h2",
        "content": " MIME Types"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/3/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/3/page"
          }
        }
      }
    },
    {
      "id": "4",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/4"
      },
      "attributes": {
        "tag": "h2",
        "content": " Format documentation"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/4/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/4/page"
          }
        }
      }
    },
    {
      "id": "5",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/5"
      },
      "attributes": {
        "tag": "h2",
        "content": " Extensions"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/5/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/5/page"
          }
        }
      }
    },
    {
      "id": "6",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/6"
      },
      "attributes": {
        "tag": "h2",
        "content": " Update history"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/6/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/6/page"
          }
        }
      }
    },
    {
      "id": "7",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/7"
      },
      "attributes": {
        "tag": "a",
        "content": "JSON API"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/7/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/7/page"
          }
        }
      }
    },
    {
      "id": "8",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/8"
      },
      "attributes": {
        "tag": "a",
        "content": "Specification"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/8/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/8/page"
          }
        }
      }
    },
    {
      "id": "9",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/9"
      },
      "attributes": {
        "tag": "a",
        "content": "Extensions"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/9/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/9/page"
          }
        }
      }
    },
    {
      "id": "10",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/10"
      },
      "attributes": {
        "tag": "a",
        "content": "Recommendations"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/10/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/10/page"
          }
        }
      }
    },
    {
      "id": "11",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/11"
      },
      "attributes": {
        "tag": "a",
        "content": "Examples"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/11/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/11/page"
          }
        }
      }
    },
    {
      "id": "12",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/12"
      },
      "attributes": {
        "tag": "a",
        "content": "Implementations"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/12/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/12/page"
          }
        }
      }
    },
    {
      "id": "13",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/13"
      },
      "attributes": {
        "tag": "a",
        "content": "FAQ"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/13/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/13/page"
          }
        }
      }
    },
    {
      "id": "14",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/14"
      },
      "attributes": {
        "tag": "a",
        "content": "About"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/14/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/14/page"
          }
        }
      }
    },
    {
      "id": "15",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/15"
      },
      "attributes": {
        "tag": "a",
        "content": "v1.0 Stable"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/15/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/15/page"
          }
        }
      }
    },
    {
      "id": "16",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/16"
      },
      "attributes": {
        "tag": "a",
        "content": "View the specification"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/16/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/16/page"
          }
        }
      }
    },
    {
      "id": "17",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/17"
      },
      "attributes": {
        "tag": "a",
        "content": "Contribute on GitHub"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/17/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/17/page"
          }
        }
      }
    },
    {
      "id": "18",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/18"
      },
      "attributes": {
        "tag": "a",
        "content": "bikeshedding"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/18/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/18/page"
          }
        }
      }
    },
    {
      "id": "19",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/19"
      },
      "attributes": {
        "tag": "a",
        "content": "application/vnd.api+json"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/19/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/19/page"
          }
        }
      }
    },
    {
      "id": "20",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/20"
      },
      "attributes": {
        "tag": "a",
        "content": "documentation for the base\nspecification"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/20/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/20/page"
          }
        }
      }
    },
    {
      "id": "21",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/21"
      },
      "attributes": {
        "tag": "a",
        "content": "experimental support for extensions"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/21/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/21/page"
          }
        }
      }
    },
    {
      "id": "22",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/22"
      },
      "attributes": {
        "tag": "a",
        "content": "Bulk"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/22/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/22/page"
          }
        }
      }
    },
    {
      "id": "23",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/23"
      },
      "attributes": {
        "tag": "a",
        "content": "JSON Patch"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/23/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/23/page"
          }
        }
      }
    },
    {
      "id": "24",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/24"
      },
      "attributes": {
        "tag": "a",
        "content": "here"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/24/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/24/page"
          }
        }
      }
    },
    {
      "id": "25",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/25"
      },
      "attributes": {
        "tag": "a",
        "content": "Jekyll"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/25/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/25/page"
          }
        }
      }
    },
    {
      "id": "26",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/26"
      },
      "attributes": {
        "tag": "a",
        "content": "Highlight.js"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/26/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/26/page"
          }
        }
      }
    },
    {
      "id": "27",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/27"
      },
      "attributes": {
        "tag": "a",
        "content": "Twitter"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/27/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/27/page"
          }
        }
      }
    },
    {
      "id": "28",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/28"
      },
      "attributes": {
        "tag": "a",
        "content": "GitHub"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/28/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/28/page"
          }
        }
      }
    },
    {
      "id": "29",
      "type": "elements",
      "links": {
        "self": "http://localhost:3000/api/v1/elements/29"
      },
      "attributes": {
        "tag": "a",
        "content": "Discussion Forum"
      },
      "relationships": {
        "page": {
          "links": {
            "self": "http://localhost:3000/api/v1/elements/29/relationships/page",
            "related": "http://localhost:3000/api/v1/elements/29/page"
          }
        }
      }
    }
  ]
}
```
