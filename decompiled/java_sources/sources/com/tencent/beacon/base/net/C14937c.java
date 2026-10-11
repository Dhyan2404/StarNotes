package com.tencent.beacon.base.net;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.beacon.base.net.adapter.AbstractNetAdapter;
import com.tencent.beacon.base.net.adapter.C14912b;
import com.tencent.beacon.base.net.adapter.C14918h;
import com.tencent.beacon.base.net.call.C14942c;
import com.tencent.beacon.base.net.call.C14948i;
import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.net.call.HttpRequestEntity;
import com.tencent.beacon.base.net.call.JceRequestEntity;
import com.tencent.beacon.base.net.p065a.C14906a;
import com.tencent.beacon.base.net.p065a.C14907b;
import com.tencent.beacon.base.net.p066b.RunnableC14936e;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p073d.C14969b;
import java.io.Closeable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.tencent.beacon.base.net.c */
/* loaded from: classes10.dex */
public final class C14937c implements InterfaceC14951e, RunnableC14936e.a, Closeable {

    /* renamed from: a */
    private static volatile C14937c f92862a;

    /* renamed from: b */
    private final AtomicBoolean f92863b = new AtomicBoolean(false);

    /* renamed from: c */
    private final AtomicInteger f92864c = new AtomicInteger();

    /* renamed from: d */
    private final AtomicInteger f92865d = new AtomicInteger();

    /* renamed from: e */
    public C14906a f92866e;

    /* renamed from: f */
    public C14907b f92867f;

    /* renamed from: g */
    private Context f92868g;

    /* renamed from: h */
    private AbstractNetAdapter f92869h;

    /* renamed from: i */
    private AbstractNetAdapter f92870i;

    private C14937c() {
    }

    /* renamed from: d */
    public static synchronized C14937c m59312d() {
        C14937c c14937c;
        synchronized (C14937c.class) {
            if (f92862a == null) {
                f92862a = new C14937c();
            }
            c14937c = f92862a;
        }
        return c14937c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m59313h() {
        C14954c.m59391a("[BeaconNet]", "current net connected num: %d", Integer.valueOf(this.f92864c.decrementAndGet()));
    }

    /* renamed from: i */
    private void m59314i() {
        C14954c.m59391a("[BeaconNet]", "current net connected num: %d", Integer.valueOf(this.f92864c.incrementAndGet()));
    }

    /* renamed from: b */
    public C14948i m59322b(JceRequestEntity jceRequestEntity) {
        return new C14948i(jceRequestEntity);
    }

    /* renamed from: c */
    public int m59323c() {
        C14954c.m59391a("[BeaconNet]", "get current net failure num: %d", Integer.valueOf(this.f92865d.get()));
        return this.f92865d.get();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f92863b.set(true);
        C14954c.m59391a("[BeaconNet]", "network can't use. close BeaconNet.", new Object[0]);
    }

    /* renamed from: e */
    public void m59324e() {
        C14954c.m59391a("[BeaconNet]", "increase current net failure num: %d", Integer.valueOf(this.f92865d.incrementAndGet()));
    }

    /* renamed from: f */
    public boolean m59325f() {
        return this.f92864c.get() >= 5;
    }

    /* renamed from: g */
    public void m59326g() {
        this.f92863b.set(false);
    }

    /* renamed from: a */
    public void m59318a(Context context, AbstractNetAdapter abstractNetAdapter) {
        this.f92868g = context;
        if (abstractNetAdapter == null) {
            abstractNetAdapter = new C14912b();
        }
        this.f92869h = C14918h.m59137a();
        this.f92870i = abstractNetAdapter;
        this.f92866e = C14906a.m59117a();
        this.f92867f = C14907b.m59125a();
        RunnableC14936e.m59309a(context, this);
    }

    @Override // com.tencent.beacon.base.net.p066b.RunnableC14936e.a
    /* renamed from: b */
    public void mo59021b() {
        this.f92863b.set(true);
        C14954c.m59391a("[BeaconNet]", "network can't use. close BeaconNet.", new Object[0]);
    }

    /* renamed from: a */
    public void m59320a(JceRequestEntity jceRequestEntity, Callback<byte[]> callback) {
        if (this.f92863b.get()) {
            callback.onFailure(new C14950d(jceRequestEntity.getType().name(), null, 0, "BeaconNet close."));
            return;
        }
        AbstractNetAdapter m59315a = m59315a(jceRequestEntity);
        m59314i();
        m59315a.request(jceRequestEntity, new C14905a(this, jceRequestEntity, m59315a == this.f92869h, callback));
    }

    /* renamed from: a */
    public void m59317a(int i) {
        this.f92865d.set(i);
    }

    /* renamed from: a */
    public void m59319a(HttpRequestEntity httpRequestEntity, Callback<BResponse> callback) {
        if (this.f92863b.get()) {
            callback.onFailure(new C14950d(httpRequestEntity.tag(), null, 0, "BeaconNet close."));
        } else {
            m59314i();
            this.f92870i.request(httpRequestEntity, new C14919b(this, httpRequestEntity, callback));
        }
    }

    /* renamed from: a */
    public C14942c m59316a(HttpRequestEntity httpRequestEntity) {
        return new C14942c(httpRequestEntity);
    }

    @NonNull
    /* renamed from: a */
    public AbstractNetAdapter m59315a(JceRequestEntity jceRequestEntity) {
        if (jceRequestEntity.getType() == RequestType.EVENT) {
            return C14969b.m59444b().m59489w() ? this.f92869h : this.f92870i;
        }
        return this.f92869h;
    }

    /* renamed from: a */
    public void m59321a(@NonNull C14950d c14950d) {
        if (c14950d.f92902a.equals("atta") || TextUtils.isEmpty(c14950d.f92903b)) {
            return;
        }
        C14882j.m58961e().m58954a(c14950d.f92903b, c14950d.toString(), c14950d.f92906e);
    }

    @Override // com.tencent.beacon.base.net.p066b.RunnableC14936e.a
    /* renamed from: a */
    public void mo59020a() {
        this.f92863b.set(false);
        C14954c.m59391a("[BeaconNet]", "network recovery. open BeaconNet.", new Object[0]);
    }
}
