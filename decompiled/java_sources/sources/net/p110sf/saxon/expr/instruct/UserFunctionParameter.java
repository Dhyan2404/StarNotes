package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.VariableReference;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.FunctionStreamability;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class UserFunctionParameter implements LocalBinding {

    /* renamed from: e */
    public SequenceType f99855e;

    /* renamed from: f */
    public StructuredQName f99856f;

    /* renamed from: g */
    public int f99857g;

    /* renamed from: h */
    public final int f99858h = 999;

    /* renamed from: i */
    public boolean f99859i = false;

    /* renamed from: j */
    public FunctionStreamability f99860j = FunctionStreamability.UNCLASSIFIED;

    @Override // net.p110sf.saxon.expr.Binding
    public void addReference(VariableReference variableReference, boolean z) {
    }

    @Override // net.p110sf.saxon.expr.Binding
    public Sequence evaluateVariable(XPathContext xPathContext) {
        return xPathContext.evaluateLocalVariable(this.f99857g);
    }

    public FunctionStreamability getFunctionStreamability() {
        return this.f99860j;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public IntegerValue[] getIntegerBoundsForVariable() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public int getLocalSlotNumber() {
        return this.f99857g;
    }

    public int getReferenceCount() {
        return 999;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public SequenceType getRequiredType() {
        return this.f99855e;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public StructuredQName getVariableQName() {
        return this.f99856f;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public final boolean isAssignable() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Binding
    public final boolean isGlobal() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public boolean isIndexedVariable() {
        return this.f99859i;
    }

    public void setFunctionStreamability(FunctionStreamability functionStreamability) {
        this.f99860j = functionStreamability;
    }

    public void setIndexedVariable(boolean z) {
        this.f99859i = z;
    }

    public void setRequiredType(SequenceType sequenceType) {
        this.f99855e = sequenceType;
    }

    public void setSlotNumber(int i) {
        this.f99857g = i;
    }

    public void setVariableQName(StructuredQName structuredQName) {
        this.f99856f = structuredQName;
    }

    @Override // net.p110sf.saxon.expr.LocalBinding
    public void setIndexedVariable() {
        setIndexedVariable(true);
    }
}
