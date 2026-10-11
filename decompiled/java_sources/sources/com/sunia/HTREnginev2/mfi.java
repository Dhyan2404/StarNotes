package com.sunia.HTREnginev2;

import java.io.Closeable;
import java.util.function.Consumer;
import onyx.org.apache.commons.io.IOUtils;

/* loaded from: classes11.dex */
public final /* synthetic */ class mfi implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        IOUtils.closeQuietly((Closeable) obj);
    }
}
