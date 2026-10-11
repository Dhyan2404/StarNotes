package com.onyx.harfbuzz.unicode;

import androidx.annotation.Keep;

/* loaded from: classes9.dex */
public class BidiPair {
    public int actualCodePoint;
    public int charIndex;
    public int pairingCodePoint;

    @Keep
    public BidiPair(int i, int i2, int i3) {
        this.charIndex = i;
        this.actualCodePoint = i2;
        this.pairingCodePoint = i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BidiPair bidiPair = (BidiPair) obj;
        return this.charIndex == bidiPair.charIndex && this.actualCodePoint == bidiPair.actualCodePoint && this.pairingCodePoint == bidiPair.pairingCodePoint;
    }

    public int hashCode() {
        return (((this.charIndex * 31) + this.actualCodePoint) * 31) + this.pairingCodePoint;
    }

    public String toString() {
        return "BidiPair{charIndex=" + this.charIndex + ", actualCodePoint=" + this.actualCodePoint + ", pairingCodePoint=" + this.pairingCodePoint + '}';
    }

    public BidiPair() {
    }
}
