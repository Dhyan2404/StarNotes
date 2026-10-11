package net.p110sf.saxon.value;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Arrays;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;

/* loaded from: classes11.dex */
public class HexBinaryValue extends AtomicValue implements AtomicMatchKey, XPathComparable, ContextFreeAtomicValue {

    /* renamed from: e */
    public final byte[] f102890e;

    public HexBinaryValue(UnicodeString unicodeString) throws XPathException {
        UnicodeString trim = Whitespace.trim(unicodeString);
        int length32 = trim.length32();
        if ((length32 & 1) == 0) {
            this.f102890e = new byte[length32 / 2];
            int i = 0;
            while (true) {
                byte[] bArr = this.f102890e;
                if (i < bArr.length) {
                    bArr[i] = (byte) ((m64671a(trim.codePointAt(i * 2)) << 4) + m64671a(trim.codePointAt(r2 + 1)));
                    i++;
                } else {
                    this.typeLabel = BuiltInAtomicType.HEX_BINARY;
                    return;
                }
            }
        } else {
            XPathException xPathException = new XPathException("A hexBinary value must contain an even number of characters");
            xPathException.setErrorCode("FORG0001");
            throw xPathException;
        }
    }

    /* renamed from: a */
    public final int m64671a(int i) throws XPathException {
        int indexOf = i < 255 ? "0123456789ABCDEFabcdef".indexOf((char) i) : -1;
        if (indexOf > 15) {
            indexOf -= 6;
        }
        if (indexOf >= 0) {
            return indexOf;
        }
        XPathException xPathException = new XPathException("Invalid hexadecimal digit '" + i + CloudStorageConstants.SINGLE_QUOTES);
        xPathException.setErrorCode("FORG0001");
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        HexBinaryValue hexBinaryValue = new HexBinaryValue(this.f102890e);
        hexBinaryValue.typeLabel = atomicType;
        return hexBinaryValue;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean equals(Object obj) {
        return (obj instanceof HexBinaryValue) && Arrays.equals(this.f102890e, ((HexBinaryValue) obj).f102890e);
    }

    public byte[] getBinaryValue() {
        return this.f102890e;
    }

    public int getLengthInOctets() {
        return this.f102890e.length;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(this.f102890e.length * 2);
        for (byte b : this.f102890e) {
            unicodeBuilder.append("0123456789ABCDEF".charAt((b >> 4) & 15));
            unicodeBuilder.append("0123456789ABCDEF".charAt(b & 15));
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.HEX_BINARY;
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
        return Base64BinaryValue.byteArrayHashCode(this.f102890e);
    }

    @Override // java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof HexBinaryValue) {
            byte[] bArr = ((HexBinaryValue) xPathComparable).f102890e;
            int length = this.f102890e.length;
            int length2 = bArr.length;
            int min = Math.min(length, length2);
            for (int i = 0; i < min; i++) {
                int i2 = this.f102890e[i] & 255;
                int i3 = bArr[i] & 255;
                if (i2 != i3) {
                    return i2 < i3 ? -1 : 1;
                }
            }
            return Integer.signum(length - length2);
        }
        throw new ClassCastException("Cannot compare xs:hexBinary to " + xPathComparable.toString());
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) {
        return this;
    }

    public HexBinaryValue(byte[] bArr) {
        this.f102890e = bArr;
        this.typeLabel = BuiltInAtomicType.HEX_BINARY;
    }
}
