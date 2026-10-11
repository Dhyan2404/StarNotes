package com.bumptech.glide.signature;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes3.dex */
public final class ApplicationVersionSignature {

    /* renamed from: a */
    public static final String f15455a = "AppVersionSignature";

    /* renamed from: b */
    public static final ConcurrentMap<String, Key> f15456b = new ConcurrentHashMap();

    @Nullable
    /* renamed from: a */
    public static PackageInfo m9169a(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(f15455a, "Cannot resolve info for" + context.getPackageName(), e);
            return null;
        }
    }

    @NonNull
    /* renamed from: b */
    public static String m9170b(@Nullable PackageInfo packageInfo) {
        return packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString();
    }

    @NonNull
    /* renamed from: c */
    public static Key m9171c(@NonNull Context context) {
        return new ObjectKey(m9170b(m9169a(context)));
    }

    @VisibleForTesting
    /* renamed from: d */
    public static void m9172d() {
        f15456b.clear();
    }

    @NonNull
    public static Key obtain(@NonNull Context context) {
        String packageName = context.getPackageName();
        ConcurrentMap<String, Key> concurrentMap = f15456b;
        Key key = concurrentMap.get(packageName);
        if (key != null) {
            return key;
        }
        Key m9171c = m9171c(context);
        Key putIfAbsent = concurrentMap.putIfAbsent(packageName, m9171c);
        return putIfAbsent == null ? m9171c : putIfAbsent;
    }
}
