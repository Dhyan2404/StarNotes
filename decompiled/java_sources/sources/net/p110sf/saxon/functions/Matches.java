package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.regex.RegularExpression;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Matches extends RegexFunction {
    @Override // net.p110sf.saxon.functions.RegexFunction
    public boolean allowRegexMatchingEmptyString() {
        return true;
    }

    public boolean evalMatches(AtomicValue atomicValue, AtomicValue atomicValue2, UnicodeString unicodeString, XPathContext xPathContext) throws XPathException {
        if (atomicValue2 == null) {
            return false;
        }
        try {
            String str = "XP30";
            if (xPathContext.getConfiguration().getXsdVersion() == 11) {
                str = "XP30/XSD11";
            }
            return xPathContext.getConfiguration().compileRegularExpression(atomicValue2.getUnicodeStringValue(), unicodeString.toString(), str, null).containsMatch(atomicValue.getUnicodeStringValue());
        } catch (XPathException e) {
            XPathException xPathException = new XPathException(e);
            xPathException.maybeSetErrorCode("FORX0002");
            xPathException.setXPathContext(xPathContext);
            throw xPathException;
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "MatchesCompiler";
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        RegularExpression regularExpression = getRegularExpression(sequenceArr);
        StringValue stringValue = (StringValue) sequenceArr[0].head();
        return BooleanValue.get(regularExpression.containsMatch(stringValue == null ? EmptyUnicodeString.getInstance() : stringValue.getUnicodeStringValue()));
    }
}
