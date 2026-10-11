package org.apache.xerces.impl.xpath.regex;

import java.text.CharacterIterator;

/* loaded from: classes13.dex */
public class Match implements Cloneable {

    /* renamed from: e */
    public int[] f112563e = null;

    /* renamed from: f */
    public int[] f112564f = null;

    /* renamed from: g */
    public int f112565g = 0;

    /* renamed from: h */
    public CharacterIterator f112566h = null;

    /* renamed from: i */
    public String f112567i = null;

    /* renamed from: j */
    public char[] f112568j = null;

    public synchronized Object clone() {
        Match match;
        match = new Match();
        int i = this.f112565g;
        if (i > 0) {
            match.setNumberOfGroups(i);
            CharacterIterator characterIterator = this.f112566h;
            if (characterIterator != null) {
                match.setSource(characterIterator);
            }
            String str = this.f112567i;
            if (str != null) {
                match.setSource(str);
            }
            for (int i2 = 0; i2 < this.f112565g; i2++) {
                match.setBeginning(i2, getBeginning(i2));
                match.setEnd(i2, getEnd(i2));
            }
        }
        return match;
    }

    public int getBeginning(int i) {
        int[] iArr = this.f112563e;
        if (iArr == null) {
            throw new IllegalStateException("A result is not set.");
        }
        if (i >= 0 && this.f112565g > i) {
            return iArr[i];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("The parameter must be less than ");
        stringBuffer.append(this.f112565g);
        stringBuffer.append(": ");
        stringBuffer.append(i);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public String getCapturedText(int i) {
        int[] iArr = this.f112563e;
        if (iArr == null) {
            throw new IllegalStateException("match() has never been called.");
        }
        if (i < 0 || this.f112565g <= i) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("The parameter must be less than ");
            stringBuffer.append(this.f112565g);
            stringBuffer.append(": ");
            stringBuffer.append(i);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        int i2 = iArr[i];
        int i3 = this.f112564f[i];
        if (i2 < 0 || i3 < 0) {
            return null;
        }
        CharacterIterator characterIterator = this.f112566h;
        if (characterIterator != null) {
            return REUtil.m70013j(characterIterator, i2, i3);
        }
        String str = this.f112567i;
        return str != null ? str.substring(i2, i3) : new String(this.f112568j, i2, i3 - i2);
    }

    public int getEnd(int i) {
        int[] iArr = this.f112564f;
        if (iArr == null) {
            throw new IllegalStateException("A result is not set.");
        }
        if (i >= 0 && this.f112565g > i) {
            return iArr[i];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("The parameter must be less than ");
        stringBuffer.append(this.f112565g);
        stringBuffer.append(": ");
        stringBuffer.append(i);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public int getNumberOfGroups() {
        int i = this.f112565g;
        if (i > 0) {
            return i;
        }
        throw new IllegalStateException("A result is not set.");
    }

    public void setBeginning(int i, int i2) {
        this.f112563e[i] = i2;
    }

    public void setEnd(int i, int i2) {
        this.f112564f[i] = i2;
    }

    public void setNumberOfGroups(int i) {
        int i2 = this.f112565g;
        this.f112565g = i;
        if (i2 <= 0 || i2 < i || i * 2 < i2) {
            this.f112563e = new int[i];
            this.f112564f = new int[i];
        }
        for (int i3 = 0; i3 < i; i3++) {
            this.f112563e[i3] = -1;
            this.f112564f[i3] = -1;
        }
    }

    public void setSource(String str) {
        this.f112566h = null;
        this.f112567i = str;
        this.f112568j = null;
    }

    public void setSource(CharacterIterator characterIterator) {
        this.f112566h = characterIterator;
        this.f112567i = null;
        this.f112568j = null;
    }

    public void setSource(char[] cArr) {
        this.f112566h = null;
        this.f112567i = null;
        this.f112568j = cArr;
    }
}
