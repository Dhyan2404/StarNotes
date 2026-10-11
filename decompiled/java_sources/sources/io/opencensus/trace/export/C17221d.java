package io.opencensus.trace.export;

import io.opencensus.trace.Status;
import io.opencensus.trace.export.SampledSpanStore;
import javax.annotation.Nullable;

/* renamed from: io.opencensus.trace.export.d */
/* loaded from: classes10.dex */
public final class C17221d extends SampledSpanStore.ErrorFilter {

    /* renamed from: a */
    public final String f94920a;

    /* renamed from: b */
    public final Status.CanonicalCode f94921b;

    /* renamed from: c */
    public final int f94922c;

    public C17221d(String str, @Nullable Status.CanonicalCode canonicalCode, int i) {
        if (str == null) {
            throw new NullPointerException("Null spanName");
        }
        this.f94920a = str;
        this.f94921b = canonicalCode;
        this.f94922c = i;
    }

    public boolean equals(Object obj) {
        Status.CanonicalCode canonicalCode;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SampledSpanStore.ErrorFilter)) {
            return false;
        }
        SampledSpanStore.ErrorFilter errorFilter = (SampledSpanStore.ErrorFilter) obj;
        return this.f94920a.equals(errorFilter.getSpanName()) && ((canonicalCode = this.f94921b) != null ? canonicalCode.equals(errorFilter.getCanonicalCode()) : errorFilter.getCanonicalCode() == null) && this.f94922c == errorFilter.getMaxSpansToReturn();
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.ErrorFilter
    @Nullable
    public Status.CanonicalCode getCanonicalCode() {
        return this.f94921b;
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.ErrorFilter
    public int getMaxSpansToReturn() {
        return this.f94922c;
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.ErrorFilter
    public String getSpanName() {
        return this.f94920a;
    }

    public int hashCode() {
        int hashCode = (this.f94920a.hashCode() ^ 1000003) * 1000003;
        Status.CanonicalCode canonicalCode = this.f94921b;
        return this.f94922c ^ ((hashCode ^ (canonicalCode == null ? 0 : canonicalCode.hashCode())) * 1000003);
    }

    public String toString() {
        return "ErrorFilter{spanName=" + this.f94920a + ", canonicalCode=" + this.f94921b + ", maxSpansToReturn=" + this.f94922c + "}";
    }
}
