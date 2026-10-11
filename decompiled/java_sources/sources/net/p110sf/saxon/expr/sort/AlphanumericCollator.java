package net.p110sf.saxon.expr.sort;

import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import net.p110sf.saxon.functions.CollationKeyFn;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.regex.ARegularExpression;
import net.p110sf.saxon.regex.RegexIterator;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.value.Base64BinaryValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class AlphanumericCollator implements StringCollator {
    public static final String PREFIX = "http://saxon.sf.net/collation/alphaNumeric?base=";

    /* renamed from: b */
    public static final ARegularExpression f100004b = ARegularExpression.compile("\\d+", "");

    /* renamed from: a */
    public final StringCollator f100005a;

    public AlphanumericCollator(StringCollator stringCollator) {
        this.f100005a = stringCollator;
    }

    /* renamed from: a */
    public static void m62887a(ByteArrayOutputStream byteArrayOutputStream, byte b) {
        byteArrayOutputStream.write(b);
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public int compareStrings(UnicodeString unicodeString, UnicodeString unicodeString2) {
        ARegularExpression aRegularExpression = f100004b;
        RegexIterator analyze = aRegularExpression.analyze(unicodeString);
        RegexIterator analyze2 = aRegularExpression.analyze(unicodeString2);
        while (true) {
            StringValue next = analyze.next();
            StringValue next2 = analyze2.next();
            if (next == null) {
                return next2 == null ? 0 : -1;
            }
            if (next2 == null) {
                return 1;
            }
            boolean isMatching = analyze.isMatching();
            boolean isMatching2 = analyze2.isMatching();
            if (isMatching && isMatching2) {
                int compareTo = new BigInteger(next.getStringValue()).compareTo(new BigInteger(next2.getStringValue()));
                if (compareTo != 0) {
                    return compareTo;
                }
            } else {
                int compareStrings = this.f100005a.compareStrings(isMatching ? EmptyUnicodeString.getInstance() : next.getUnicodeStringValue(), isMatching2 ? EmptyUnicodeString.getInstance() : next2.getUnicodeStringValue());
                if (compareStrings != 0) {
                    return compareStrings;
                }
            }
        }
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public boolean comparesEqual(UnicodeString unicodeString, UnicodeString unicodeString2) {
        return compareStrings(unicodeString, unicodeString2) == 0;
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public AtomicMatchKey getCollationKey(UnicodeString unicodeString) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        RegexIterator analyze = f100004b.analyze(unicodeString);
        while (true) {
            StringValue next = analyze.next();
            if (next == null) {
                return new Base64BinaryValue(byteArrayOutputStream.toByteArray());
            }
            if (analyze.isMatching()) {
                byte[] byteArray = new BigInteger(next.getStringValue()).toByteArray();
                int length = byteArray.length;
                m62887a(byteArrayOutputStream, (byte) 0);
                m62887a(byteArrayOutputStream, (byte) length);
                byteArrayOutputStream.write(byteArray, 0, byteArray.length);
            } else {
                byte[] binaryValue = CollationKeyFn.getCollationKey(next.getUnicodeStringValue(), this.f100005a).getBinaryValue();
                byteArrayOutputStream.write(binaryValue, 0, binaryValue.length);
            }
        }
    }

    @Override // net.p110sf.saxon.lib.StringCollator
    public String getCollationURI() {
        return PREFIX + this.f100005a.getCollationURI();
    }
}
