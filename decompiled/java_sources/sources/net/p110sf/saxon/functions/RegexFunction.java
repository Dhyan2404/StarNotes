package net.p110sf.saxon.functions;

import java.util.ArrayList;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.regex.RegularExpression;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class RegexFunction extends SystemFunction implements StatefulSystemFunction {

    /* renamed from: h */
    public RegularExpression f100293h;

    /* renamed from: a */
    public final void m63152a(Expression[] expressionArr) {
        if ((expressionArr[1] instanceof StringLiteral) && (expressionArr[expressionArr.length - 1] instanceof StringLiteral)) {
            try {
                Configuration configuration = getRetainedStaticContext().getConfiguration();
                UnicodeString unicodeStringValue = ((StringLiteral) expressionArr[1]).getGroundedValue().getUnicodeStringValue();
                String stringify = ((StringLiteral) expressionArr[expressionArr.length - 1]).stringify();
                String str = "XP30";
                if (configuration.getXsdVersion() == 11) {
                    str = "XP30/XSD11";
                }
                this.f100293h = configuration.compileRegularExpression(unicodeStringValue, stringify, str, new ArrayList(1));
                if (allowRegexMatchingEmptyString() || !this.f100293h.matches(EmptyUnicodeString.getInstance())) {
                    return;
                }
                this.f100293h = null;
            } catch (XPathException unused) {
            }
        }
    }

    public abstract boolean allowRegexMatchingEmptyString();

    public RegularExpression getRegularExpression(Sequence[] sequenceArr) throws XPathException {
        RegularExpression regularExpression = this.f100293h;
        if (regularExpression != null) {
            return regularExpression;
        }
        Configuration configuration = getRetainedStaticContext().getConfiguration();
        UnicodeString unicodeStringValue = sequenceArr[1].head().getUnicodeStringValue();
        String stringValue = sequenceArr[sequenceArr.length - 1].head().getStringValue();
        String str = "XP30";
        if (configuration.getXsdVersion() == 11) {
            str = "XP30/XSD11";
        }
        RegularExpression compileRegularExpression = configuration.compileRegularExpression(unicodeStringValue, stringValue, str, new ArrayList(1));
        if (allowRegexMatchingEmptyString() || !compileRegularExpression.matches(EmptyUnicodeString.getInstance())) {
            return compileRegularExpression;
        }
        throw new XPathException("The regular expression must not be one that matches a zero-length string", "FORX0003");
    }

    public RegularExpression getStaticRegex() {
        return this.f100293h;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        m63152a(expressionArr);
        return super.makeFunctionCall(expressionArr);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        m63152a(expressionArr);
        return super.makeOptimizedFunctionCall(expressionVisitor, contextItemStaticInfo, expressionArr);
    }

    @Override // net.p110sf.saxon.functions.StatefulSystemFunction
    public RegexFunction copy() {
        RegexFunction regexFunction = (RegexFunction) SystemFunction.makeFunction(getFunctionName().getLocalPart(), getRetainedStaticContext(), getArity());
        regexFunction.f100293h = this.f100293h;
        return regexFunction;
    }
}
