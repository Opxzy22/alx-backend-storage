#!/usr/bin/env python3
"""
a function that insert a new document in a collection
"""


def insert_school(mongo_collection, **kwargs):
    """
    mongo_collection: the pymongo collection object
    kwargs: key to value object to be inserted in the collection
    returns the new _id of the document
    """
    new_doc = mongo_collection.insert_one(**kwargs)

    return new_doc.inserted_id
