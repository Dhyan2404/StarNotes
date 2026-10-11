package io.opencensus.metrics;

import com.sunia.HTREnginev2.C14606wj;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class LabelValue {
    public static LabelValue create(@Nullable String str) {
        return new C14606wj(str);
    }

    @Nullable
    public abstract String getValue();
}
