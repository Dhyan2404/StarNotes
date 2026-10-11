package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.common.zzag;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.List;

/* loaded from: classes5.dex */
public final class xsp {

    /* renamed from: a */
    @Nullable
    public String f90034a = null;

    /* renamed from: b */
    public long f90035b = -1;

    /* renamed from: c */
    public zzag f90036c = zzag.zzl();

    /* renamed from: d */
    public zzag f90037d = zzag.zzl();

    @CanIgnoreReturnValue
    /* renamed from: a */
    public final xsp m58329a(long j) {
        this.f90035b = j;
        return this;
    }

    @CanIgnoreReturnValue
    /* renamed from: b */
    public final xsp m58330b(List list) {
        Preconditions.checkNotNull(list);
        this.f90037d = zzag.zzk(list);
        return this;
    }

    @CanIgnoreReturnValue
    /* renamed from: c */
    public final xsp m58331c(List list) {
        Preconditions.checkNotNull(list);
        this.f90036c = zzag.zzk(list);
        return this;
    }

    @CanIgnoreReturnValue
    /* renamed from: d */
    public final xsp m58332d(String str) {
        this.f90034a = str;
        return this;
    }

    /* renamed from: e */
    public final pfp m58333e() {
        if (this.f90034a == null) {
            throw new IllegalStateException("packageName must be defined");
        }
        if (this.f90035b < 0) {
            throw new IllegalStateException("minimumStampedVersionNumber must be greater than or equal to 0");
        }
        if (this.f90036c.isEmpty() && this.f90037d.isEmpty()) {
            throw new IllegalStateException("Either orderedTestCerts or orderedProdCerts must have at least one cert");
        }
        return new pfp(this.f90034a, this.f90035b, this.f90036c, this.f90037d, null);
    }
}
