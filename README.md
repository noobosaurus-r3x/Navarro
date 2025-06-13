# Navarro - OSINT Username Checker
A Python tool that checks for the existence of a username across 20+ social media and web platforms.

![Navarro_banner1](https://github.com/user-attachments/assets/cc92bce3-a288-4ebc-b625-263210e74cc5)


## Features

- Checks username availability on major platforms (GitHub, Reddit, Instagram, etc.)
- Smart rate limiting with persistent storage between runs
- User agent rotation to reduce detection
- Batch checking via file input
- JSON export for integration with other tools
- Session management for improved performance
- No API keys required

## Requirements

- Python 3.6+
- `requests`
- `rich` (optional, for better terminal output)

or 

```bash
pip install -r requirements.txt
```

## Installation
### From source

```bash
# Clone the repository
git clone https://github.com/noobosaurus-r3x/Navarro.git
cd Navarro

# Install dependencies
pip install requests rich
```

### Docker
```bash
docker build -t navarro .
docker run -it navarro <command>
```

## Usage

### Check single username
```bash
python3 navarro.py username
```

### Check multiple usernames from file
```bash
python3 navarro.py --list usernames.txt
```

### Export results to JSON
```bash
python3 navarro.py username --export results.json
```

### Combine options
```bash
python3 navarro.py --list users.txt --export output.json
```

## Supported Platforms

- GitHub
- GitLab
- Reddit
- Instagram
- Facebook
- TikTok
- LinkedIn
- Pinterest
- Pastebin
- Telegram
- Snapchat
- Strava
- Threads
- Mastodon
- Bluesky
- Spotify
- SoundCloud
- YouTube
- Medium
- Chess.com
- Keybase
- Linktree
- VK
- Steam
- DeviantArt
- Vimeo

**Note**: X/Twitter and Twitch are not supported due to lack of reliable detection methods.

## Output

The tool provides results in three categories:
- ✅ **Found** - Profile exists
- ❌ **Not Found** - Profile doesn't exist
- ⚠️ **Error** - Network issues, rate limiting, or timeouts

## Rate Limiting

The tool implements smart rate limiting to respect platform limits:
- Adaptive delays between requests
- Persistent storage of rate limits between runs
- Automatic retry with exponential backoff
- Per-platform tracking

Rate limit data is stored in `~/.navarro_rate_limits.pkl`

## JSON Export Format

```json
{
  "username": {
    "timestamp": "2024-01-01T12:00:00",
    "stats": {
      "found": 12,
      "not_found": 14,
      "network_error": 0,
      "rate_limited": 0,
      "timeout": 0,
      "unknown_error": 0
    },
    "results": {
      "GitHub": "found",
      "GitLab": "not_found",
      ...
    },
    "found_profiles": {
      "GitHub": "https://github.com/username",
      "Reddit": "https://reddit.com/user/username",
      ...
    }
  }
}
```

## Limitations

- Results may include false positives/negatives
- Some platforms may block automated checking
- Rate limiting may slow down large batch checks
- No proxy support currently implemented
- Single-threaded to avoid overwhelming target platforms

![Navarro_VieDeMaMere](https://github.com/user-attachments/assets/ed5f2eef-a9cc-44cd-8745-59363d722417)


## Privacy & Legal

- This tool only checks public information
- Respect platform terms of service
- Use responsibly and ethically
- The authors are not responsible for misuse

## Contributing

Contributions are welcome! Please feel free to fork it too.

## License

MIT License - see LICENSE file for details
