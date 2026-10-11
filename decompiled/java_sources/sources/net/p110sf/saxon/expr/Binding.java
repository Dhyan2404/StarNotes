package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public interface Binding {
    void addReference(VariableReference variableReference, boolean z);

    Sequence evaluateVariable(XPathContext xPathContext) throws XPathException;

    IntegerValue[] getIntegerBoundsForVariable();

    SequenceType getRequiredType();

    StructuredQName getVariableQName();

    boolean isAssignable();

    boolean isGlobal();
}
