# Bioluminescence — Python IDLE Color Theme

IDLE port of the Bioluminescence Rider scheme. IDLE only supports a few highlight
categories, so each one uses the closest color from the original scheme.
Comments use a lighter tone (#3A6A8F) because IDLE has no italics.

Append the contents of `Bioluminescence.cfg` to `config-highlight.cfg` in IDLE's
user config folder. To find that folder, run:

    python -c "from idlelib.config import idleConf; print(idleConf.userdir)"

Then select it in Options > Configure IDLE > Highlights > a Custom Theme > Bioluminescence.
