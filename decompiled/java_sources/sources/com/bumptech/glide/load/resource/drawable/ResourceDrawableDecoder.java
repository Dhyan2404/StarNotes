package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.sunia.HTREnginev2.guj;
import java.util.List;

/* loaded from: classes3.dex */
public class ResourceDrawableDecoder implements ResourceDecoder<Uri, Drawable> {

    /* renamed from: b */
    public static final String f15121b = "android";

    /* renamed from: c */
    public static final int f15122c = 0;

    /* renamed from: d */
    public static final int f15123d = 2;

    /* renamed from: e */
    public static final int f15124e = 0;

    /* renamed from: f */
    public static final int f15125f = 1;

    /* renamed from: g */
    public static final int f15126g = 1;

    /* renamed from: h */
    public static final int f15127h = 0;

    /* renamed from: a */
    public final Context f15128a;

    public ResourceDrawableDecoder(Context context) {
        this.f15128a = context.getApplicationContext();
    }

    @NonNull
    /* renamed from: a */
    public final Context m8996a(Uri uri, String str) {
        if (str.equals(this.f15128a.getPackageName())) {
            return this.f15128a;
        }
        try {
            return this.f15128a.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            if (str.contains(this.f15128a.getPackageName())) {
                return this.f15128a;
            }
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e);
        }
    }

    @DrawableRes
    /* renamed from: b */
    public final int m8997b(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e);
        }
    }

    @DrawableRes
    /* renamed from: c */
    public final int m8998c(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        String authority = uri.getAuthority();
        String str = pathSegments.get(0);
        String str2 = pathSegments.get(1);
        int identifier = context.getResources().getIdentifier(str2, str, authority);
        if (identifier == 0) {
            identifier = Resources.getSystem().getIdentifier(str2, str, "android");
        }
        if (identifier != 0) {
            return identifier;
        }
        throw new IllegalArgumentException("Failed to find resource id for: " + uri);
    }

    @DrawableRes
    /* renamed from: d */
    public final int m8999d(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            return m8998c(context, uri);
        }
        if (pathSegments.size() == 1) {
            return m8997b(uri);
        }
        throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    public Resource<Drawable> decode(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        Context m8996a = m8996a(uri, uri.getAuthority());
        return guj.m54350a(DrawableDecoderCompat.getDrawable(this.f15128a, m8996a, m8999d(m8996a, uri)));
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean handles(@NonNull Uri uri, @NonNull Options options) {
        return uri.getScheme().equals(DefaultDataSource.f28026s);
    }
}
