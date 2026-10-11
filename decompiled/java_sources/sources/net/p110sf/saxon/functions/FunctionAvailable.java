package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.QNameParser;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.NumericValue;

/* loaded from: classes11.dex */
public class FunctionAvailable extends SystemFunction {
    /* renamed from: a */
    public final boolean m63014a(String str, RetainedStaticContext retainedStaticContext, int i, XPathContext xPathContext) throws XPathException {
        if (i != -1) {
            try {
                return xPathContext.getController().getExecutable().getFunctionLibrary().isAvailable(new SymbolicName.C18533F(NameChecker.isValidNCName(StringTool.codePoints(str)) ? new StructuredQName("", "http://www.w3.org/2005/xpath-functions", str) : StructuredQName.fromLexicalQName(str, false, true, getRetainedStaticContext()), i), retainedStaticContext.getPackageData().getHostLanguageVersion());
            } catch (XPathException e) {
                e.setErrorCode("XTDE1400");
                e.setXPathContext(xPathContext);
                throw e;
            }
        }
        for (int i2 = 0; i2 < 20; i2++) {
            if (m63014a(str, retainedStaticContext, i2, xPathContext)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression... expressionArr) {
        PackageData packageData = getRetainedStaticContext().getPackageData();
        if (packageData instanceof StylesheetPackage) {
            ((StylesheetPackage) packageData).setRetainUnusedFunctions();
        }
        return super.makeFunctionCall(expressionArr);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        int i;
        int i2;
        boolean z = false;
        Expression expression = expressionArr[0];
        if (!(expression instanceof Literal)) {
            return null;
        }
        if (expressionArr.length != 1 && !(expressionArr[1] instanceof Literal)) {
            return null;
        }
        String stringify = ((StringLiteral) expression).stringify();
        StaticContext staticContext = expressionVisitor.getStaticContext();
        StructuredQName parse = new QNameParser(getRetainedStaticContext()).withAcceptEQName(true).withErrorOnBadSyntax("XTDE1400").withErrorOnUnresolvedPrefix("XTDE1400").parse(stringify, staticContext.getDefaultFunctionNamespace());
        if (getArity() == 2) {
            i2 = (int) ((NumericValue) expressionArr[1].evaluateItem(staticContext.makeEarlyEvaluationContext())).longValue();
            i = i2;
        } else {
            i = 20;
            i2 = 0;
        }
        while (true) {
            if (i2 > i) {
                break;
            }
            if (staticContext.getFunctionLibrary().isAvailable(new SymbolicName.C18533F(parse, i2), staticContext.getXPathVersion())) {
                z = true;
                break;
            }
            i2++;
        }
        return Literal.makeLiteral(BooleanValue.get(z));
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(m63014a(sequenceArr[0].head().getStringValue(), getRetainedStaticContext(), sequenceArr.length == 2 ? (int) ((NumericValue) sequenceArr[1].head()).longValue() : -1, xPathContext));
    }
}
