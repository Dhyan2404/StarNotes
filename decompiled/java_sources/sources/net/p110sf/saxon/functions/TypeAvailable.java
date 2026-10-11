package net.p110sf.saxon.functions;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.JavaExternalObjectType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class TypeAvailable extends SystemFunction {
    /* renamed from: a */
    public final boolean m63216a(String str, Configuration configuration) throws XPathException {
        try {
            StructuredQName fromLexicalQName = (str.indexOf(58) >= 0 || str.startsWith("Q{")) ? StructuredQName.fromLexicalQName(str, false, true, getRetainedStaticContext()) : new StructuredQName("", getRetainedStaticContext().getURIForPrefix("", true), str);
            if (fromLexicalQName.getURI().equals(NamespaceConstant.JAVA_TYPE)) {
                try {
                    configuration.getClass(JavaExternalObjectType.localNameToClassName(fromLexicalQName.getLocalPart()), false);
                    return true;
                } catch (XPathException unused) {
                    return false;
                }
            }
            SchemaType schemaType = configuration.getSchemaType(fromLexicalQName);
            if (schemaType == null) {
                return false;
            }
            return (configuration.getXsdVersion() == 10 && (schemaType instanceof BuiltInAtomicType) && !((BuiltInAtomicType) schemaType).isAllowedInXSD10()) ? false : true;
        } catch (XPathException e) {
            e.setErrorCode("XTDE1428");
            throw e;
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeFunctionCall(Expression[] expressionArr) {
        try {
            Expression expression = expressionArr[0];
            if (expression instanceof StringLiteral) {
                return Literal.makeLiteral(BooleanValue.get(m63216a(((StringLiteral) expression).stringify(), getRetainedStaticContext().getConfiguration())));
            }
        } catch (XPathException unused) {
        }
        return super.makeFunctionCall(expressionArr);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(m63216a(sequenceArr[0].head().getStringValue(), xPathContext.getConfiguration()));
    }
}
