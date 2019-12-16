#!/usr/bin/python3
# Shows all the state objects which names are equals to the string provided
# by the user
if __name__ == "__main__":
    import sys
    from sqlalchemy import (create_engine)
    from sqlalchemy.orm import sessionmaker
    from model_state import Base, State

    engine = create_engine('mysql+mysqldb://{}:{}@localhost:3306/{}'
                           .format(sys.argv[1],
                                   sys.argv[2],
                                   sys.argv[3]),
                           pool_pre_ping=True)
    Base.metadata.create_all(engine)
    Session = sessionmaker()
    Session.configure(bind=engine)
    session = Session()

    try:
        row = State(name='Louisiana')
        session.add(row)
        session.commit()
    except SQLAlchemyError as ex:
        print(ex)

    state = session.query(State).filter(
        State.id == row.id).order_by(State.id).first()
    if state:
        print("{}".format(state.id))
    else:
        print("Not found")

    session.close()
