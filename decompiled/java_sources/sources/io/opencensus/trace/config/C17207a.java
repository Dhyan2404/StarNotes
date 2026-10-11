package io.opencensus.trace.config;

import io.opencensus.trace.Sampler;
import io.opencensus.trace.config.TraceParams;

/* renamed from: io.opencensus.trace.config.a */
/* loaded from: classes10.dex */
public final class C17207a extends TraceParams {

    /* renamed from: g */
    public final Sampler f94895g;

    /* renamed from: h */
    public final int f94896h;

    /* renamed from: i */
    public final int f94897i;

    /* renamed from: j */
    public final int f94898j;

    /* renamed from: k */
    public final int f94899k;

    /* renamed from: io.opencensus.trace.config.a$b */
    /* loaded from: classes10.dex */
    public static final class b extends TraceParams.Builder {

        /* renamed from: a */
        public Sampler f94900a;

        /* renamed from: b */
        public Integer f94901b;

        /* renamed from: c */
        public Integer f94902c;

        /* renamed from: d */
        public Integer f94903d;

        /* renamed from: e */
        public Integer f94904e;

        @Override // io.opencensus.trace.config.TraceParams.Builder
        /* renamed from: a */
        public TraceParams mo61078a() {
            String str = "";
            if (this.f94900a == null) {
                str = " sampler";
            }
            if (this.f94901b == null) {
                str = str + " maxNumberOfAttributes";
            }
            if (this.f94902c == null) {
                str = str + " maxNumberOfAnnotations";
            }
            if (this.f94903d == null) {
                str = str + " maxNumberOfMessageEvents";
            }
            if (this.f94904e == null) {
                str = str + " maxNumberOfLinks";
            }
            if (str.isEmpty()) {
                return new C17207a(this.f94900a, this.f94901b.intValue(), this.f94902c.intValue(), this.f94903d.intValue(), this.f94904e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // io.opencensus.trace.config.TraceParams.Builder
        public TraceParams.Builder setMaxNumberOfAnnotations(int i) {
            this.f94902c = Integer.valueOf(i);
            return this;
        }

        @Override // io.opencensus.trace.config.TraceParams.Builder
        public TraceParams.Builder setMaxNumberOfAttributes(int i) {
            this.f94901b = Integer.valueOf(i);
            return this;
        }

        @Override // io.opencensus.trace.config.TraceParams.Builder
        public TraceParams.Builder setMaxNumberOfLinks(int i) {
            this.f94904e = Integer.valueOf(i);
            return this;
        }

        @Override // io.opencensus.trace.config.TraceParams.Builder
        public TraceParams.Builder setMaxNumberOfMessageEvents(int i) {
            this.f94903d = Integer.valueOf(i);
            return this;
        }

        @Override // io.opencensus.trace.config.TraceParams.Builder
        public TraceParams.Builder setSampler(Sampler sampler) {
            if (sampler == null) {
                throw new NullPointerException("Null sampler");
            }
            this.f94900a = sampler;
            return this;
        }

        public b() {
        }

        public b(TraceParams traceParams) {
            this.f94900a = traceParams.getSampler();
            this.f94901b = Integer.valueOf(traceParams.getMaxNumberOfAttributes());
            this.f94902c = Integer.valueOf(traceParams.getMaxNumberOfAnnotations());
            this.f94903d = Integer.valueOf(traceParams.getMaxNumberOfMessageEvents());
            this.f94904e = Integer.valueOf(traceParams.getMaxNumberOfLinks());
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TraceParams)) {
            return false;
        }
        TraceParams traceParams = (TraceParams) obj;
        return this.f94895g.equals(traceParams.getSampler()) && this.f94896h == traceParams.getMaxNumberOfAttributes() && this.f94897i == traceParams.getMaxNumberOfAnnotations() && this.f94898j == traceParams.getMaxNumberOfMessageEvents() && this.f94899k == traceParams.getMaxNumberOfLinks();
    }

    @Override // io.opencensus.trace.config.TraceParams
    public int getMaxNumberOfAnnotations() {
        return this.f94897i;
    }

    @Override // io.opencensus.trace.config.TraceParams
    public int getMaxNumberOfAttributes() {
        return this.f94896h;
    }

    @Override // io.opencensus.trace.config.TraceParams
    public int getMaxNumberOfLinks() {
        return this.f94899k;
    }

    @Override // io.opencensus.trace.config.TraceParams
    public int getMaxNumberOfMessageEvents() {
        return this.f94898j;
    }

    @Override // io.opencensus.trace.config.TraceParams
    public Sampler getSampler() {
        return this.f94895g;
    }

    public int hashCode() {
        return this.f94899k ^ ((((((((this.f94895g.hashCode() ^ 1000003) * 1000003) ^ this.f94896h) * 1000003) ^ this.f94897i) * 1000003) ^ this.f94898j) * 1000003);
    }

    @Override // io.opencensus.trace.config.TraceParams
    public TraceParams.Builder toBuilder() {
        return new b(this);
    }

    public String toString() {
        return "TraceParams{sampler=" + this.f94895g + ", maxNumberOfAttributes=" + this.f94896h + ", maxNumberOfAnnotations=" + this.f94897i + ", maxNumberOfMessageEvents=" + this.f94898j + ", maxNumberOfLinks=" + this.f94899k + "}";
    }

    public C17207a(Sampler sampler, int i, int i2, int i3, int i4) {
        this.f94895g = sampler;
        this.f94896h = i;
        this.f94897i = i2;
        this.f94898j = i3;
        this.f94899k = i4;
    }
}
