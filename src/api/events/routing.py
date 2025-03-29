from fastapi import APIRouter
from src.api.events.schema import EventSchema

router = APIRouter()


@router.get("/")
def read_events():
    return {
        "items" : [1,2,3]
    }


@router.get("/{event_id}")
def get_event(event_id:int) -> EventSchema:
    return {"id": event_id}