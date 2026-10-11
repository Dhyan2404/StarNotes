package com.google.android.gms.measurement.internal;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;

@VisibleForTesting
/* loaded from: classes5.dex */
public final class zzok {

    /* renamed from: a */
    public final Context f30032a;

    @VisibleForTesting
    public zzok(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.f30032a = applicationContext;
    }
}
