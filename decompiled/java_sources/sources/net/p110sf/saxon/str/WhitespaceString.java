package net.p110sf.saxon.str;

import java.io.IOException;

/* loaded from: classes11.dex */
public abstract class WhitespaceString extends UnicodeString {
    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: a */
    public void mo63878a(char[] cArr, int i) {
        uncompress().mo63878a(cArr, i);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
        uncompress().mo63879b(bArr, i);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: c */
    public void mo63880c(byte[] bArr, int i) {
        uncompress().mo63880c(bArr, i);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int getWidth() {
        return 7;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i, long j) {
        return uncompress().indexOf(i, j);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString substring(long j, long j2) {
        return uncompress().substring(j, j2);
    }

    public String toString() {
        return uncompress().toString();
    }

    public abstract UnicodeString uncompress();

    public abstract void write(UnicodeWriter unicodeWriter) throws IOException;

    public abstract void writeEscape(boolean[] zArr, UnicodeWriter unicodeWriter) throws IOException;
}
