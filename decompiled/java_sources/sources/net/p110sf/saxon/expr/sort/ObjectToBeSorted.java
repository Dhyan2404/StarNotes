package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class ObjectToBeSorted {
    public int originalPosition;
    public AtomicValue[] sortKeyValues;
    public Item value;

    public ObjectToBeSorted(int i) {
        this.sortKeyValues = new AtomicValue[i];
    }
}
