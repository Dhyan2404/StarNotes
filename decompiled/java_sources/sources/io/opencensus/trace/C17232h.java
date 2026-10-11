package io.opencensus.trace;

import io.opencensus.common.Timestamp;
import io.opencensus.trace.NetworkEvent;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* renamed from: io.opencensus.trace.h */
/* loaded from: classes10.dex */
public final class C17232h extends NetworkEvent {

    /* renamed from: a */
    public final Timestamp f94963a;

    /* renamed from: b */
    public final NetworkEvent.Type f94964b;

    /* renamed from: c */
    public final long f94965c;

    /* renamed from: d */
    public final long f94966d;

    /* renamed from: e */
    public final long f94967e;

    /* renamed from: io.opencensus.trace.h$b */
    /* loaded from: classes10.dex */
    public static final class b extends NetworkEvent.Builder {

        /* renamed from: a */
        public Timestamp f94968a;

        /* renamed from: b */
        public NetworkEvent.Type f94969b;

        /* renamed from: c */
        public Long f94970c;

        /* renamed from: d */
        public Long f94971d;

        /* renamed from: e */
        public Long f94972e;

        @Override // io.opencensus.trace.NetworkEvent.Builder
        /* renamed from: a */
        public NetworkEvent.Builder mo61059a(long j) {
            this.f94970c = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.NetworkEvent.Builder
        /* renamed from: b */
        public NetworkEvent.Builder mo61060b(NetworkEvent.Type type) {
            if (type == null) {
                throw new NullPointerException("Null type");
            }
            this.f94969b = type;
            return this;
        }

        @Override // io.opencensus.trace.NetworkEvent.Builder
        public NetworkEvent build() {
            String str = "";
            if (this.f94969b == null) {
                str = " type";
            }
            if (this.f94970c == null) {
                str = str + " messageId";
            }
            if (this.f94971d == null) {
                str = str + " uncompressedMessageSize";
            }
            if (this.f94972e == null) {
                str = str + " compressedMessageSize";
            }
            if (str.isEmpty()) {
                return new C17232h(this.f94968a, this.f94969b, this.f94970c.longValue(), this.f94971d.longValue(), this.f94972e.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // io.opencensus.trace.NetworkEvent.Builder
        public NetworkEvent.Builder setCompressedMessageSize(long j) {
            this.f94972e = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.NetworkEvent.Builder
        public NetworkEvent.Builder setKernelTimestamp(@Nullable Timestamp timestamp) {
            this.f94968a = timestamp;
            return this;
        }

        @Override // io.opencensus.trace.NetworkEvent.Builder
        public NetworkEvent.Builder setUncompressedMessageSize(long j) {
            this.f94971d = Long.valueOf(j);
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NetworkEvent)) {
            return false;
        }
        NetworkEvent networkEvent = (NetworkEvent) obj;
        Timestamp timestamp = this.f94963a;
        if (timestamp != null ? timestamp.equals(networkEvent.getKernelTimestamp()) : networkEvent.getKernelTimestamp() == null) {
            if (this.f94964b.equals(networkEvent.getType()) && this.f94965c == networkEvent.getMessageId() && this.f94966d == networkEvent.getUncompressedMessageSize() && this.f94967e == networkEvent.getCompressedMessageSize()) {
                return true;
            }
        }
        return false;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public long getCompressedMessageSize() {
        return this.f94967e;
    }

    @Override // io.opencensus.trace.NetworkEvent
    @Nullable
    public Timestamp getKernelTimestamp() {
        return this.f94963a;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public long getMessageId() {
        return this.f94965c;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public NetworkEvent.Type getType() {
        return this.f94964b;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public long getUncompressedMessageSize() {
        return this.f94966d;
    }

    public int hashCode() {
        Timestamp timestamp = this.f94963a;
        long hashCode = ((((timestamp == null ? 0 : timestamp.hashCode()) ^ 1000003) * 1000003) ^ this.f94964b.hashCode()) * 1000003;
        long j = this.f94965c;
        long j2 = ((int) (hashCode ^ (j ^ (j >>> 32)))) * 1000003;
        long j3 = this.f94966d;
        long j4 = this.f94967e;
        return (int) ((((int) (j2 ^ (j3 ^ (j3 >>> 32)))) * 1000003) ^ (j4 ^ (j4 >>> 32)));
    }

    public String toString() {
        return "NetworkEvent{kernelTimestamp=" + this.f94963a + ", type=" + this.f94964b + ", messageId=" + this.f94965c + ", uncompressedMessageSize=" + this.f94966d + ", compressedMessageSize=" + this.f94967e + "}";
    }

    public C17232h(@Nullable Timestamp timestamp, NetworkEvent.Type type, long j, long j2, long j3) {
        this.f94963a = timestamp;
        this.f94964b = type;
        this.f94965c = j;
        this.f94966d = j2;
        this.f94967e = j3;
    }
}
