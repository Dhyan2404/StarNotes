package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.database.VersionTable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.zabr;
import com.google.android.gms.common.internal.Objects;

/* loaded from: classes5.dex */
public final class gap {

    /* renamed from: a */
    public final ApiKey f70852a;

    /* renamed from: b */
    public final Feature f70853b;

    public /* synthetic */ gap(ApiKey apiKey, Feature feature, zabr zabrVar) {
        this.f70852a = apiKey;
        this.f70853b = feature;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof gap)) {
            gap gapVar = (gap) obj;
            if (Objects.equal(this.f70852a, gapVar.f70852a) && Objects.equal(this.f70853b, gapVar.f70853b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f70852a, this.f70853b);
    }

    public final String toString() {
        return Objects.toStringHelper(this).add("key", this.f70852a).add(VersionTable.f23321b, this.f70853b).toString();
    }
}
