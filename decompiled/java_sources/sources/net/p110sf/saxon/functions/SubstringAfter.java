package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.SubstringMatcher;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class SubstringAfter extends CollatingFunctionFixed {
    /* renamed from: b */
    public static UnicodeString m63175b(UnicodeString unicodeString, UnicodeString unicodeString2, SubstringMatcher substringMatcher) {
        if (unicodeString == null) {
            unicodeString = EmptyUnicodeString.getInstance();
        }
        if (unicodeString2 == null) {
            unicodeString2 = EmptyUnicodeString.getInstance();
        }
        return unicodeString2.isEmpty() ? unicodeString : unicodeString.isEmpty() ? EmptyUnicodeString.getInstance() : substringMatcher.substringAfter(unicodeString, unicodeString2);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "SubstringAfterCompiler";
    }

    @Override // net.p110sf.saxon.functions.CollatingFunctionFixed
    public boolean isSubstringMatchingFunction() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return new StringValue(m63175b(getUniStringArg(sequenceArr[0]), getUniStringArg(sequenceArr[1]), (SubstringMatcher) getStringCollator()));
    }
}
