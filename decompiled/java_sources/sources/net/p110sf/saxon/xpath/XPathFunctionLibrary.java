package net.p110sf.saxon.xpath;

import java.util.Arrays;
import java.util.List;
import javax.xml.namespace.QName;
import javax.xml.xpath.XPathFunction;
import javax.xml.xpath.XPathFunctionResolver;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.functions.CallableFunction;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XPathFunctionLibrary implements FunctionLibrary {

    /* renamed from: a */
    public XPathFunctionResolver f102973a;

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        if (this.f102973a == null) {
            return null;
        }
        StructuredQName componentName = c18533f.getComponentName();
        XPathFunction resolveFunction = this.f102973a.resolveFunction(new QName(componentName.getURI(), componentName.getLocalPart()), c18533f.getArity());
        if (resolveFunction == null) {
            return null;
        }
        XPathFunctionCall xPathFunctionCall = new XPathFunctionCall(componentName, resolveFunction);
        xPathFunctionCall.setArguments(expressionArr);
        return xPathFunctionCall;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        XPathFunctionLibrary xPathFunctionLibrary = new XPathFunctionLibrary();
        xPathFunctionLibrary.f102973a = this.f102973a;
        return xPathFunctionLibrary;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException {
        if (this.f102973a == null) {
            return null;
        }
        StructuredQName componentName = c18533f.getComponentName();
        int arity = c18533f.getArity();
        XPathFunction resolveFunction = this.f102973a.resolveFunction(new QName(componentName.getURI(), componentName.getLocalPart()), arity);
        if (resolveFunction == null) {
            return null;
        }
        XPathFunctionCall xPathFunctionCall = new XPathFunctionCall(componentName, resolveFunction);
        SequenceType[] sequenceTypeArr = new SequenceType[arity];
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        Arrays.fill(sequenceTypeArr, sequenceType);
        return new CallableFunction(c18533f, xPathFunctionCall, new SpecificFunctionType(sequenceTypeArr, sequenceType));
    }

    public XPathFunctionResolver getXPathFunctionResolver() {
        return this.f102973a;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        XPathFunctionResolver xPathFunctionResolver = this.f102973a;
        return (xPathFunctionResolver == null || xPathFunctionResolver.resolveFunction(new QName(c18533f.getComponentName().getURI(), c18533f.getComponentName().getLocalPart()), c18533f.getArity()) == null) ? false : true;
    }

    public void setXPathFunctionResolver(XPathFunctionResolver xPathFunctionResolver) {
        this.f102973a = xPathFunctionResolver;
    }
}
