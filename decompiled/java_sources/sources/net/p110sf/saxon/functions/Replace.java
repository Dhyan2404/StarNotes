package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.regex.RegularExpression;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Replace extends RegexFunction {

    /* renamed from: i */
    public boolean f100298i = false;

    public static String checkReplacement(UnicodeString unicodeString) {
        int i = 0;
        while (true) {
            long j = i;
            if (j >= unicodeString.length()) {
                return null;
            }
            int codePointAt = unicodeString.codePointAt(j);
            if (codePointAt == 36) {
                i++;
                long j2 = i;
                if (j2 >= unicodeString.length()) {
                    return "Invalid replacement string in replace(): $ sign at end of string";
                }
                int codePointAt2 = unicodeString.codePointAt(j2);
                if (codePointAt2 < 48 || codePointAt2 > 57) {
                    return "Invalid replacement string in replace(): $ sign must be followed by digit 0-9";
                }
            } else if (codePointAt == 92) {
                i++;
                long j3 = i;
                if (j3 >= unicodeString.length()) {
                    return "Invalid replacement string in replace(): \\ character at end of string";
                }
                int codePointAt3 = unicodeString.codePointAt(j3);
                if (codePointAt3 != 92 && codePointAt3 != 36) {
                    return "Invalid replacement string in replace(): \\ character must be followed by \\ or $";
                }
            } else {
                continue;
            }
            i++;
        }
    }

    @Override // net.p110sf.saxon.functions.RegexFunction
    public boolean allowRegexMatchingEmptyString() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
    
        if (r0.contains(com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView.f47214k) == false) goto L11;
     */
    @Override // net.p110sf.saxon.functions.RegexFunction, net.p110sf.saxon.functions.SystemFunction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.expr.Expression makeFunctionCall(net.p110sf.saxon.expr.Expression... r5) {
        /*
            r4 = this;
            int r0 = r5.length
            r1 = 4
            r2 = 1
            if (r0 != r1) goto L24
            r0 = 3
            r0 = r5[r0]
            boolean r1 = r0 instanceof net.p110sf.saxon.expr.StringLiteral
            r3 = 0
            if (r1 == 0) goto L25
            net.sf.saxon.expr.StringLiteral r0 = (net.p110sf.saxon.expr.StringLiteral) r0
            java.lang.String r0 = r0.stringify()
            java.lang.String r1 = "q"
            boolean r1 = r0.contains(r1)
            if (r1 != 0) goto L25
            java.lang.String r1 = ";"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L24
            goto L25
        L24:
            r3 = r2
        L25:
            r0 = 2
            r0 = r5[r0]
            boolean r1 = r0 instanceof net.p110sf.saxon.expr.StringLiteral
            if (r1 == 0) goto L3c
            if (r3 == 0) goto L3c
            net.sf.saxon.expr.StringLiteral r0 = (net.p110sf.saxon.expr.StringLiteral) r0
            net.sf.saxon.str.UnicodeString r0 = r0.getString()
            java.lang.String r0 = checkReplacement(r0)
            if (r0 != 0) goto L3c
            r4.f100298i = r2
        L3c:
            net.sf.saxon.expr.Expression r4 = super.makeFunctionCall(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.Replace.makeFunctionCall(net.sf.saxon.expr.Expression[]):net.sf.saxon.expr.Expression");
    }

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        String checkReplacement;
        StringValue stringValue = (StringValue) sequenceArr[0].head();
        UnicodeString emptyUnicodeString = stringValue == null ? EmptyUnicodeString.getInstance() : stringValue.getUnicodeStringValue();
        UnicodeString unicodeStringValue = sequenceArr[2].head().getUnicodeStringValue();
        RegularExpression regularExpression = getRegularExpression(sequenceArr);
        if (!regularExpression.getFlags().contains("q") && !regularExpression.isPlatformNative() && !this.f100298i && (checkReplacement = checkReplacement(unicodeStringValue)) != null) {
            throw new XPathException(checkReplacement, "FORX0004", xPathContext);
        }
        return new StringValue(regularExpression.replace(emptyUnicodeString, unicodeStringValue));
    }
}
