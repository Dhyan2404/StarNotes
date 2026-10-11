package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public interface BindingReference {
    void fixup(Binding binding);

    void setStaticType(SequenceType sequenceType, GroundedValue groundedValue, int i);
}
