package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.snf;

/* JADX INFO: Access modifiers changed from: package-private */
@snf
@GwtCompatible(serializable = true)
/* loaded from: classes6.dex */
public class EmptyImmutableListMultimap extends ImmutableListMultimap<Object, Object> {
    static final EmptyImmutableListMultimap INSTANCE = new EmptyImmutableListMultimap();
    private static final long serialVersionUID = 0;

    private EmptyImmutableListMultimap() {
        super(ImmutableMap.m26185of(), 0);
    }

    private Object readResolve() {
        return INSTANCE;
    }
}
