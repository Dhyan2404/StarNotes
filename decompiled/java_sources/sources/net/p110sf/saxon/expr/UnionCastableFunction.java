package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.UnionType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class UnionCastableFunction extends UnionConstructorFunction {
    public UnionCastableFunction(UnionType unionType, NamespaceResolver namespaceResolver, boolean z) {
        super(unionType, namespaceResolver, z);
    }

    /* renamed from: a */
    public final boolean m62649a(AtomicValue atomicValue, XPathContext xPathContext) {
        try {
            cast(atomicValue, xPathContext);
            return true;
        } catch (XPathException unused) {
            return false;
        }
    }

    /* renamed from: b */
    public final boolean m62650b(SequenceIterator sequenceIterator, XPathContext xPathContext) throws XPathException {
        int i = 0;
        while (true) {
            Item next = sequenceIterator.next();
            if (next == null) {
                return i != 0 || this.allowEmpty;
            }
            if (next instanceof NodeInfo) {
                AtomicSequence atomize = next.atomize();
                int length = SequenceTool.getLength(atomize);
                i += length;
                if (i > 1) {
                    return false;
                }
                if (length != 0 && !m62649a(atomize.head(), xPathContext)) {
                    return false;
                }
            } else {
                if (!(next instanceof AtomicValue)) {
                    throw new XPathException("Input to 'castable' operator cannot be atomized", "XPTY0004");
                }
                AtomicValue atomicValue = (AtomicValue) next;
                i++;
                if (i > 1 || !m62649a(atomicValue, xPathContext)) {
                    return false;
                }
            }
        }
    }

    @Override // net.p110sf.saxon.expr.UnionConstructorFunction, net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        return new SpecificFunctionType(new SequenceType[]{SequenceType.ANY_SEQUENCE}, SequenceType.SINGLE_BOOLEAN);
    }

    @Override // net.p110sf.saxon.expr.UnionConstructorFunction, net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.UnionConstructorFunction, net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(m62650b(sequenceArr[0].iterate(), xPathContext));
    }
}
