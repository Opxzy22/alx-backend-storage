#!/usr/bin/env python3
"""
a function that changes all topic of school
document based on the name
"""
from typing import List


def update_topics(mongo_collection, name: str, topics: List[str]):
    """
    mongo collection:
                    the pymongo collection object
    name:
        (string) the name of school to update
    topics:
        (list of strings) the list of topics to be updated
    """
    mongo_collection.update_many({"name": name}, {$set: {"topic": topic}})
