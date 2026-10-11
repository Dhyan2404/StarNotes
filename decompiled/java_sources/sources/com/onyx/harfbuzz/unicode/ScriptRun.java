package com.onyx.harfbuzz.unicode;

/* loaded from: classes9.dex */
public class ScriptRun {
    public int charEnd;
    public int charStart;
    public int script;

    public ScriptRun(int i, int i2, int i3) {
        this.charStart = i;
        this.charEnd = i2;
        this.script = i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ScriptRun scriptRun = (ScriptRun) obj;
            if (this.charStart == scriptRun.charStart && this.charEnd == scriptRun.charEnd && this.script == scriptRun.script) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((this.charStart * 31) + this.charEnd) * 31) + this.script;
    }

    public ScriptRun() {
    }
}
