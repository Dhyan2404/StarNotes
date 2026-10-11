package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ListType;
import net.p110sf.saxon.type.MissingComponentException;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class ListCastableFunction extends ListConstructorFunction {
    public ListCastableFunction(ListType listType, NamespaceResolver namespaceResolver, boolean z) throws MissingComponentException {
        super(listType, namespaceResolver, z);
    }

    @Override // net.p110sf.saxon.expr.ListConstructorFunction, net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        return new SpecificFunctionType(new SequenceType[]{SequenceType.ANY_SEQUENCE}, SequenceType.SINGLE_BOOLEAN);
    }

    @Override // net.p110sf.saxon.expr.ListConstructorFunction, net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.ListConstructorFunction, net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        SequenceIterator iterate = sequenceArr[0].iterate();
        AtomicValue atomicValue = (AtomicValue) iterate.next();
        if (atomicValue == null) {
            return BooleanValue.get(this.allowEmpty);
        }
        if (iterate.next() != null) {
            return BooleanValue.FALSE;
        }
        if ((atomicValue instanceof StringValue) && !(atomicValue instanceof AnyURIValue)) {
            return BooleanValue.get(this.targetType.validateContent(atomicValue.getUnicodeStringValue(), this.nsResolver, xPathContext.getConfiguration().getConversionRules()) == null);
        }
        return BooleanValue.FALSE;
    }
}
