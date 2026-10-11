package com.sunia.HTREnginev2;

import java.util.function.Consumer;
import onyx.org.apache.commons.io.function.IOConsumer;

/* loaded from: classes11.dex */
public final /* synthetic */ class esn implements IOConsumer {

    /* renamed from: a */
    public final /* synthetic */ Consumer f69294a;

    public /* synthetic */ esn(Consumer consumer) {
        this.f69294a = consumer;
    }

    @Override // onyx.org.apache.commons.io.function.IOConsumer
    public final void accept(Object obj) {
        this.f69294a.accept(obj);
    }
}
