import os

def check_keys():
    missing = []
    for key in ["SUPABASE_URL", "SUPABASE_KEY"]:
        if not os.getenv(key):
            missing.append(key)
    return missing

if __name__ == "__main__":
    print("Missing keys:", check_keys())
