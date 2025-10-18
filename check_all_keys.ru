import os
import sys
from dotenv import load_dotenv

load_dotenv("/storage/emulated/0/bot/keys.env")

def check_env():
    keys = {
        "SUPABASE_URL": os.environ.get("SUPABASE_URL"),
        "SUPABASE_KEY": os.environ.get("SUPABASE_KEY"),
        "API_FOOTBALL_KEY": os.environ.get("API_FOOTBALL_KEY"),
        "SSTATS_API_KEY": os.environ.get("SSTATS_API_KEY")
    }

    print("🔍 Проверка переменных окружения:")
    missing = False
    for name, value in keys.items():
        if value:
            print(f"✅ {name}: {value[:6]}... ({len(value)} символов)")
        else:
            print(f"❌ {name} не задан")
            missing = True

    if missing:
        sys.exit("⛔ Остановка: переменные окружения заданы не полностью")

if __name__ == "__main__":
    check_env()
