package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.value.ObjectValue;

/* loaded from: classes11.dex */
public class Tuple extends ObjectValue<Sequence[]> {
    public Tuple(Sequence[] sequenceArr) {
        super(sequenceArr);
    }

    public Sequence[] getMembers() {
        return getObject();
    }
}
