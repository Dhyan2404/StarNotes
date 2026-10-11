package com.google.android.datatransport.runtime;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.EventInternal;
import java.util.Map;

/* renamed from: com.google.android.datatransport.runtime.a */
/* loaded from: classes4.dex */
public final class C4625a extends EventInternal {

    /* renamed from: a */
    public final String f21922a;

    /* renamed from: b */
    public final Integer f21923b;

    /* renamed from: c */
    public final EncodedPayload f21924c;

    /* renamed from: d */
    public final long f21925d;

    /* renamed from: e */
    public final long f21926e;

    /* renamed from: f */
    public final Map<String, String> f21927f;

    /* renamed from: com.google.android.datatransport.runtime.a$b */
    /* loaded from: classes4.dex */
    public static final class b extends EventInternal.Builder {

        /* renamed from: a */
        public String f21928a;

        /* renamed from: b */
        public Integer f21929b;

        /* renamed from: c */
        public EncodedPayload f21930c;

        /* renamed from: d */
        public Long f21931d;

        /* renamed from: e */
        public Long f21932e;

        /* renamed from: f */
        public Map<String, String> f21933f;

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public EventInternal build() {
            String str = "";
            if (this.f21928a == null) {
                str = " transportName";
            }
            if (this.f21930c == null) {
                str = str + " encodedPayload";
            }
            if (this.f21931d == null) {
                str = str + " eventMillis";
            }
            if (this.f21932e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f21933f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new C4625a(this.f21928a, this.f21929b, this.f21930c, this.f21931d.longValue(), this.f21932e.longValue(), this.f21933f);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public Map<String, String> getAutoMetadata() {
            Map<String, String> map = this.f21933f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public EventInternal.Builder setAutoMetadata(Map<String, String> map) {
            if (map == null) {
                throw new NullPointerException("Null autoMetadata");
            }
            this.f21933f = map;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public EventInternal.Builder setCode(Integer num) {
            this.f21929b = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public EventInternal.Builder setEncodedPayload(EncodedPayload encodedPayload) {
            if (encodedPayload == null) {
                throw new NullPointerException("Null encodedPayload");
            }
            this.f21930c = encodedPayload;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public EventInternal.Builder setEventMillis(long j) {
            this.f21931d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public EventInternal.Builder setTransportName(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.f21928a = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public EventInternal.Builder setUptimeMillis(long j) {
            this.f21932e = Long.valueOf(j);
            return this;
        }
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EventInternal)) {
            return false;
        }
        EventInternal eventInternal = (EventInternal) obj;
        return this.f21922a.equals(eventInternal.getTransportName()) && ((num = this.f21923b) != null ? num.equals(eventInternal.getCode()) : eventInternal.getCode() == null) && this.f21924c.equals(eventInternal.getEncodedPayload()) && this.f21925d == eventInternal.getEventMillis() && this.f21926e == eventInternal.getUptimeMillis() && this.f21927f.equals(eventInternal.getAutoMetadata());
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public Map<String, String> getAutoMetadata() {
        return this.f21927f;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    @Nullable
    public Integer getCode() {
        return this.f21923b;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public EncodedPayload getEncodedPayload() {
        return this.f21924c;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public long getEventMillis() {
        return this.f21925d;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public String getTransportName() {
        return this.f21922a;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public long getUptimeMillis() {
        return this.f21926e;
    }

    public int hashCode() {
        int hashCode = (this.f21922a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f21923b;
        int hashCode2 = (((hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f21924c.hashCode()) * 1000003;
        long j = this.f21925d;
        int i = (hashCode2 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f21926e;
        return this.f21927f.hashCode() ^ ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f21922a + ", code=" + this.f21923b + ", encodedPayload=" + this.f21924c + ", eventMillis=" + this.f21925d + ", uptimeMillis=" + this.f21926e + ", autoMetadata=" + this.f21927f + "}";
    }

    public C4625a(String str, @Nullable Integer num, EncodedPayload encodedPayload, long j, long j2, Map<String, String> map) {
        this.f21922a = str;
        this.f21923b = num;
        this.f21924c = encodedPayload;
        this.f21925d = j;
        this.f21926e = j2;
        this.f21927f = map;
    }
}
