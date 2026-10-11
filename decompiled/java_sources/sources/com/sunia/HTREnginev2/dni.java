package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.etsi.uri.x01903.v13.impl.IntegerListTypeImpl;

/* loaded from: classes13.dex */
public final /* synthetic */ class dni implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ IntegerListTypeImpl f68051e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f68051e.removeInt(((Integer) obj).intValue());
    }
}
