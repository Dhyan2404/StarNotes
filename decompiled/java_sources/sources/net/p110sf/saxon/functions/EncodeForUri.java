package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSingletonIterator;
import net.p110sf.saxon.serialize.charcode.UTF8CharacterSet;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class EncodeForUri extends ScalarSystemFunction {

    /* renamed from: h */
    public static final String f100195h = "0123456789ABCDEF";

    /* renamed from: i */
    public static final int[] f100196i = {1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 2, 2, 3, 4};

    public static void checkPercentEncoding(String str) throws XPathException {
        int i = 0;
        while (i < str.length()) {
            if (str.charAt(i) == '%') {
                int i2 = i + 2;
                if (i2 >= str.length()) {
                    throw new XPathException("% sign in URI must be followed by two hex digits" + Err.wrap(str));
                }
                int indexOf = "0123456789abcdefABCDEF".indexOf(str.charAt(i + 1));
                if (indexOf > 15) {
                    indexOf -= 6;
                }
                int indexOf2 = "0123456789abcdefABCDEF".indexOf(str.charAt(i2));
                if (indexOf2 > 15) {
                    indexOf2 -= 6;
                }
                if (indexOf < 0 || indexOf2 < 0) {
                    throw new XPathException("% sign in URI must be followed by two hex digits" + Err.wrap(str));
                }
                int i3 = indexOf2 | (indexOf << 4);
                int i4 = f100196i[indexOf];
                if (i4 == -1) {
                    throw new XPathException("First %-encoded octet in URI is not valid as the start of a UTF-8 character: first two bits must not be '10'" + Err.wrap(str));
                }
                byte[] bArr = new byte[i4];
                bArr[0] = (byte) i3;
                i += 3;
                for (int i5 = 1; i5 < i4; i5++) {
                    int i6 = i + 2;
                    if (i6 > str.length() || str.charAt(i) != '%') {
                        throw new XPathException("Incomplete %-encoded UTF-8 octet sequence in URI " + Err.wrap(str));
                    }
                    int indexOf3 = "0123456789abcdefABCDEF".indexOf(str.charAt(i + 1));
                    if (indexOf3 > 15) {
                        indexOf3 -= 6;
                    }
                    int indexOf4 = "0123456789abcdefABCDEF".indexOf(str.charAt(i6));
                    if (indexOf4 > 15) {
                        indexOf4 -= 6;
                    }
                    if (indexOf3 < 0 || indexOf4 < 0) {
                        throw new XPathException("Invalid %-encoded UTF-8 octet sequence in URI" + Err.wrap(str));
                    }
                    if (f100196i[indexOf3] != -1) {
                        throw new XPathException("In a URI, a %-encoded UTF-8 octet after the first must have '10' as the first two bits" + Err.wrap(str));
                    }
                    bArr[i5] = (byte) (indexOf4 | (indexOf3 << 4));
                    i += 3;
                }
            } else {
                i++;
            }
        }
    }

    public static StringValue escape(UnicodeString unicodeString, String str) {
        UnicodeString tidy = unicodeString.tidy();
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(tidy.length32() + 20);
        IntIterator codePoints = tidy.codePoints();
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if ((next >= 97 && next <= 122) || ((next >= 65 && next <= 90) || (next >= 48 && next <= 57))) {
                unicodeBuilder.append(next);
            } else if (next <= 32 || next >= 127) {
                escapeChar(next, unicodeBuilder);
            } else if (str.indexOf((char) next) >= 0) {
                unicodeBuilder.append(next);
            } else {
                escapeChar(next, unicodeBuilder);
            }
        }
        return new StringValue(unicodeBuilder.toUnicodeString());
    }

    public static void escapeChar(int i, UnicodeBuilder unicodeBuilder) {
        for (byte b : UTF8CharacterSet.encode(new IntSingletonIterator(i))) {
            int i2 = b & 255;
            unicodeBuilder.append('%').append("0123456789ABCDEF".charAt(i2 / 16)).append("0123456789ABCDEF".charAt(i2 % 16));
        }
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AtomicValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
        return escape(item.getUnicodeStringValue(), "-_.~");
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public Sequence resultWhenEmpty() {
        return StringValue.EMPTY_STRING;
    }
}
