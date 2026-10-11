package com.sunia.HTREnginev2;

import java.net.URL;
import onyx.org.apache.commons.io.function.IOSupplier;

/* loaded from: classes11.dex */
public final /* synthetic */ class kig implements IOSupplier {

    /* renamed from: a */
    public final /* synthetic */ URL f75457a;

    public /* synthetic */ kig(URL url) {
        this.f75457a = url;
    }

    @Override // onyx.org.apache.commons.io.function.IOSupplier
    public final Object get() {
        return this.f75457a.openStream();
    }
}
