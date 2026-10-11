package net.p110sf.saxon.functions;

import java.util.Arrays;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class IriToUri extends ScalarSystemFunction {
    public static boolean[] allowedASCII;

    static {
        boolean[] zArr = new boolean[128];
        allowedASCII = zArr;
        Arrays.fill(zArr, 0, 32, false);
        Arrays.fill(allowedASCII, 33, 127, true);
        boolean[] zArr2 = allowedASCII;
        zArr2[34] = false;
        zArr2[60] = false;
        zArr2[62] = false;
        zArr2[92] = false;
        zArr2[94] = false;
        zArr2[96] = false;
        zArr2[123] = false;
        zArr2[124] = false;
        zArr2[125] = false;
    }

    /* renamed from: a */
    public static boolean m63020a(IntIterator intIterator) {
        while (intIterator.hasNext()) {
            int next = intIterator.next();
            if (next >= 127 || !allowedASCII[next]) {
                return false;
            }
        }
        return true;
    }

    public static UnicodeString iriToUri(UnicodeString unicodeString) {
        if (m63020a(unicodeString.codePoints())) {
            return unicodeString;
        }
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(unicodeString.length32() + 20);
        IntIterator codePoints = unicodeString.codePoints();
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (next >= 127 || !allowedASCII[next]) {
                EncodeForUri.escapeChar(next, unicodeBuilder);
            } else {
                unicodeBuilder.append(next);
            }
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AtomicValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
        return new StringValue(iriToUri(item.getUnicodeStringValue()));
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public Sequence resultWhenEmpty() {
        return StringValue.EMPTY_STRING;
    }
}
