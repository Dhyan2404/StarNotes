package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.snf;

/* JADX INFO: Access modifiers changed from: package-private */
@snf
@GwtCompatible(serializable = true)
/* loaded from: classes6.dex */
public class EmptyImmutableSetMultimap extends ImmutableSetMultimap<Object, Object> {
    static final EmptyImmutableSetMultimap INSTANCE = new EmptyImmutableSetMultimap();
    private static final long serialVersionUID = 0;

    private EmptyImmutableSetMultimap() {
        super(ImmutableMap.m26185of(), 0, null);
    }

    private Object readResolve() {
        return INSTANCE;
    }
}
