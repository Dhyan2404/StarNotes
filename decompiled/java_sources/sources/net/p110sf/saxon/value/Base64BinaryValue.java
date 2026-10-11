package net.p110sf.saxon.value;

import java.util.Arrays;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;

/* loaded from: classes11.dex */
public class Base64BinaryValue extends AtomicValue implements AtomicMatchKey, XPathComparable, ContextFreeAtomicValue {

    /* renamed from: f */
    public static final String f102838f = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    /* renamed from: g */
    public static final int[] f102839g = new int[64];

    /* renamed from: h */
    public static final int[] f102840h;

    /* renamed from: e */
    public final byte[] f102841e;

    static {
        int[] iArr = new int[128];
        f102840h = iArr;
        Arrays.fill(iArr, -1);
        for (int i = 0; i < 64; i++) {
            char charAt = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i);
            f102839g[i] = charAt;
            f102840h[charAt] = i;
        }
    }

    public Base64BinaryValue(UnicodeString unicodeString) throws XPathException {
        this.f102841e = decode(unicodeString);
        this.typeLabel = BuiltInAtomicType.BASE64_BINARY;
    }

    /* renamed from: a */
    public static int m64649a(int i) throws XPathException {
        int i2 = i < 128 ? f102840h[i] : -1;
        if (i2 != -1) {
            return i2;
        }
        throw new XPathException("Invalid character '" + i + "' in base64 value", "FORG0001");
    }

    public static int byteArrayHashCode(byte[] bArr) {
        long j = 0;
        for (int i = 0; i < Math.min(bArr.length, 64); i++) {
            j = (j << 1) ^ bArr[i];
        }
        return (int) (j ^ (j >> 32));
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0142, code lost:
    
        if ((r6 % r0) != 0) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0144, code lost:
    
        r0 = new byte[r7];
        java.lang.System.arraycopy(r3, 0, r0, 0, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0149, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0151, code lost:
    
        throw new net.p110sf.saxon.trans.XPathException("Length of base64 value must be a multiple of four", "FORG0001");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] decode(net.p110sf.saxon.str.UnicodeString r19) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.value.Base64BinaryValue.decode(net.sf.saxon.str.UnicodeString):byte[]");
    }

    public static UnicodeString encode(byte[] bArr) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(bArr.length * 2);
        int length = bArr.length - (bArr.length % 3);
        for (int i = 0; i < length; i += 3) {
            int i2 = ((bArr[i] & 255) << 16) + ((bArr[i + 1] & 255) << 8) + (bArr[i + 2] & 255);
            int[] iArr = f102839g;
            unicodeBuilder.append((char) iArr[(i2 >> 18) & 63]);
            unicodeBuilder.append((char) iArr[(i2 >> 12) & 63]);
            unicodeBuilder.append((char) iArr[(i2 >> 6) & 63]);
            unicodeBuilder.append((char) iArr[i2 & 63]);
        }
        int length2 = bArr.length % 3;
        if (length2 == 1) {
            int i3 = (bArr[length] & 255) << 4;
            int[] iArr2 = f102839g;
            unicodeBuilder.append((char) iArr2[(i3 >> 6) & 63]);
            unicodeBuilder.append((char) iArr2[i3 & 63]);
            unicodeBuilder.appendLatin("==");
        } else if (length2 == 2) {
            int i4 = ((bArr[length] & 255) << 10) + ((bArr[length + 1] & 255) << 2);
            int[] iArr3 = f102839g;
            unicodeBuilder.append((char) iArr3[(i4 >> 12) & 63]);
            unicodeBuilder.append((char) iArr3[(i4 >> 6) & 63]);
            unicodeBuilder.append((char) iArr3[i4 & 63]);
            unicodeBuilder.append("=");
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        Base64BinaryValue base64BinaryValue = new Base64BinaryValue(this.f102841e);
        base64BinaryValue.typeLabel = atomicType;
        return base64BinaryValue;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean equals(Object obj) {
        return (obj instanceof Base64BinaryValue) && Arrays.equals(this.f102841e, ((Base64BinaryValue) obj).f102841e);
    }

    public byte[] getBinaryValue() {
        return this.f102841e;
    }

    public int getLengthInOctets() {
        return this.f102841e.length;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        return encode(this.f102841e);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.BASE64_BINARY;
    }

    @Override // net.p110sf.saxon.value.ContextFreeAtomicValue
    public XPathComparable getXPathComparable() {
        return this;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicMatchKey getXPathMatchKey(StringCollator stringCollator, int i) {
        return this;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        return byteArrayHashCode(this.f102841e);
    }

    @Override // java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof Base64BinaryValue) {
            byte[] bArr = ((Base64BinaryValue) xPathComparable).f102841e;
            int length = this.f102841e.length;
            int length2 = bArr.length;
            int min = Math.min(length, length2);
            for (int i = 0; i < min; i++) {
                int i2 = this.f102841e[i] & 255;
                int i3 = bArr[i] & 255;
                if (i2 != i3) {
                    return i2 < i3 ? -1 : 1;
                }
            }
            return Integer.signum(length - length2);
        }
        throw new ClassCastException("Cannot compare xs:base64Binary to " + xPathComparable.toString());
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) throws NoDynamicContextException {
        return this;
    }

    public Base64BinaryValue(byte[] bArr) {
        this.f102841e = bArr;
        this.typeLabel = BuiltInAtomicType.BASE64_BINARY;
    }
}
