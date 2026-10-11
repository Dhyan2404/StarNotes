package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.AbstractFunction;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class AtomicConstructorFunction extends AbstractFunction {

    /* renamed from: e */
    public final AtomicType f100363e;

    /* renamed from: f */
    public final NamespaceResolver f100364f;

    public AtomicConstructorFunction(AtomicType atomicType, NamespaceResolver namespaceResolver) {
        this.f100363e = atomicType;
        this.f100364f = namespaceResolver;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        AtomicValue atomicValue = (AtomicValue) sequenceArr[0].head();
        if (atomicValue == null) {
            return EmptySequence.getInstance();
        }
        Converter converter = xPathContext.getConfiguration().getConversionRules().getConverter(atomicValue.getItemType(), this.f100363e);
        if (converter != null) {
            return converter.setNamespaceResolver(this.f100364f).convert(atomicValue).asAtomic();
        }
        XPathException xPathException = new XPathException("Cannot convert " + atomicValue.getItemType() + " to " + this.f100363e, "XPTY0004");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("acFnRef");
        expressionPresenter.emitAttribute("name", this.f100363e.getTypeName());
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.om.Function
    public int getArity() {
        return 1;
    }

    @Override // net.p110sf.saxon.om.Function
    public String getDescription() {
        return getFunctionName().getDisplayName();
    }

    @Override // net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        return new SpecificFunctionType(new SequenceType[]{SequenceType.OPTIONAL_ATOMIC}, SequenceType.makeSequenceType(this.f100363e, 24576));
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return this.f100363e.getTypeName();
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public boolean isTrustedResultType() {
        return true;
    }
}
