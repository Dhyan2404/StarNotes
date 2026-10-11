package com.google.android.datatransport.runtime;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.datatransport.runtime.scheduling.Scheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.time.Monotonic;
import com.google.android.datatransport.runtime.time.WallTime;
import com.sunia.HTREnginev2.mnn;
import com.sunia.HTREnginev2.onn;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Callable;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
/* loaded from: classes4.dex */
public class TransportRuntime implements onn {

    /* renamed from: e */
    public static volatile AbstractC4635f f21912e;

    /* renamed from: a */
    public final Clock f21913a;

    /* renamed from: b */
    public final Clock f21914b;

    /* renamed from: c */
    public final Scheduler f21915c;

    /* renamed from: d */
    public final Uploader f21916d;

    @Inject
    public TransportRuntime(@WallTime Clock clock, @Monotonic Clock clock2, Scheduler scheduler, Uploader uploader, WorkInitializer workInitializer) {
        this.f21913a = clock;
        this.f21914b = clock2;
        this.f21915c = scheduler;
        this.f21916d = uploader;
        workInitializer.ensureContextsScheduled();
    }

    /* renamed from: b */
    public static Set<Encoding> m17429b(Destination destination) {
        return destination instanceof EncodedDestination ? Collections.unmodifiableSet(((EncodedDestination) destination).getSupportedEncodings()) : Collections.singleton(Encoding.m17394of("proto"));
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    /* renamed from: c */
    public static void m17430c(AbstractC4635f abstractC4635f, Callable<Void> callable) throws Throwable {
        AbstractC4635f abstractC4635f2;
        synchronized (TransportRuntime.class) {
            abstractC4635f2 = f21912e;
            f21912e = abstractC4635f;
        }
        try {
            callable.call();
            synchronized (TransportRuntime.class) {
                f21912e = abstractC4635f2;
            }
        } catch (Throwable th) {
            synchronized (TransportRuntime.class) {
                f21912e = abstractC4635f2;
                throw th;
            }
        }
    }

    public static TransportRuntime getInstance() {
        AbstractC4635f abstractC4635f = f21912e;
        if (abstractC4635f != null) {
            return abstractC4635f.mo17437j();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static void initialize(Context context) {
        if (f21912e == null) {
            synchronized (TransportRuntime.class) {
                if (f21912e == null) {
                    f21912e = C4630d.m17434w().mo17438a(context).build();
                }
            }
        }
    }

    /* renamed from: a */
    public final EventInternal m17431a(SendRequest sendRequest) {
        return EventInternal.builder().setEventMillis(this.f21913a.getTime()).setUptimeMillis(this.f21914b.getTime()).setTransportName(sendRequest.mo17425g()).setEncodedPayload(new EncodedPayload(sendRequest.mo17420b(), sendRequest.m17422d())).setCode(sendRequest.mo17421c().getCode()).build();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Uploader getUploader() {
        return this.f21916d;
    }

    @Deprecated
    public TransportFactory newFactory(String str) {
        return new mnn(m17429b(null), TransportContext.builder().setBackendName(str).build(), this);
    }

    @Override // com.sunia.HTREnginev2.onn
    public void send(SendRequest sendRequest, TransportScheduleCallback transportScheduleCallback) {
        this.f21915c.schedule(sendRequest.mo17424f().withPriority(sendRequest.mo17421c().getPriority()), m17431a(sendRequest), transportScheduleCallback);
    }

    public TransportFactory newFactory(Destination destination) {
        return new mnn(m17429b(destination), TransportContext.builder().setBackendName(destination.getName()).setExtras(destination.getExtras()).build(), this);
    }
}
