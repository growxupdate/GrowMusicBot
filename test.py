import asyncio
import logging
from datetime import datetime

# Logging setup
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s"
)

async def server_status():
    while True:
        msg = f"Server is ON ✅ | Time: {datetime.now().strftime('%H:%M:%S')}"
        
        # Print
        print(msg)
        
        # Logging
        logging.info(msg)
        
        await asyncio.sleep(10)  # 10 sec delay

if __name__ == "__main__":
    try:
        asyncio.run(server_status())
    except KeyboardInterrupt:
        print("Stopped manually ❌")
