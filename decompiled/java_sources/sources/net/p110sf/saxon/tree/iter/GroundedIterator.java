package net.p110sf.saxon.tree.iter;

import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public interface GroundedIterator extends SequenceIterator {
    GroundedValue getResidue();

    boolean isActuallyGrounded();

    default GroundedValue materialize() {
        return SequenceExtent.from(this).reduce();
    }
}
