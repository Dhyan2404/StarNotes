package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.C5051R;
import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes5.dex */
public class StringResourceValueReader {

    /* renamed from: a */
    public final Resources f29371a;

    /* renamed from: b */
    public final String f29372b;

    public StringResourceValueReader(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        Resources resources = context.getResources();
        this.f29371a = resources;
        this.f29372b = resources.getResourcePackageName(C5051R.string.common_google_play_services_unknown_issue);
    }

    @Nullable
    @KeepForSdk
    public String getString(@NonNull String str) {
        int identifier = this.f29371a.getIdentifier(str, "string", this.f29372b);
        if (identifier == 0) {
            return null;
        }
        return this.f29371a.getString(identifier);
    }
}
