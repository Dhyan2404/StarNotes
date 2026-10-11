package com.sun.org.apache.regexp.internal;

/* loaded from: classes10.dex */
public final class StringCharacterIterator implements CharacterIterator {
    private final String src;

    public StringCharacterIterator(String str) {
        this.src = str;
    }

    @Override // com.sun.org.apache.regexp.internal.CharacterIterator
    public char charAt(int i) {
        return this.src.charAt(i);
    }

    @Override // com.sun.org.apache.regexp.internal.CharacterIterator
    public boolean isEnd(int i) {
        return i >= this.src.length();
    }

    @Override // com.sun.org.apache.regexp.internal.CharacterIterator
    public String substring(int i, int i2) {
        return this.src.substring(i, i2);
    }

    @Override // com.sun.org.apache.regexp.internal.CharacterIterator
    public String substring(int i) {
        return this.src.substring(i);
    }
}
