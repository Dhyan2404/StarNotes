package org.apache.xerces.impl.xpath.regex;

import java.text.CharacterIterator;

/* loaded from: classes13.dex */
public class BMPattern {

    /* renamed from: a */
    public final char[] f112560a;

    /* renamed from: b */
    public final int[] f112561b;

    /* renamed from: c */
    public final boolean f112562c;

    public BMPattern(String str, int i, boolean z) {
        char[] charArray = str.toCharArray();
        this.f112560a = charArray;
        this.f112561b = new int[i];
        this.f112562c = z;
        int length = charArray.length;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f112561b;
            if (i2 >= iArr.length) {
                break;
            }
            iArr[i2] = length;
            i2++;
        }
        for (int i3 = 0; i3 < length; i3++) {
            char c = this.f112560a[i3];
            int i4 = (length - i3) - 1;
            int[] iArr2 = this.f112561b;
            int length2 = c % iArr2.length;
            if (i4 < iArr2[length2]) {
                iArr2[length2] = i4;
            }
            if (this.f112562c) {
                char upperCase = Character.toUpperCase(c);
                int[] iArr3 = this.f112561b;
                int length3 = upperCase % iArr3.length;
                if (i4 < iArr3[length3]) {
                    iArr3[length3] = i4;
                }
                char lowerCase = Character.toLowerCase(upperCase);
                int[] iArr4 = this.f112561b;
                int length4 = lowerCase % iArr4.length;
                if (i4 < iArr4[length4]) {
                    iArr4[length4] = i4;
                }
            }
        }
    }

    /* renamed from: a */
    public int m70001a(String str, int i, int i2) {
        char charAt;
        char upperCase;
        char upperCase2;
        int length = this.f112560a.length;
        if (length == 0) {
            return i;
        }
        int i3 = i + length;
        while (i3 <= i2) {
            int i4 = i3 + 1;
            int i5 = length;
            do {
                i3--;
                charAt = str.charAt(i3);
                i5--;
                char c = this.f112560a[i5];
                if (charAt != c && (upperCase = Character.toUpperCase(charAt)) != (upperCase2 = Character.toUpperCase(c)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                    break;
                }
                if (i5 == 0) {
                    return i3;
                }
            } while (i5 > 0);
            int[] iArr = this.f112561b;
            i3 += iArr[charAt % iArr.length] + 1;
            if (i3 < i4) {
                i3 = i4;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public int m70002b(CharacterIterator characterIterator, int i, int i2) {
        char index;
        char upperCase;
        char upperCase2;
        int length = this.f112560a.length;
        if (length == 0) {
            return i;
        }
        int i3 = i + length;
        while (i3 <= i2) {
            int i4 = i3 + 1;
            int i5 = length;
            do {
                i3--;
                index = characterIterator.setIndex(i3);
                i5--;
                char c = this.f112560a[i5];
                if (index != c && (upperCase = Character.toUpperCase(index)) != (upperCase2 = Character.toUpperCase(c)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                    break;
                }
                if (i5 == 0) {
                    return i3;
                }
            } while (i5 > 0);
            int[] iArr = this.f112561b;
            i3 += iArr[index % iArr.length] + 1;
            if (i3 < i4) {
                i3 = i4;
            }
        }
        return -1;
    }

    /* renamed from: c */
    public int m70003c(char[] cArr, int i, int i2) {
        char c;
        char upperCase;
        char upperCase2;
        int length = this.f112560a.length;
        if (length == 0) {
            return i;
        }
        int i3 = i + length;
        while (i3 <= i2) {
            int i4 = i3 + 1;
            int i5 = length;
            do {
                i3--;
                c = cArr[i3];
                i5--;
                char c2 = this.f112560a[i5];
                if (c != c2 && (upperCase = Character.toUpperCase(c)) != (upperCase2 = Character.toUpperCase(c2)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                    break;
                }
                if (i5 == 0) {
                    return i3;
                }
            } while (i5 > 0);
            int[] iArr = this.f112561b;
            i3 += iArr[c % iArr.length] + 1;
            if (i3 < i4) {
                i3 = i4;
            }
        }
        return -1;
    }

    public int matches(String str, int i, int i2) {
        char charAt;
        if (this.f112562c) {
            return m70001a(str, i, i2);
        }
        int length = this.f112560a.length;
        if (length == 0) {
            return i;
        }
        int i3 = i + length;
        while (i3 <= i2) {
            int i4 = i3 + 1;
            int i5 = length;
            do {
                i3--;
                charAt = str.charAt(i3);
                i5--;
                if (charAt != this.f112560a[i5]) {
                    break;
                }
                if (i5 == 0) {
                    return i3;
                }
            } while (i5 > 0);
            int[] iArr = this.f112561b;
            i3 += iArr[charAt % iArr.length] + 1;
            if (i3 < i4) {
                i3 = i4;
            }
        }
        return -1;
    }

    public BMPattern(String str, boolean z) {
        this(str, 256, z);
    }

    public int matches(CharacterIterator characterIterator, int i, int i2) {
        char index;
        if (this.f112562c) {
            return m70002b(characterIterator, i, i2);
        }
        int length = this.f112560a.length;
        if (length == 0) {
            return i;
        }
        int i3 = i + length;
        while (i3 <= i2) {
            int i4 = i3 + 1;
            int i5 = length;
            do {
                i3--;
                index = characterIterator.setIndex(i3);
                i5--;
                if (index != this.f112560a[i5]) {
                    break;
                }
                if (i5 == 0) {
                    return i3;
                }
            } while (i5 > 0);
            int[] iArr = this.f112561b;
            i3 += iArr[index % iArr.length] + 1;
            if (i3 < i4) {
                i3 = i4;
            }
        }
        return -1;
    }

    public int matches(char[] cArr, int i, int i2) {
        char c;
        if (this.f112562c) {
            return m70003c(cArr, i, i2);
        }
        int length = this.f112560a.length;
        if (length == 0) {
            return i;
        }
        int i3 = i + length;
        while (i3 <= i2) {
            int i4 = i3 + 1;
            int i5 = length;
            do {
                i3--;
                c = cArr[i3];
                i5--;
                if (c != this.f112560a[i5]) {
                    break;
                }
                if (i5 == 0) {
                    return i3;
                }
            } while (i5 > 0);
            int[] iArr = this.f112561b;
            i3 += iArr[c % iArr.length] + 1;
            if (i3 < i4) {
                i3 = i4;
            }
        }
        return -1;
    }
}
