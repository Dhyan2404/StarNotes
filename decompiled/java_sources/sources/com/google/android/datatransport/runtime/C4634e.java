package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.datatransport.runtime.C4634e;
import com.sunia.HTREnginev2.onn;

/* renamed from: com.google.android.datatransport.runtime.e */
/* loaded from: classes4.dex */
public final class C4634e<T> implements Transport<T> {

    /* renamed from: a */
    public final TransportContext f22003a;

    /* renamed from: b */
    public final String f22004b;

    /* renamed from: c */
    public final Encoding f22005c;

    /* renamed from: d */
    public final Transformer<T, byte[]> f22006d;

    /* renamed from: e */
    public final onn f22007e;

    public C4634e(TransportContext transportContext, String str, Encoding encoding, Transformer<T, byte[]> transformer, onn onnVar) {
        this.f22003a = transportContext;
        this.f22004b = str;
        this.f22005c = encoding;
        this.f22006d = transformer;
        this.f22007e = onnVar;
    }

    /* renamed from: c */
    public static /* synthetic */ void m17447c(Exception exc) {
    }

    /* renamed from: b */
    public TransportContext m17448b() {
        return this.f22003a;
    }

    @Override // com.google.android.datatransport.Transport
    public void schedule(Event<T> event, TransportScheduleCallback transportScheduleCallback) {
        this.f22007e.send(SendRequest.m17419a().setTransportContext(this.f22003a).mo17427b(event).setTransportName(this.f22004b).mo17428c(this.f22006d).mo17426a(this.f22005c).build(), transportScheduleCallback);
    }

    @Override // com.google.android.datatransport.Transport
    public void send(Event<T> event) {
        schedule(event, new TransportScheduleCallback() { // from class: com.sunia.HTREnginev2.nnn
            @Override // com.google.android.datatransport.TransportScheduleCallback
            public final void onSchedule(Exception exc) {
                C4634e.m17447c(exc);
            }
        });
    }
}
