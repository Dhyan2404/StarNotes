package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.runtime.C4626b;
import com.google.auto.value.AutoValue;

@AutoValue
/* loaded from: classes4.dex */
public abstract class SendRequest {

    @AutoValue.Builder
    /* loaded from: classes4.dex */
    public static abstract class Builder {
        /* renamed from: a */
        public abstract Builder mo17426a(Encoding encoding);

        /* renamed from: b */
        public abstract Builder mo17427b(Event<?> event);

        public abstract SendRequest build();

        /* renamed from: c */
        public abstract Builder mo17428c(Transformer<?, byte[]> transformer);

        public <T> Builder setEvent(Event<T> event, Encoding encoding, Transformer<T, byte[]> transformer) {
            mo17427b(event);
            mo17426a(encoding);
            mo17428c(transformer);
            return this;
        }

        public abstract Builder setTransportContext(TransportContext transportContext);

        public abstract Builder setTransportName(String str);
    }

    /* renamed from: a */
    public static Builder m17419a() {
        return new C4626b.b();
    }

    /* renamed from: b */
    public abstract Encoding mo17420b();

    /* renamed from: c */
    public abstract Event<?> mo17421c();

    /* renamed from: d */
    public byte[] m17422d() {
        return mo17423e().apply(mo17421c().getPayload());
    }

    /* renamed from: e */
    public abstract Transformer<?, byte[]> mo17423e();

    /* renamed from: f */
    public abstract TransportContext mo17424f();

    /* renamed from: g */
    public abstract String mo17425g();
}
