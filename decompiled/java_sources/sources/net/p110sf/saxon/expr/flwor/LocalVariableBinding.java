package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class LocalVariableBinding implements LocalBinding {

    /* renamed from: e */
    public StructuredQName f99529e;

    /* renamed from: f */
    public SequenceType f99530f;

    /* renamed from: g */
    public int f99531g = -999;

    /* renamed from: h */
    public int f99532h = 0;

    public LocalVariableBinding(StructuredQName structuredQName, SequenceType sequenceType) {
        this.f99529e = structuredQName;
        this.f99530f = sequenceType;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public void addReference(VariableReference variableReference, boolean z) {
        int i = this.f99532h;
        if (i != 10000) {
            this.f99532h = i + (z ? 10 : 1);
        }
    }

    public LocalVariableBinding copy() {
        LocalVariableBinding localVariableBinding = new LocalVariableBinding(this.f99529e, this.f99530f);
        localVariableBinding.f99531g = this.f99531g;
        localVariableBinding.f99532h = this.f99532h;
        return localVariableBinding;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public Sequence evaluateVariable(XPathContext xPathContext) {
        return xPathContext.evaluateLocalVariable(this.f99531g);
    }

    @Override // net.p110sf.saxon.expr.Binding
    public IntegerValue[] getIntegerBoundsForVariable() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public int getLocalSlotNumber() {
        return this.f99531g;
    }

    public int getNominalReferenceCount() {
        return this.f99532h;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public SequenceType getRequiredType() {
        return this.f99530f;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public StructuredQName getVariableQName() {
        return this.f99529e;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public boolean isAssignable() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public boolean isGlobal() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public boolean isIndexedVariable() {
        return this.f99532h == 10000;
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public void setIndexedVariable() {
        this.f99532h = 10000;
    }

    public void setRequiredType(SequenceType sequenceType) {
        this.f99530f = sequenceType;
    }

    public void setSlotNumber(int i) {
        this.f99531g = i;
    }

    public void setVariableQName(StructuredQName structuredQName) {
        this.f99529e = structuredQName;
    }
}
