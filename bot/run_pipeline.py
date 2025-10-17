from fetch_historical_matches import fetch_matches
from build_matches_db import build_db
from supabase_export import export_to_supabase

def main():
    matches = fetch_matches()
    db = build_db(matches)
    export_to_supabase(matches)

if __name__ == "__main__":
    main()
