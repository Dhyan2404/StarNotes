package com.sunia.HTREnginev2;

import java.util.List;
import java.util.function.Consumer;
import org.apache.poi.poifs.filesystem.Entry;

/* loaded from: classes12.dex */
public final /* synthetic */ class z6g implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ List f91470e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f91470e.add((Entry) obj);
    }
}
