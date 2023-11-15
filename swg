{
  "openapi": "3.0.1",
  "info": {
    "title": "wikidata_gpt",
    "contact": {
      "name": "kevinfengcu",
      "url": "https://github.com/kevinfengcu"
    },
    "version": "96e3e72c2b39931f85dba8f7f240029b70837b87"
  },
  "servers": [
    {
      "url": "https://grlc.io/api-git/kevinfengcu/wikidata_gpt/"
    }
  ],
  "paths": {
    "/get_entity_label": {
      "get": {
        "tags": [],
        "summary": "Find Wikidata entities by label substring",
        "operationId": "SearchEntitiesbyLabel",
        "description": "Enumerate Wikidata entities whose label contains the value in parameter in \\\"label\\\" as substring. Return the Wikidata IDs of entities.",
        "parameters": [
          {
            "name": "label",
            "in": "query",
            "description": "label to be queried",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "endpoint",
            "in": "query",
            "description": "Alternative endpoint for SPARQL query",
            "schema": {
              "type": "string",
              "default": "https://query.wikidata.org/sparql"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Query response",
            "content": {
              "text/csv": {
                "schema": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {}
                  }
                }
              },
              "application/json": {
                "schema": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {}
                  }
                }
              }
            }
          },
          "default": {
            "description": "Unexpected error",
            "content": {
              "text/csv": {
                "schema": {
                  "$ref": "#/components/schemas/Message"
                }
              }
            }
          }
        }
      }
    },
    "/get_property_label": {
      "get": {
        "tags": [],
        "summary": "Find Wikidata properties by label substring",
        "operationId": "SearchPropertiesbyLabel",
        "description": "Enumerate Wikidata properties whose label contains the value in parameter in \\\"label\\\" as substring. Return the Wikidata IDs of properties.",
        "parameters": [
          {
            "name": "label",
            "in": "query",
            "description": "label to be queried",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "endpoint",
            "in": "query",
            "description": "Alternative endpoint for SPARQL query",
            "schema": {
              "type": "string",
              "default": "https://query.wikidata.org/sparql"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Query response",
            "content": {
              "text/csv": {
                "schema": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {}
                  }
                }
              }
            }
          },
          "default": {
            "description": "Unexpected error",
            "content": {
              "text/csv": {
                "schema": {
                  "$ref": "#/components/schemas/Message"
                }
              },
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/Message"
                }
              }
            }
          }
        }
      }
    },
    "/list_properties": {
      "get": {
        "tags": [],
        "operationId": "ListPropertiesbyEntity",
        "summary": "List all properties and their values for a Wikidata entity.",
        "description": "List all properties and their values for a Wikidata entity with entity ID \\\"qid\\\" as input. Returns Wikidata IDs and label for non-literal values, and the literal value otherwise. Input \\\"qid\\\"must be prepended by http://www.wikidata.org/entity/.",
        "parameters": [
          {
            "name": "qid",
            "in": "query",
            "description": "Wikidata entity ID.",
            "required": true,
            "schema": {
              "type": "string",
              "format": "iri",
              "default": "example"
            }
          },
          {
            "name": "endpoint",
            "in": "query",
            "description": "Alternative endpoint for SPARQL query",
            "schema": {
              "type": "string",
              "default": "https://query.wikidata.org/sparql"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Query response",
            "content": {
              "text/csv": {
                "schema": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {}
                  }
                }
              },
              "application/json": {
                "schema": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {}
                  }
                }
              }
            }
          },
          "default": {
            "description": "Unexpected error",
            "content": {
              "text/csv": {
                "schema": {
                  "$ref": "#/components/schemas/Message"
                }
              },
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/Message"
                }
              }
            }
          }
        }
      }
    },
    "/query": {
      "get": {
        "tags": [],
        "servers": [
          {
            "url": "https://query.wikidata.org/"
          }
        ],
        "summary": "Send SPARQL query to Wikidata",
        "operationId": "SendSparqlQuery",
        "description": "Query wikidata based on the query provided in the \\\"query\\\" parameter.",
        "parameters": [
          {
            "name": "query",
            "in": "query",
            "description": "SPARQL query",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Query response",
            "content": {
              "text/csv": {
                "schema": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {}
                  }
                }
              }
            }
          },
          "default": {
            "description": "Unexpected error",
            "content": {
              "text/csv": {
                "schema": {
                  "$ref": "#/components/schemas/Message"
                }
              },
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/Message"
                }
              }
            }
          }
        }
      }
    }
  },
  "components": {
    "schemas": {
      "Message": {
        "type": "string"
      }
    }
  },
  "x-original-swagger-version": "2.0"
}
