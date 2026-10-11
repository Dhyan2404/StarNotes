package com.sunia.HTREnginev2;

import java.util.List;
import java.util.function.Consumer;
import org.apache.poi.ddf.EscherRecord;

/* loaded from: classes12.dex */
public final /* synthetic */ class qtf implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ List f82411e;

    public /* synthetic */ qtf(List list) {
        this.f82411e = list;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f82411e.add((EscherRecord) obj);
    }
}
