package com.google.android.datatransport.runtime.backends;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import java.util.Arrays;

/* renamed from: com.google.android.datatransport.runtime.backends.a */
/* loaded from: classes4.dex */
public final class C4627a extends BackendRequest {

    /* renamed from: a */
    public final Iterable<EventInternal> f21951a;

    /* renamed from: b */
    public final byte[] f21952b;

    /* renamed from: com.google.android.datatransport.runtime.backends.a$b */
    /* loaded from: classes4.dex */
    public static final class b extends BackendRequest.Builder {

        /* renamed from: a */
        public Iterable<EventInternal> f21953a;

        /* renamed from: b */
        public byte[] f21954b;

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public BackendRequest build() {
            String str = "";
            if (this.f21953a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new C4627a(this.f21953a, this.f21954b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public BackendRequest.Builder setEvents(Iterable<EventInternal> iterable) {
            if (iterable == null) {
                throw new NullPointerException("Null events");
            }
            this.f21953a = iterable;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public BackendRequest.Builder setExtras(@Nullable byte[] bArr) {
            this.f21954b = bArr;
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackendRequest)) {
            return false;
        }
        BackendRequest backendRequest = (BackendRequest) obj;
        if (this.f21951a.equals(backendRequest.getEvents())) {
            if (Arrays.equals(this.f21952b, backendRequest instanceof C4627a ? ((C4627a) backendRequest).f21952b : backendRequest.getExtras())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    public Iterable<EventInternal> getEvents() {
        return this.f21951a;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    @Nullable
    public byte[] getExtras() {
        return this.f21952b;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f21952b) ^ ((this.f21951a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f21951a + ", extras=" + Arrays.toString(this.f21952b) + "}";
    }

    public C4627a(Iterable<EventInternal> iterable, @Nullable byte[] bArr) {
        this.f21951a = iterable;
        this.f21952b = bArr;
    }
}
