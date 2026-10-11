package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.time.Monotonic;
import com.google.android.datatransport.runtime.time.WallTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import javax.inject.Inject;

/* loaded from: classes4.dex */
public class Uploader {

    /* renamed from: j */
    public static final String f22082j = "Uploader";

    /* renamed from: k */
    public static final String f22083k = "GDT_CLIENT_METRICS";

    /* renamed from: a */
    public final Context f22084a;

    /* renamed from: b */
    public final BackendRegistry f22085b;

    /* renamed from: c */
    public final EventStore f22086c;

    /* renamed from: d */
    public final WorkScheduler f22087d;

    /* renamed from: e */
    public final Executor f22088e;

    /* renamed from: f */
    public final SynchronizationGuard f22089f;

    /* renamed from: g */
    public final Clock f22090g;

    /* renamed from: h */
    public final Clock f22091h;

    /* renamed from: i */
    public final ClientHealthMetricsStore f22092i;

    @Inject
    public Uploader(Context context, BackendRegistry backendRegistry, EventStore eventStore, WorkScheduler workScheduler, Executor executor, SynchronizationGuard synchronizationGuard, @WallTime Clock clock, @Monotonic Clock clock2, ClientHealthMetricsStore clientHealthMetricsStore) {
        this.f22084a = context;
        this.f22085b = backendRegistry;
        this.f22086c = eventStore;
        this.f22087d = workScheduler;
        this.f22088e = executor;
        this.f22089f = synchronizationGuard;
        this.f22090g = clock;
        this.f22091h = clock2;
        this.f22092i = clientHealthMetricsStore;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ Boolean m17490k(TransportContext transportContext) {
        return Boolean.valueOf(this.f22086c.hasPendingEventsFor(transportContext));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ Iterable m17491l(TransportContext transportContext) {
        return this.f22086c.loadBatch(transportContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ Object m17492m(Iterable iterable, TransportContext transportContext, long j) {
        this.f22086c.recordFailure(iterable);
        this.f22086c.recordNextCallTime(transportContext, this.f22090g.getTime() + j);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ Object m17493n(Iterable iterable) {
        this.f22086c.recordSuccess(iterable);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ Object m17494o() {
        this.f22092i.resetClientMetrics();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ Object m17495p(Map map) {
        Iterator it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            this.f22092i.recordLogEventDropped(((Integer) r0.getValue()).intValue(), LogEventDropped.Reason.INVALID_PAYLOD, (String) ((Map.Entry) it2.next()).getKey());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ Object m17496q(TransportContext transportContext, long j) {
        this.f22086c.recordNextCallTime(transportContext, this.f22090g.getTime() + j);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ Object m17497r(TransportContext transportContext, int i) {
        this.f22087d.schedule(transportContext, i + 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public /* synthetic */ void m17498s(final TransportContext transportContext, final int i, Runnable runnable) {
        try {
            try {
                SynchronizationGuard synchronizationGuard = this.f22089f;
                final EventStore eventStore = this.f22086c;
                Objects.requireNonNull(eventStore);
                synchronizationGuard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.sunia.HTREnginev2.sxn
                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object execute() {
                        return Integer.valueOf(EventStore.this.cleanUp());
                    }
                });
                if (m17499j()) {
                    logAndUpdateState(transportContext, i);
                } else {
                    this.f22089f.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.sunia.HTREnginev2.txn
                        @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                        public final Object execute() {
                            Object m17497r;
                            m17497r = Uploader.this.m17497r(transportContext, i);
                            return m17497r;
                        }
                    });
                }
            } catch (SynchronizationException unused) {
                this.f22087d.schedule(transportContext, i + 1);
            }
        } finally {
            runnable.run();
        }
    }

    @VisibleForTesting
    public EventInternal createMetricsEvent(TransportBackend transportBackend) {
        SynchronizationGuard synchronizationGuard = this.f22089f;
        final ClientHealthMetricsStore clientHealthMetricsStore = this.f22092i;
        Objects.requireNonNull(clientHealthMetricsStore);
        return transportBackend.decorate(EventInternal.builder().setEventMillis(this.f22090g.getTime()).setUptimeMillis(this.f22091h.getTime()).setTransportName(f22083k).setEncodedPayload(new EncodedPayload(Encoding.m17394of("proto"), ((ClientMetrics) synchronizationGuard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.sunia.HTREnginev2.pxn
            @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
            public final Object execute() {
                return ClientHealthMetricsStore.this.loadClientMetrics();
            }
        })).toByteArray())).build());
    }

    /* renamed from: j */
    public boolean m17499j() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f22084a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public BackendResponse logAndUpdateState(final TransportContext transportContext, int i) {
        BackendResponse send;
        TransportBackend transportBackend = this.f22085b.get(transportContext.getBackendName());
        long j = 0;
        BackendResponse m17433ok = BackendResponse.m17433ok(0L);
        while (true) {
            final long j2 = j;
            while (((Boolean) this.f22089f.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.sunia.HTREnginev2.uxn
                @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                public final Object execute() {
                    Boolean m17490k;
                    m17490k = Uploader.this.m17490k(transportContext);
                    return m17490k;
                }
            })).booleanValue()) {
                final Iterable iterable = (Iterable) this.f22089f.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.sunia.HTREnginev2.vxn
                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object execute() {
                        Iterable m17491l;
                        m17491l = Uploader.this.m17491l(transportContext);
                        return m17491l;
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return m17433ok;
                }
                if (transportBackend == null) {
                    Logging.m17452d(f22082j, "Unknown backend for %s, deleting event batch for it...", transportContext);
                    send = BackendResponse.fatalError();
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(((PersistedEvent) it2.next()).getEvent());
                    }
                    if (transportContext.shouldUploadClientHealthMetrics()) {
                        arrayList.add(createMetricsEvent(transportBackend));
                    }
                    send = transportBackend.send(BackendRequest.builder().setEvents(arrayList).setExtras(transportContext.getExtras()).build());
                }
                m17433ok = send;
                if (m17433ok.getStatus() == BackendResponse.Status.TRANSIENT_ERROR) {
                    this.f22089f.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.sunia.HTREnginev2.wxn
                        @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                        public final Object execute() {
                            Object m17492m;
                            m17492m = Uploader.this.m17492m(iterable, transportContext, j2);
                            return m17492m;
                        }
                    });
                    this.f22087d.schedule(transportContext, i + 1, true);
                    return m17433ok;
                }
                this.f22089f.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.sunia.HTREnginev2.xxn
                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object execute() {
                        Object m17493n;
                        m17493n = Uploader.this.m17493n(iterable);
                        return m17493n;
                    }
                });
                if (m17433ok.getStatus() == BackendResponse.Status.OK) {
                    j = Math.max(j2, m17433ok.getNextRequestWaitMillis());
                    if (transportContext.shouldUploadClientHealthMetrics()) {
                        this.f22089f.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.sunia.HTREnginev2.yxn
                            @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                            public final Object execute() {
                                Object m17494o;
                                m17494o = Uploader.this.m17494o();
                                return m17494o;
                            }
                        });
                    }
                } else if (m17433ok.getStatus() == BackendResponse.Status.INVALID_PAYLOAD) {
                    final HashMap hashMap = new HashMap();
                    Iterator it3 = iterable.iterator();
                    while (it3.hasNext()) {
                        String transportName = ((PersistedEvent) it3.next()).getEvent().getTransportName();
                        if (hashMap.containsKey(transportName)) {
                            hashMap.put(transportName, Integer.valueOf(((Integer) hashMap.get(transportName)).intValue() + 1));
                        } else {
                            hashMap.put(transportName, 1);
                        }
                    }
                    this.f22089f.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.sunia.HTREnginev2.zxn
                        @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                        public final Object execute() {
                            Object m17495p;
                            m17495p = Uploader.this.m17495p(hashMap);
                            return m17495p;
                        }
                    });
                }
            }
            this.f22089f.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.sunia.HTREnginev2.qxn
                @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                public final Object execute() {
                    Object m17496q;
                    m17496q = Uploader.this.m17496q(transportContext, j2);
                    return m17496q;
                }
            });
            return m17433ok;
        }
    }

    public void upload(final TransportContext transportContext, final int i, final Runnable runnable) {
        this.f22088e.execute(new Runnable() { // from class: com.sunia.HTREnginev2.rxn
            @Override // java.lang.Runnable
            public final void run() {
                Uploader.this.m17498s(transportContext, i, runnable);
            }
        });
    }
}
