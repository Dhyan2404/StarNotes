package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.Multiset;
import java.util.SortedSet;

@snf
@GwtIncompatible
/* loaded from: classes6.dex */
public interface uvm<E> extends Multiset<E> {
    @Override // com.google.common.collect.Multiset
    SortedSet<E> elementSet();
}
