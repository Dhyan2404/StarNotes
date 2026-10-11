package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.runtime.SendRequest;

/* renamed from: com.google.android.datatransport.runtime.b */
/* loaded from: classes4.dex */
public final class C4626b extends SendRequest {

    /* renamed from: a */
    public final TransportContext f21934a;

    /* renamed from: b */
    public final String f21935b;

    /* renamed from: c */
    public final Event<?> f21936c;

    /* renamed from: d */
    public final Transformer<?, byte[]> f21937d;

    /* renamed from: e */
    public final Encoding f21938e;

    /* renamed from: com.google.android.datatransport.runtime.b$b */
    /* loaded from: classes4.dex */
    public static final class b extends SendRequest.Builder {

        /* renamed from: a */
        public TransportContext f21939a;

        /* renamed from: b */
        public String f21940b;

        /* renamed from: c */
        public Event<?> f21941c;

        /* renamed from: d */
        public Transformer<?, byte[]> f21942d;

        /* renamed from: e */
        public Encoding f21943e;

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        /* renamed from: a */
        public SendRequest.Builder mo17426a(Encoding encoding) {
            if (encoding == null) {
                throw new NullPointerException("Null encoding");
            }
            this.f21943e = encoding;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        /* renamed from: b */
        public SendRequest.Builder mo17427b(Event<?> event) {
            if (event == null) {
                throw new NullPointerException("Null event");
            }
            this.f21941c = event;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest build() {
            String str = "";
            if (this.f21939a == null) {
                str = " transportContext";
            }
            if (this.f21940b == null) {
                str = str + " transportName";
            }
            if (this.f21941c == null) {
                str = str + " event";
            }
            if (this.f21942d == null) {
                str = str + " transformer";
            }
            if (this.f21943e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new C4626b(this.f21939a, this.f21940b, this.f21941c, this.f21942d, this.f21943e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        /* renamed from: c */
        public SendRequest.Builder mo17428c(Transformer<?, byte[]> transformer) {
            if (transformer == null) {
                throw new NullPointerException("Null transformer");
            }
            this.f21942d = transformer;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest.Builder setTransportContext(TransportContext transportContext) {
            if (transportContext == null) {
                throw new NullPointerException("Null transportContext");
            }
            this.f21939a = transportContext;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.SendRequest.Builder
        public SendRequest.Builder setTransportName(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.f21940b = str;
            return this;
        }
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    /* renamed from: b */
    public Encoding mo17420b() {
        return this.f21938e;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    /* renamed from: c */
    public Event<?> mo17421c() {
        return this.f21936c;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    /* renamed from: e */
    public Transformer<?, byte[]> mo17423e() {
        return this.f21937d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SendRequest)) {
            return false;
        }
        SendRequest sendRequest = (SendRequest) obj;
        return this.f21934a.equals(sendRequest.mo17424f()) && this.f21935b.equals(sendRequest.mo17425g()) && this.f21936c.equals(sendRequest.mo17421c()) && this.f21937d.equals(sendRequest.mo17423e()) && this.f21938e.equals(sendRequest.mo17420b());
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    /* renamed from: f */
    public TransportContext mo17424f() {
        return this.f21934a;
    }

    @Override // com.google.android.datatransport.runtime.SendRequest
    /* renamed from: g */
    public String mo17425g() {
        return this.f21935b;
    }

    public int hashCode() {
        return this.f21938e.hashCode() ^ ((((((((this.f21934a.hashCode() ^ 1000003) * 1000003) ^ this.f21935b.hashCode()) * 1000003) ^ this.f21936c.hashCode()) * 1000003) ^ this.f21937d.hashCode()) * 1000003);
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f21934a + ", transportName=" + this.f21935b + ", event=" + this.f21936c + ", transformer=" + this.f21937d + ", encoding=" + this.f21938e + "}";
    }

    public C4626b(TransportContext transportContext, String str, Event<?> event, Transformer<?, byte[]> transformer, Encoding encoding) {
        this.f21934a = transportContext;
        this.f21935b = str;
        this.f21936c = event;
        this.f21937d = transformer;
        this.f21938e = encoding;
    }
}
