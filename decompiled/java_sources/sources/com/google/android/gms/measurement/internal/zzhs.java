package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.C5051R;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes5.dex */
public final class zzhs {

    /* renamed from: a */
    public final Resources f29833a;

    /* renamed from: b */
    public final String f29834b;

    public zzhs(Context context, @Nullable String str) {
        Preconditions.checkNotNull(context);
        this.f29833a = context.getResources();
        if (TextUtils.isEmpty(str)) {
            this.f29834b = zza(context);
        } else {
            this.f29834b = str;
        }
    }

    @Nullable
    public final String zza(String str) {
        int identifier = this.f29833a.getIdentifier(str, "string", this.f29834b);
        if (identifier == 0) {
            return null;
        }
        try {
            return this.f29833a.getString(identifier);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    public static String zza(Context context) {
        try {
            return context.getResources().getResourcePackageName(C5051R.string.common_google_play_services_unknown_issue);
        } catch (Resources.NotFoundException unused) {
            return context.getPackageName();
        }
    }
}
