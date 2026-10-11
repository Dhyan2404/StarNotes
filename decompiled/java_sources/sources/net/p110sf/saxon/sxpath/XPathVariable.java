package net.p110sf.saxon.sxpath;

import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public final class XPathVariable implements LocalBinding {

    /* renamed from: e */
    public StructuredQName f102166e;

    /* renamed from: f */
    public SequenceType f102167f = SequenceType.ANY_SEQUENCE;

    /* renamed from: g */
    public Sequence f102168g;

    /* renamed from: h */
    public int f102169h;

    public static XPathVariable make(StructuredQName structuredQName) {
        XPathVariable xPathVariable = new XPathVariable();
        xPathVariable.f102166e = structuredQName;
        return xPathVariable;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public void addReference(VariableReference variableReference, boolean z) {
    }

    @Override // net.p110sf.saxon.expr.Binding
    public Sequence evaluateVariable(XPathContext xPathContext) {
        return xPathContext.evaluateLocalVariable(this.f102169h);
    }

    public Sequence getDefaultValue() {
        return this.f102168g;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public IntegerValue[] getIntegerBoundsForVariable() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public int getLocalSlotNumber() {
        return this.f102169h;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public SequenceType getRequiredType() {
        return this.f102167f;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public StructuredQName getVariableQName() {
        return this.f102166e;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public final boolean isAssignable() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public boolean isGlobal() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public boolean isIndexedVariable() {
        return false;
    }

    public void setDefaultValue(Sequence sequence) {
        this.f102168g = sequence;
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public void setIndexedVariable() {
    }

    public void setRequiredType(SequenceType sequenceType) {
        this.f102167f = sequenceType;
    }

    public void setSlotNumber(int i) {
        this.f102169h = i;
    }
}
