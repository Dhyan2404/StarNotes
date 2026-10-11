package net.p110sf.saxon.str;

import java.util.Objects;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;

/* loaded from: classes11.dex */
public class StringView extends UnicodeString {

    /* renamed from: e */
    public final String f101701e;

    /* renamed from: f */
    public UnicodeString f101702f;

    public StringView(String str) {
        Objects.requireNonNull(str);
        this.f101701e = str;
    }

    /* renamed from: of */
    public static UnicodeString m63901of(String str) {
        return new StringView(str);
    }

    public static UnicodeString tidy(String str) {
        return new StringView(str).tidy();
    }

    public static UnicodeString wrap(String str) {
        return new StringView(str).tidy();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: a */
    public void mo63878a(char[] cArr, int i) {
        tidy().mo63878a(cArr, i);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
        tidy().mo63879b(bArr, i);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: c */
    public void mo63880c(byte[] bArr, int i) {
        tidy().mo63880c(bArr, i);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int codePointAt(long j) {
        return tidy().codePointAt(j);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        UnicodeString unicodeString = this.f101702f;
        return unicodeString != null ? unicodeString.codePoints() : StringTool.codePoints(this.f101701e);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString concat(UnicodeString unicodeString) {
        if (!(unicodeString instanceof StringView)) {
            return new UnicodeBuilder().accept((UnicodeString) this).accept(unicodeString).toUnicodeString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f101701e);
        StringView stringView = (StringView) unicodeString;
        sb.append(stringView.f101701e);
        StringView stringView2 = new StringView(sb.toString());
        UnicodeString unicodeString2 = this.f101702f;
        UnicodeString unicodeString3 = stringView.f101702f;
        if (unicodeString2 != null && unicodeString3 != null) {
            this.f101702f = unicodeString2.concat(unicodeString3);
        }
        return stringView2;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString economize() {
        return tidy();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean equals(Object obj) {
        return obj instanceof StringView ? this.f101701e.equals(((StringView) obj).f101701e) : obj instanceof BMPString ? this.f101701e.equals(obj.toString()) : super.equals(obj);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long estimatedLength() {
        UnicodeString unicodeString = this.f101702f;
        return unicodeString != null ? unicodeString.length() : this.f101701e.length();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int getWidth() {
        return tidy().getWidth();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int hashCode() {
        return this.f101701e.hashCode();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i, long j) {
        return tidy().indexOf(i, j);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean isEmpty() {
        return this.f101701e.isEmpty();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long length() {
        return tidy().length();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString substring(long j, long j2) {
        return tidy().substring(j, j2);
    }

    public String toString() {
        return this.f101701e;
    }

    @Override // net.p110sf.saxon.str.UnicodeString, java.lang.Comparable
    public int compareTo(UnicodeString unicodeString) {
        if (this.f101702f != null && (unicodeString instanceof StringView)) {
            StringView stringView = (StringView) unicodeString;
            if (stringView.f101702f != null) {
                return this.f101701e.compareTo(stringView.f101701e);
            }
        }
        return super.compareTo(unicodeString);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public synchronized UnicodeString tidy() {
        int i;
        UnicodeString unicodeString = this.f101702f;
        if (unicodeString != null) {
            return unicodeString;
        }
        int stringLength = StringTool.getStringLength(this.f101701e);
        if (stringLength == this.f101701e.length()) {
            BMPString bMPString = new BMPString(this.f101701e);
            this.f101702f = bMPString;
            return bMPString;
        }
        byte[] bArr = new byte[stringLength * 3];
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.f101701e.length()) {
            char charAt = this.f101701e.charAt(i2);
            if (UTF16CharacterSet.isSurrogate(charAt)) {
                i2++;
                int combinePair = UTF16CharacterSet.combinePair(charAt, this.f101701e.charAt(i2));
                int i4 = i3 + 1;
                bArr[i3] = (byte) ((combinePair >> 16) & 255);
                int i5 = i4 + 1;
                bArr[i4] = (byte) ((combinePair >> 8) & 255);
                i = i5 + 1;
                bArr[i5] = (byte) (combinePair & 255);
            } else {
                int i6 = i3 + 1;
                bArr[i3] = 0;
                int i7 = i6 + 1;
                bArr[i6] = (byte) ((charAt >> '\b') & 255);
                i = i7 + 1;
                bArr[i7] = (byte) (charAt & 255);
            }
            i3 = i;
            i2++;
        }
        Twine24 twine24 = new Twine24(bArr);
        this.f101702f = twine24;
        return twine24;
    }
}
