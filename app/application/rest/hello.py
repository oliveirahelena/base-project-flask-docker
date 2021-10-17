from flask import Blueprint

@blueprint.route("/", methods=["GET"])
def hello_world():
    return "Hello, World!"
