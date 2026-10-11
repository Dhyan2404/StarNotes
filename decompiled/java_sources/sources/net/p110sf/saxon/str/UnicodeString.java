package net.p110sf.saxon.str;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.function.IntPredicate;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;
import net.p110sf.saxon.serialize.charcode.XMLCharacterData;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Base64BinaryValue;

/* loaded from: classes11.dex */
public abstract class UnicodeString implements AtomicMatchKey, Comparable<UnicodeString> {
    public static int requireInt(long j) {
        if (j <= 2147483647L) {
            return (int) j;
        }
        throw new UnsupportedOperationException("String offset exceeds 2^31 characters");
    }

    /* renamed from: a */
    public void mo63878a(char[] cArr, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicMatchKey
    public AtomicValue asAtomic() {
        return new Base64BinaryValue(m63914d());
    }

    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: c */
    public void mo63880c(byte[] bArr, int i) {
        throw new UnsupportedOperationException();
    }

    public void checkSubstringBounds(long j, long j2) {
        if (j < 0) {
            throw new IndexOutOfBoundsException("UnicodeString.substring(): start (" + j + ") < 0");
        }
        if (j2 < j) {
            throw new IndexOutOfBoundsException("UnicodeString.substring(): end (" + j2 + ") < start ( + start + ");
        }
        if (j2 <= length()) {
            return;
        }
        throw new IndexOutOfBoundsException("UnicodeString.substring(): end (" + j2 + ") > length (" + length() + MotionUtils.f31762d);
    }

    public abstract int codePointAt(long j);

    public abstract IntIterator codePoints();

    public UnicodeString concat(UnicodeString unicodeString) {
        return ZenoString.m63916of(this).concat(unicodeString);
    }

    /* renamed from: d */
    public final byte[] m63914d() {
        UnicodeString tidy = tidy();
        byte[] bArr = new byte[requireInt(tidy.length()) * 3];
        IntIterator codePoints = tidy.codePoints();
        int i = 0;
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            int i2 = i + 1;
            bArr[i] = (byte) (next >> 16);
            int i3 = i2 + 1;
            bArr[i2] = (byte) (next >> 8);
            bArr[i3] = (byte) next;
            i = i3 + 1;
        }
        return bArr;
    }

    public UnicodeString economize() {
        return this;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof UnicodeString)) {
            return false;
        }
        IntIterator codePoints = codePoints();
        IntIterator codePoints2 = ((UnicodeString) obj).codePoints();
        do {
            boolean hasNext = codePoints.hasNext();
            boolean hasNext2 = codePoints2.hasNext();
            if (!hasNext || !hasNext2) {
                return (hasNext || hasNext2) ? false : true;
            }
        } while (codePoints.next() == codePoints2.next());
        return false;
    }

    public long estimatedLength() {
        return length();
    }

    public abstract int getWidth();

    public boolean hasSubstring(UnicodeString unicodeString, long j) {
        if (j < 0 || j > length()) {
            throw new IndexOutOfBoundsException();
        }
        long length = unicodeString.length();
        if (length + j > length()) {
            return false;
        }
        for (long j2 = 0; j2 < length; j2++) {
            if (codePointAt(j + j2) != unicodeString.codePointAt(j2)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i;
        IntIterator codePoints = codePoints();
        int i2 = 0;
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if ((16711680 & next) != 0) {
                i = ((i2 * 31) + UTF16CharacterSet.highSurrogate(next)) * 31;
                next = UTF16CharacterSet.lowSurrogate(next);
            } else {
                i = i2 * 31;
            }
            i2 = i + next;
        }
        return i2;
    }

    public long indexOf(int i) {
        return indexOf(i, 0L);
    }

    public abstract long indexOf(int i, long j);

    public long indexWhere(IntPredicate intPredicate, long j) {
        IntIterator codePoints = codePoints();
        long j2 = 0;
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (j2 >= j && intPredicate.test(next)) {
                return j2;
            }
            j2++;
        }
        return -1L;
    }

    public boolean isEmpty() {
        return length() == 0;
    }

    public abstract long length();

    public int length32() {
        return requireInt(length());
    }

    public UnicodeString prefix(long j) {
        return substring(0L, j);
    }

    public UnicodeString substring(long j) {
        return substring(j, length());
    }

    public abstract UnicodeString substring(long j, long j2);

    public UnicodeString tidy() {
        return this;
    }

    public void verifyCharacters() {
        IntIterator codePoints = codePoints();
        int i = 0;
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (!XMLCharacterData.isValid11(next)) {
                throw new IllegalStateException("Invalid char " + next + CloudStorageConstants.OPERATION_IN + getClass() + " at offset " + i);
            }
            i++;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(UnicodeString unicodeString) {
        int next;
        IntIterator codePoints = codePoints();
        IntIterator codePoints2 = unicodeString.codePoints();
        do {
            boolean hasNext = codePoints.hasNext();
            boolean hasNext2 = codePoints2.hasNext();
            if (!hasNext || !hasNext2) {
                if (hasNext || hasNext2) {
                    return hasNext ? 1 : -1;
                }
                return 0;
            }
            next = codePoints.next() - codePoints2.next();
        } while (next == 0);
        return next;
    }

    public long indexOf(UnicodeString unicodeString, long j) {
        if (j >= 0 && j < length()) {
            if (unicodeString.isEmpty()) {
                return j;
            }
            int codePointAt = unicodeString.codePointAt(0L);
            long length = length() - unicodeString.length();
            while (j <= length) {
                long indexOf = indexOf(codePointAt, j);
                if (indexOf < 0) {
                    return -1L;
                }
                if (hasSubstring(unicodeString, indexOf)) {
                    return indexOf;
                }
                j = indexOf + 1;
            }
        }
        return -1L;
    }
}
