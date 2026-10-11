package io.opencensus.trace;

import io.opencensus.trace.MessageEvent;

/* renamed from: io.opencensus.trace.g */
/* loaded from: classes10.dex */
public final class C17231g extends MessageEvent {

    /* renamed from: a */
    public final MessageEvent.Type f94955a;

    /* renamed from: b */
    public final long f94956b;

    /* renamed from: c */
    public final long f94957c;

    /* renamed from: d */
    public final long f94958d;

    /* renamed from: io.opencensus.trace.g$b */
    /* loaded from: classes10.dex */
    public static final class b extends MessageEvent.Builder {

        /* renamed from: a */
        public MessageEvent.Type f94959a;

        /* renamed from: b */
        public Long f94960b;

        /* renamed from: c */
        public Long f94961c;

        /* renamed from: d */
        public Long f94962d;

        @Override // io.opencensus.trace.MessageEvent.Builder
        /* renamed from: a */
        public MessageEvent.Builder mo61057a(long j) {
            this.f94960b = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.MessageEvent.Builder
        /* renamed from: b */
        public MessageEvent.Builder mo61058b(MessageEvent.Type type) {
            if (type == null) {
                throw new NullPointerException("Null type");
            }
            this.f94959a = type;
            return this;
        }

        @Override // io.opencensus.trace.MessageEvent.Builder
        public MessageEvent build() {
            String str = "";
            if (this.f94959a == null) {
                str = " type";
            }
            if (this.f94960b == null) {
                str = str + " messageId";
            }
            if (this.f94961c == null) {
                str = str + " uncompressedMessageSize";
            }
            if (this.f94962d == null) {
                str = str + " compressedMessageSize";
            }
            if (str.isEmpty()) {
                return new C17231g(this.f94959a, this.f94960b.longValue(), this.f94961c.longValue(), this.f94962d.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // io.opencensus.trace.MessageEvent.Builder
        public MessageEvent.Builder setCompressedMessageSize(long j) {
            this.f94962d = Long.valueOf(j);
            return this;
        }

        @Override // io.opencensus.trace.MessageEvent.Builder
        public MessageEvent.Builder setUncompressedMessageSize(long j) {
            this.f94961c = Long.valueOf(j);
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MessageEvent)) {
            return false;
        }
        MessageEvent messageEvent = (MessageEvent) obj;
        return this.f94955a.equals(messageEvent.getType()) && this.f94956b == messageEvent.getMessageId() && this.f94957c == messageEvent.getUncompressedMessageSize() && this.f94958d == messageEvent.getCompressedMessageSize();
    }

    @Override // io.opencensus.trace.MessageEvent
    public long getCompressedMessageSize() {
        return this.f94958d;
    }

    @Override // io.opencensus.trace.MessageEvent
    public long getMessageId() {
        return this.f94956b;
    }

    @Override // io.opencensus.trace.MessageEvent
    public MessageEvent.Type getType() {
        return this.f94955a;
    }

    @Override // io.opencensus.trace.MessageEvent
    public long getUncompressedMessageSize() {
        return this.f94957c;
    }

    public int hashCode() {
        long hashCode = (this.f94955a.hashCode() ^ 1000003) * 1000003;
        long j = this.f94956b;
        long j2 = ((int) (hashCode ^ (j ^ (j >>> 32)))) * 1000003;
        long j3 = this.f94957c;
        long j4 = this.f94958d;
        return (int) ((((int) (j2 ^ (j3 ^ (j3 >>> 32)))) * 1000003) ^ (j4 ^ (j4 >>> 32)));
    }

    public String toString() {
        return "MessageEvent{type=" + this.f94955a + ", messageId=" + this.f94956b + ", uncompressedMessageSize=" + this.f94957c + ", compressedMessageSize=" + this.f94958d + "}";
    }

    public C17231g(MessageEvent.Type type, long j, long j2, long j3) {
        this.f94955a = type;
        this.f94956b = j;
        this.f94957c = j2;
        this.f94958d = j3;
    }
}
