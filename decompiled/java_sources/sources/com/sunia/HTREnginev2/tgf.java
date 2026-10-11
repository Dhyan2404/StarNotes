package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import org.apache.xmlbeans.impl.p119xb.xsdownload.impl.DownloadedSchemaEntryImpl;

/* loaded from: classes13.dex */
public final /* synthetic */ class tgf implements Consumer {

    /* renamed from: e */
    public final /* synthetic */ DownloadedSchemaEntryImpl f85290e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f85290e.removeSchemaLocation(((Integer) obj).intValue());
    }
}
