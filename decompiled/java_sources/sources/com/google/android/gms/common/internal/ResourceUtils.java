package com.google.android.gms.common.internal;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.onyx.android.sdk.theme.utils.ResourceManager;

@KeepForSdk
/* loaded from: classes5.dex */
public final class ResourceUtils {

    /* renamed from: a */
    public static final Uri f29367a = new Uri.Builder().scheme(DefaultDataSource.f28026s).authority("com.google.android.gms").appendPath(ResourceManager.f46830c).build();
}
