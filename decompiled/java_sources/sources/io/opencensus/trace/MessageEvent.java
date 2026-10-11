package io.opencensus.trace;

import io.opencensus.internal.Utils;
import io.opencensus.trace.C17231g;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class MessageEvent extends BaseMessageEvent {

    /* loaded from: classes10.dex */
    public static abstract class Builder {
        /* renamed from: a */
        public abstract Builder mo61057a(long j);

        /* renamed from: b */
        public abstract Builder mo61058b(Type type);

        public abstract MessageEvent build();

        public abstract Builder setCompressedMessageSize(long j);

        public abstract Builder setUncompressedMessageSize(long j);
    }

    /* loaded from: classes10.dex */
    public enum Type {
        SENT,
        RECEIVED
    }

    public static Builder builder(Type type, long j) {
        return new C17231g.b().mo61058b((Type) Utils.checkNotNull(type, "type")).mo61057a(j).setUncompressedMessageSize(0L).setCompressedMessageSize(0L);
    }

    public abstract long getCompressedMessageSize();

    public abstract long getMessageId();

    public abstract Type getType();

    public abstract long getUncompressedMessageSize();
}
