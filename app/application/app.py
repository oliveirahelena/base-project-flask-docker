from flask import Flask
from application.rest import hello


def create_app(config_name):

    app = Flask(__name__)

    config_module = f"application.config.{config_name.capitalize()}Config"

    app.config.from_object(config_module)

    app.register_blueprint(hello.blueprint)

    from application.models import db, migrate

    db.init_app(app)
    migrate.init_app(app, db)

    return app
