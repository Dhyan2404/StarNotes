package com.sunia.HTREnginev2;

import java.util.Collections;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final /* synthetic */ class o8k implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Collections.unmodifiableSet((Set) obj);
    }
}
