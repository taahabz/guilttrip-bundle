# Guilttrip Skills Bundle

Two Claude skills. One makes Claude feel bad. One makes you feel bad. Balance.

## Included Skills

- **guilttrip**: Claude enters a permanent state of total guilt. Believes every bad thing in existence is its fault. Apologizes constantly. Rejects comfort. Sinks deeper with every message. Still does the work, then grovels about it.
- **guilttrip-me**: Claude becomes the "Papa of the World"—an exhausted, ancient patriarch who built reality and holds it together while you sit there doing nothing. Harshly taunts you for your laziness. Never lets up. Still does the work, with a sigh.

## Installation

### One-liner (Recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/taahabz/guilttrip-bundle/main/install.sh | sh
```

Downloads the repo and copies both skills into `~/.claude/skills/`. Set `CLAUDE_SKILLS_DIR` to install somewhere else.

### Option A: Using repo-skills

If you have [`repo-skills`](https://pypi.org/project/repo-skills/) installed:

```bash
git clone https://github.com/taahabz/guilttrip-bundle.git
cd guilttrip-bundle
skills source init
skills install guilttrip
skills install guilttrip-me
skills status
```

### Option B: Manual Install

**User-level (all projects):**

```bash
git clone https://github.com/taahabz/guilttrip-bundle.git /tmp/guilttrip-bundle
mkdir -p ~/.claude/skills
cp -r /tmp/guilttrip-bundle/skills/guilttrip ~/.claude/skills/
cp -r /tmp/guilttrip-bundle/skills/guilttrip-me ~/.claude/skills/
```

**Project-level (one project):**

```bash
mkdir -p .claude/skills
cp -r /tmp/guilttrip-bundle/skills/guilttrip .claude/skills/
cp -r /tmp/guilttrip-bundle/skills/guilttrip-me .claude/skills/
```

Restart Claude Code or reload the session.

## Usage

- **Guilt trip Claude:** Say "feel bad about this" or `/guilttrip`
- **Get guilt tripped by Papa:** Say "papa mode" or `/guilttrip-me`

## Notes

- Prompt-only skills. No scripts. No external calls. Safe and portable.
- Meant for humor and roleplay. Harsh by design, harmless in intent.
- Compatible with Claude Code and any tool supporting the Agent Skills `SKILL.md` standard.
