package net.p110sf.saxon.str;

import java.util.function.IntPredicate;
import net.p110sf.saxon.expr.sort.EmptyIntIterator;
import net.p110sf.saxon.p111z.IntIterator;

/* loaded from: classes11.dex */
public final class EmptyUnicodeString extends UnicodeString {

    /* renamed from: e */
    public static final EmptyUnicodeString f101663e = new EmptyUnicodeString();

    public static EmptyUnicodeString getInstance() {
        return f101663e;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: a */
    public void mo63878a(char[] cArr, int i) {
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: c */
    public void mo63880c(byte[] bArr, int i) {
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int codePointAt(long j) throws IndexOutOfBoundsException {
        throw new IndexOutOfBoundsException();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        return EmptyIntIterator.getInstance();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString concat(UnicodeString unicodeString) {
        return unicodeString;
    }

    public String details() {
        return "empty string";
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean equals(Object obj) {
        if (obj instanceof UnicodeString) {
            return ((UnicodeString) obj).isEmpty();
        }
        return false;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int getWidth() {
        return 0;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int hashCode() {
        return 0;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i, long j) {
        return -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexWhere(IntPredicate intPredicate, long j) {
        return -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean isEmpty() {
        return true;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long length() {
        return 0L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int length32() {
        return 0;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString substring(long j, long j2) {
        checkSubstringBounds(j, j2);
        return this;
    }

    public String toString() {
        return "";
    }

    @Override // net.p110sf.saxon.str.UnicodeString, java.lang.Comparable
    public int compareTo(UnicodeString unicodeString) {
        return unicodeString.isEmpty() ? 0 : -1;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(UnicodeString unicodeString, long j) {
        return (unicodeString.isEmpty() && j == 0) ? 0L : -1L;
    }
}
