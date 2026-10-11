package com.google.android.datatransport.runtime;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.TransportContext;
import java.util.Arrays;

/* renamed from: com.google.android.datatransport.runtime.c */
/* loaded from: classes4.dex */
public final class C4629c extends TransportContext {

    /* renamed from: a */
    public final String f21957a;

    /* renamed from: b */
    public final byte[] f21958b;

    /* renamed from: c */
    public final Priority f21959c;

    /* renamed from: com.google.android.datatransport.runtime.c$b */
    /* loaded from: classes4.dex */
    public static final class b extends TransportContext.Builder {

        /* renamed from: a */
        public String f21960a;

        /* renamed from: b */
        public byte[] f21961b;

        /* renamed from: c */
        public Priority f21962c;

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public TransportContext build() {
            String str = "";
            if (this.f21960a == null) {
                str = " backendName";
            }
            if (this.f21962c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new C4629c(this.f21960a, this.f21961b, this.f21962c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public TransportContext.Builder setBackendName(String str) {
            if (str == null) {
                throw new NullPointerException("Null backendName");
            }
            this.f21960a = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public TransportContext.Builder setExtras(@Nullable byte[] bArr) {
            this.f21961b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public TransportContext.Builder setPriority(Priority priority) {
            if (priority == null) {
                throw new NullPointerException("Null priority");
            }
            this.f21962c = priority;
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TransportContext)) {
            return false;
        }
        TransportContext transportContext = (TransportContext) obj;
        if (this.f21957a.equals(transportContext.getBackendName())) {
            if (Arrays.equals(this.f21958b, transportContext instanceof C4629c ? ((C4629c) transportContext).f21958b : transportContext.getExtras()) && this.f21959c.equals(transportContext.getPriority())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public String getBackendName() {
        return this.f21957a;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    @Nullable
    public byte[] getExtras() {
        return this.f21958b;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Priority getPriority() {
        return this.f21959c;
    }

    public int hashCode() {
        return this.f21959c.hashCode() ^ ((((this.f21957a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f21958b)) * 1000003);
    }

    public C4629c(String str, @Nullable byte[] bArr, Priority priority) {
        this.f21957a = str;
        this.f21958b = bArr;
        this.f21959c = priority;
    }
}
