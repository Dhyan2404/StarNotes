package net.p110sf.saxon.ma.map;

import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class KeyValuePair {
    public AtomicValue key;
    public GroundedValue value;

    public KeyValuePair(AtomicValue atomicValue, GroundedValue groundedValue) {
        this.key = atomicValue;
        this.value = groundedValue;
    }
}
