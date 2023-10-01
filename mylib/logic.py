import wikipedia


def wiki(name="Ataturk", length=1):
    """This is a wikipedia fetcher"""

    my_wiki = wikipedia.summary(name, length)

    return my_wiki


def searchwiki(name):
    """Search Wikipedia for Names"""

    results = wikipedia.search(name)

    return results