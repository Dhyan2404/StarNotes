package io.opencensus.metrics;

import com.sunia.HTREnginev2.C14547vj;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class LabelKey {
    public static LabelKey create(String str, String str2) {
        return new C14547vj(str, str2);
    }

    public abstract String getDescription();

    public abstract String getKey();
}
