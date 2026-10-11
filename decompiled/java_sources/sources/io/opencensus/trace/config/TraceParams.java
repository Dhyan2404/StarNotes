package io.opencensus.trace.config;

import io.opencensus.internal.Utils;
import io.opencensus.trace.Sampler;
import io.opencensus.trace.config.C17207a;
import io.opencensus.trace.samplers.Samplers;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class TraceParams {
    public static final TraceParams DEFAULT;

    /* renamed from: a */
    public static final double f94889a = 1.0E-4d;

    /* renamed from: b */
    public static final Sampler f94890b;

    /* renamed from: c */
    public static final int f94891c = 32;

    /* renamed from: d */
    public static final int f94892d = 32;

    /* renamed from: e */
    public static final int f94893e = 128;

    /* renamed from: f */
    public static final int f94894f = 32;

    /* loaded from: classes10.dex */
    public static abstract class Builder {
        /* renamed from: a */
        public abstract TraceParams mo61078a();

        public TraceParams build() {
            TraceParams mo61078a = mo61078a();
            Utils.checkArgument(mo61078a.getMaxNumberOfAttributes() > 0, "maxNumberOfAttributes");
            Utils.checkArgument(mo61078a.getMaxNumberOfAnnotations() > 0, "maxNumberOfAnnotations");
            Utils.checkArgument(mo61078a.getMaxNumberOfMessageEvents() > 0, "maxNumberOfMessageEvents");
            Utils.checkArgument(mo61078a.getMaxNumberOfLinks() > 0, "maxNumberOfLinks");
            return mo61078a;
        }

        public abstract Builder setMaxNumberOfAnnotations(int i);

        public abstract Builder setMaxNumberOfAttributes(int i);

        public abstract Builder setMaxNumberOfLinks(int i);

        public abstract Builder setMaxNumberOfMessageEvents(int i);

        @Deprecated
        public Builder setMaxNumberOfNetworkEvents(int i) {
            return setMaxNumberOfMessageEvents(i);
        }

        public abstract Builder setSampler(Sampler sampler);
    }

    static {
        Sampler probabilitySampler = Samplers.probabilitySampler(1.0E-4d);
        f94890b = probabilitySampler;
        DEFAULT = m61077a().setSampler(probabilitySampler).setMaxNumberOfAttributes(32).setMaxNumberOfAnnotations(32).setMaxNumberOfMessageEvents(128).setMaxNumberOfLinks(32).build();
    }

    /* renamed from: a */
    public static Builder m61077a() {
        return new C17207a.b();
    }

    public abstract int getMaxNumberOfAnnotations();

    public abstract int getMaxNumberOfAttributes();

    public abstract int getMaxNumberOfLinks();

    public abstract int getMaxNumberOfMessageEvents();

    @Deprecated
    public int getMaxNumberOfNetworkEvents() {
        return getMaxNumberOfMessageEvents();
    }

    public abstract Sampler getSampler();

    public abstract Builder toBuilder();
}
