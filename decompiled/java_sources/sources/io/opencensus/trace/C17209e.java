package io.opencensus.trace;

import io.opencensus.trace.EndSpanOptions;
import javax.annotation.Nullable;

/* renamed from: io.opencensus.trace.e */
/* loaded from: classes10.dex */
public final class C17209e extends EndSpanOptions {

    /* renamed from: a */
    public final boolean f94906a;

    /* renamed from: b */
    public final Status f94907b;

    /* renamed from: io.opencensus.trace.e$b */
    /* loaded from: classes10.dex */
    public static final class b extends EndSpanOptions.Builder {

        /* renamed from: a */
        public Boolean f94908a;

        /* renamed from: b */
        public Status f94909b;

        @Override // io.opencensus.trace.EndSpanOptions.Builder
        public EndSpanOptions build() {
            String str = "";
            if (this.f94908a == null) {
                str = " sampleToLocalSpanStore";
            }
            if (str.isEmpty()) {
                return new C17209e(this.f94908a.booleanValue(), this.f94909b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // io.opencensus.trace.EndSpanOptions.Builder
        public EndSpanOptions.Builder setSampleToLocalSpanStore(boolean z) {
            this.f94908a = Boolean.valueOf(z);
            return this;
        }

        @Override // io.opencensus.trace.EndSpanOptions.Builder
        public EndSpanOptions.Builder setStatus(@Nullable Status status) {
            this.f94909b = status;
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EndSpanOptions)) {
            return false;
        }
        EndSpanOptions endSpanOptions = (EndSpanOptions) obj;
        if (this.f94906a == endSpanOptions.getSampleToLocalSpanStore()) {
            Status status = this.f94907b;
            if (status == null) {
                if (endSpanOptions.getStatus() == null) {
                    return true;
                }
            } else if (status.equals(endSpanOptions.getStatus())) {
                return true;
            }
        }
        return false;
    }

    @Override // io.opencensus.trace.EndSpanOptions
    public boolean getSampleToLocalSpanStore() {
        return this.f94906a;
    }

    @Override // io.opencensus.trace.EndSpanOptions
    @Nullable
    public Status getStatus() {
        return this.f94907b;
    }

    public int hashCode() {
        int i = ((this.f94906a ? 1231 : 1237) ^ 1000003) * 1000003;
        Status status = this.f94907b;
        return (status == null ? 0 : status.hashCode()) ^ i;
    }

    public String toString() {
        return "EndSpanOptions{sampleToLocalSpanStore=" + this.f94906a + ", status=" + this.f94907b + "}";
    }

    public C17209e(boolean z, @Nullable Status status) {
        this.f94906a = z;
        this.f94907b = status;
    }
}
