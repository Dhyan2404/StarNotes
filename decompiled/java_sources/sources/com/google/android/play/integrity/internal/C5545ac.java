package com.google.android.play.integrity.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.sunia.HTREnginev2.q8p;
import com.sunia.HTREnginev2.r8p;
import com.sunia.HTREnginev2.zxo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.google.android.play.integrity.internal.ac */
/* loaded from: classes6.dex */
public final class C5545ac {

    /* renamed from: o */
    public static final Map f33460o = new HashMap();

    /* renamed from: a */
    public final Context f33461a;

    /* renamed from: b */
    public final C5569q f33462b;

    /* renamed from: c */
    public final String f33463c;

    /* renamed from: g */
    public boolean f33467g;

    /* renamed from: h */
    public final Intent f33468h;

    /* renamed from: i */
    public final InterfaceC5574x f33469i;

    /* renamed from: m */
    @Nullable
    public ServiceConnection f33473m;

    /* renamed from: n */
    @Nullable
    public IInterface f33474n;

    /* renamed from: d */
    public final List f33464d = new ArrayList();

    /* renamed from: e */
    @GuardedBy("attachedRemoteTasksLock")
    public final Set f33465e = new HashSet();

    /* renamed from: f */
    public final Object f33466f = new Object();

    /* renamed from: k */
    public final IBinder.DeathRecipient f33471k = new IBinder.DeathRecipient() { // from class: com.google.android.play.integrity.internal.t
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            C5545ac.m25709k(C5545ac.this);
        }
    };

    /* renamed from: l */
    @GuardedBy("attachedRemoteTasksLock")
    public final AtomicInteger f33472l = new AtomicInteger(0);

    /* renamed from: j */
    public final WeakReference f33470j = new WeakReference(null);

    public C5545ac(Context context, C5569q c5569q, String str, Intent intent, InterfaceC5574x interfaceC5574x, @Nullable InterfaceC5573w interfaceC5573w) {
        this.f33461a = context;
        this.f33462b = c5569q;
        this.f33463c = str;
        this.f33468h = intent;
        this.f33469i = interfaceC5574x;
    }

    /* renamed from: k */
    public static /* synthetic */ void m25709k(C5545ac c5545ac) {
        c5545ac.f33462b.m25748c("reportBinderDeath", new Object[0]);
        InterfaceC5573w interfaceC5573w = (InterfaceC5573w) c5545ac.f33470j.get();
        if (interfaceC5573w != null) {
            c5545ac.f33462b.m25748c("calling onBinderDied", new Object[0]);
            interfaceC5573w.m25751a();
        } else {
            c5545ac.f33462b.m25748c("%s : Binder has died.", c5545ac.f33463c);
            Iterator it2 = c5545ac.f33464d.iterator();
            while (it2.hasNext()) {
                ((AbstractRunnableC5570r) it2.next()).mo25663a(c5545ac.m25723w());
            }
            c5545ac.f33464d.clear();
        }
        synchronized (c5545ac.f33466f) {
            c5545ac.m25724x();
        }
    }

    /* renamed from: o */
    public static /* bridge */ /* synthetic */ void m25713o(final C5545ac c5545ac, final TaskCompletionSource taskCompletionSource) {
        c5545ac.f33465e.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.integrity.internal.s
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                C5545ac.this.m25721u(taskCompletionSource, task);
            }
        });
    }

    /* renamed from: q */
    public static /* bridge */ /* synthetic */ void m25715q(C5545ac c5545ac, AbstractRunnableC5570r abstractRunnableC5570r) {
        if (c5545ac.f33474n != null || c5545ac.f33467g) {
            if (!c5545ac.f33467g) {
                abstractRunnableC5570r.run();
                return;
            } else {
                c5545ac.f33462b.m25748c("Waiting to bind to the service.", new Object[0]);
                c5545ac.f33464d.add(abstractRunnableC5570r);
                return;
            }
        }
        c5545ac.f33462b.m25748c("Initiate binding to the service.", new Object[0]);
        c5545ac.f33464d.add(abstractRunnableC5570r);
        zxo zxoVar = new zxo(c5545ac, null);
        c5545ac.f33473m = zxoVar;
        c5545ac.f33467g = true;
        if (c5545ac.f33461a.bindService(c5545ac.f33468h, zxoVar, 1)) {
            return;
        }
        c5545ac.f33462b.m25748c("Failed to bind to the service.", new Object[0]);
        c5545ac.f33467g = false;
        Iterator it2 = c5545ac.f33464d.iterator();
        while (it2.hasNext()) {
            ((AbstractRunnableC5570r) it2.next()).mo25663a(new C5546ad());
        }
        c5545ac.f33464d.clear();
    }

    /* renamed from: r */
    public static /* bridge */ /* synthetic */ void m25716r(C5545ac c5545ac) {
        c5545ac.f33462b.m25748c("linkToDeath", new Object[0]);
        try {
            c5545ac.f33474n.asBinder().linkToDeath(c5545ac.f33471k, 0);
        } catch (RemoteException e) {
            c5545ac.f33462b.m25747b(e, "linkToDeath failed", new Object[0]);
        }
    }

    /* renamed from: s */
    public static /* bridge */ /* synthetic */ void m25717s(C5545ac c5545ac) {
        c5545ac.f33462b.m25748c("unlinkToDeath", new Object[0]);
        c5545ac.f33474n.asBinder().unlinkToDeath(c5545ac.f33471k, 0);
    }

    /* renamed from: c */
    public final Handler m25718c() {
        Handler handler;
        Map map = f33460o;
        synchronized (map) {
            if (!map.containsKey(this.f33463c)) {
                HandlerThread handlerThread = new HandlerThread(this.f33463c, 10);
                handlerThread.start();
                map.put(this.f33463c, new Handler(handlerThread.getLooper()));
            }
            handler = (Handler) map.get(this.f33463c);
        }
        return handler;
    }

    @Nullable
    /* renamed from: e */
    public final IInterface m25719e() {
        return this.f33474n;
    }

    /* renamed from: t */
    public final void m25720t(AbstractRunnableC5570r abstractRunnableC5570r, @Nullable TaskCompletionSource taskCompletionSource) {
        m25718c().post(new q8p(this, abstractRunnableC5570r.m25750c(), taskCompletionSource, abstractRunnableC5570r));
    }

    /* renamed from: u */
    public final /* synthetic */ void m25721u(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.f33466f) {
            this.f33465e.remove(taskCompletionSource);
        }
    }

    /* renamed from: v */
    public final void m25722v(TaskCompletionSource taskCompletionSource) {
        synchronized (this.f33466f) {
            this.f33465e.remove(taskCompletionSource);
        }
        m25718c().post(new r8p(this));
    }

    /* renamed from: w */
    public final RemoteException m25723w() {
        return new RemoteException(String.valueOf(this.f33463c).concat(" : Binder has died."));
    }

    @GuardedBy("attachedRemoteTasksLock")
    /* renamed from: x */
    public final void m25724x() {
        Iterator it2 = this.f33465e.iterator();
        while (it2.hasNext()) {
            ((TaskCompletionSource) it2.next()).trySetException(m25723w());
        }
        this.f33465e.clear();
    }
}
