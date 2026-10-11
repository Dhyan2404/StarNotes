package com.sunia.HTREnginev2;

import io.opencensus.metrics.LabelValue;
import javax.annotation.Nullable;

/* renamed from: com.sunia.HTREnginev2.wj */
/* loaded from: classes10.dex */
public final class C14606wj extends LabelValue {

    /* renamed from: a */
    public final String f88671a;

    public C14606wj(@Nullable String str) {
        this.f88671a = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LabelValue)) {
            return false;
        }
        LabelValue labelValue = (LabelValue) obj;
        String str = this.f88671a;
        return str == null ? labelValue.getValue() == null : str.equals(labelValue.getValue());
    }

    @Override // io.opencensus.metrics.LabelValue
    @Nullable
    public String getValue() {
        return this.f88671a;
    }

    public int hashCode() {
        String str = this.f88671a;
        return (str == null ? 0 : str.hashCode()) ^ 1000003;
    }

    public String toString() {
        return "LabelValue{value=" + this.f88671a + "}";
    }
}
