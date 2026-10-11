package com.onyx.harfbuzz.unicode;

import androidx.annotation.Keep;

/* loaded from: classes9.dex */
public class BidiRun {
    public int charEnd;
    public int charStart;
    public byte embeddingLevel;

    @Keep
    public BidiRun(int i, int i2, byte b) {
        this.charStart = i;
        this.charEnd = i2;
        this.embeddingLevel = b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BidiRun bidiRun = (BidiRun) obj;
        return this.charStart == bidiRun.charStart && this.charEnd == bidiRun.charEnd && this.embeddingLevel == bidiRun.embeddingLevel;
    }

    public int hashCode() {
        return (((this.charStart * 31) + this.charEnd) * 31) + this.embeddingLevel;
    }

    public boolean isRightToLeft() {
        return (this.embeddingLevel & 1) == 1;
    }

    public String toString() {
        return "BidiRun{charStart=" + this.charStart + ", charEnd=" + this.charEnd + ", embeddingLevel=" + ((int) this.embeddingLevel) + '}';
    }

    public BidiRun() {
    }
}
