from supabase import create_client
from config import SUPABASE_URL, SUPABASE_KEY

def export_to_supabase(data):
    client = create_client(SUPABASE_URL, SUPABASE_KEY)
    client.table("matches").insert(data).execute()
