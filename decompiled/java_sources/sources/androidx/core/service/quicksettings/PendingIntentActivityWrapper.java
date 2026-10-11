package androidx.core.service.quicksettings;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.PendingIntentCompat;

/* loaded from: classes3.dex */
public class PendingIntentActivityWrapper {

    /* renamed from: a */
    public final Context f5624a;

    /* renamed from: b */
    public final int f5625b;

    /* renamed from: c */
    @NonNull
    public final Intent f5626c;

    /* renamed from: d */
    public final int f5627d;

    /* renamed from: e */
    @Nullable
    public final Bundle f5628e;

    /* renamed from: f */
    @Nullable
    public final PendingIntent f5629f;

    /* renamed from: g */
    public final boolean f5630g;

    public PendingIntentActivityWrapper(@NonNull Context context, int i, @NonNull Intent intent, int i2, boolean z) {
        this(context, i, intent, i2, null, z);
    }

    @Nullable
    /* renamed from: a */
    public final PendingIntent m3190a() {
        Bundle bundle = this.f5628e;
        return bundle == null ? PendingIntentCompat.getActivity(this.f5624a, this.f5625b, this.f5626c, this.f5627d, this.f5630g) : PendingIntentCompat.getActivity(this.f5624a, this.f5625b, this.f5626c, this.f5627d, bundle, this.f5630g);
    }

    @NonNull
    public Context getContext() {
        return this.f5624a;
    }

    public int getFlags() {
        return this.f5627d;
    }

    @NonNull
    public Intent getIntent() {
        return this.f5626c;
    }

    @NonNull
    public Bundle getOptions() {
        return this.f5628e;
    }

    @Nullable
    public PendingIntent getPendingIntent() {
        return this.f5629f;
    }

    public int getRequestCode() {
        return this.f5625b;
    }

    public boolean isMutable() {
        return this.f5630g;
    }

    public PendingIntentActivityWrapper(@NonNull Context context, int i, @NonNull Intent intent, int i2, @Nullable Bundle bundle, boolean z) {
        this.f5624a = context;
        this.f5625b = i;
        this.f5626c = intent;
        this.f5627d = i2;
        this.f5628e = bundle;
        this.f5630g = z;
        this.f5629f = m3190a();
    }
}
