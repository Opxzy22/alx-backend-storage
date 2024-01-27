#!/usr.bin/env python3
"""
a function that list all documents in a collection
"""


def list_all(mongo_collection):
    """
    mongo_collection:
                    the pymongo collection object
    returns a list of documentsnin the pymongo collection
    if no document in the collection it returns an empty list
    """

    return mongo_collection.find()
