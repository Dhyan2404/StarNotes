package net.p110sf.saxon.functions;

import java.net.URI;
import java.net.URISyntaxException;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class CollatingFunctionFree extends SystemFunction {
    public static String expandCollationURI(String str, URI uri) throws XPathException {
        try {
            URI uri2 = new URI(str);
            if (uri2.isAbsolute()) {
                return str;
            }
            if (uri != null) {
                return uri.resolve(uri2).toString();
            }
            throw new XPathException("Cannot resolve relative collation URI '" + str + "': unknown or invalid base URI", "FOCH0002");
        } catch (URISyntaxException unused) {
            throw new XPathException("Collation name '" + str + "' is not a valid URI", "FOCH0002");
        }
    }

    /* renamed from: a */
    public final int m62954a() {
        return getArity() - 1;
    }

    public CollatingFunctionFixed bindCollation(String str) throws XPathException {
        CollatingFunctionFixed collatingFunctionFixed = (CollatingFunctionFixed) getRetainedStaticContext().getConfiguration().makeSystemFunction(getFunctionName().getLocalPart(), getArity() - 1);
        collatingFunctionFixed.setRetainedStaticContext(getRetainedStaticContext());
        collatingFunctionFixed.setCollationName(str);
        return collatingFunctionFixed;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        int m62954a = m62954a();
        CollatingFunctionFixed bindCollation = bindCollation(expandCollationURI(sequenceArr[m62954a].head().getStringValue(), getRetainedStaticContext().getStaticBaseUri()));
        Sequence[] sequenceArr2 = new Sequence[sequenceArr.length - 1];
        System.arraycopy(sequenceArr, 0, sequenceArr2, 0, m62954a);
        int i = m62954a + 1;
        if (i < getArity()) {
            System.arraycopy(sequenceArr, i, sequenceArr2, m62954a, getArity() - m62954a);
        }
        return bindCollation.call(xPathContext, sequenceArr2);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        try {
            return bindCollation(NamespaceConstant.CODEPOINT_COLLATION_URI).getStreamerName();
        } catch (XPathException e) {
            throw new AssertionError(e);
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        Expression expression = expressionArr[expressionArr.length - 1];
        if (!(expression instanceof StringLiteral)) {
            return null;
        }
        String stringify = ((StringLiteral) expression).stringify();
        try {
            if (!new URI(stringify).isAbsolute()) {
                stringify = ResolveURI.makeAbsolute(stringify, getStaticBaseUriString()).toASCIIString();
            }
        } catch (URISyntaxException unused) {
            expressionVisitor.getStaticContext().issueWarning("Cannot resolve relative collation URI " + stringify, expression.getLocation());
        }
        CollatingFunctionFixed bindCollation = bindCollation(stringify);
        int length = expressionArr.length - 1;
        Expression[] expressionArr2 = new Expression[length];
        System.arraycopy(expressionArr, 0, expressionArr2, 0, length);
        return bindCollation.makeFunctionCall(expressionArr2);
    }
}
