package com.sunia.HTREnginev2;

import com.couchbase.lite.Collection;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;

/* loaded from: classes4.dex */
public final /* synthetic */ class k0e implements InterfaceC2217Fn.Consumer {

    /* renamed from: a */
    public final /* synthetic */ Collection f74877a;

    public /* synthetic */ k0e(Collection collection) {
        this.f74877a = collection;
    }

    @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
    public final void accept(Object obj) {
        Collection.m9741h0(this.f74877a, (Runnable) obj);
    }
}
