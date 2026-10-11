package com.bumptech.glide.request.target;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Preconditions;

/* loaded from: classes3.dex */
public class AppWidgetTarget extends CustomTarget<Bitmap> {

    /* renamed from: h */
    public final int[] f15373h;

    /* renamed from: i */
    public final ComponentName f15374i;

    /* renamed from: j */
    public final RemoteViews f15375j;

    /* renamed from: k */
    public final Context f15376k;

    /* renamed from: l */
    public final int f15377l;

    public AppWidgetTarget(Context context, int i, int i2, int i3, RemoteViews remoteViews, int... iArr) {
        super(i, i2);
        if (iArr.length != 0) {
            this.f15376k = (Context) Preconditions.checkNotNull(context, "Context can not be null!");
            this.f15375j = (RemoteViews) Preconditions.checkNotNull(remoteViews, "RemoteViews object can not be null!");
            this.f15373h = (int[]) Preconditions.checkNotNull(iArr, "WidgetIds can not be null!");
            this.f15377l = i3;
            this.f15374i = null;
            return;
        }
        throw new IllegalArgumentException("WidgetIds must have length > 0");
    }

    /* renamed from: a */
    public final void m9125a(@Nullable Bitmap bitmap) {
        this.f15375j.setImageViewBitmap(this.f15377l, bitmap);
        m9126b();
    }

    /* renamed from: b */
    public final void m9126b() {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.f15376k);
        ComponentName componentName = this.f15374i;
        if (componentName != null) {
            appWidgetManager.updateAppWidget(componentName, this.f15375j);
        } else {
            appWidgetManager.updateAppWidget(this.f15373h, this.f15375j);
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
        m9125a(null);
    }

    @Override // com.bumptech.glide.request.target.Target
    public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable Transition transition) {
        onResourceReady((Bitmap) obj, (Transition<? super Bitmap>) transition);
    }

    public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
        m9125a(bitmap);
    }

    public AppWidgetTarget(Context context, int i, RemoteViews remoteViews, int... iArr) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i, remoteViews, iArr);
    }

    public AppWidgetTarget(Context context, int i, int i2, int i3, RemoteViews remoteViews, ComponentName componentName) {
        super(i, i2);
        this.f15376k = (Context) Preconditions.checkNotNull(context, "Context can not be null!");
        this.f15375j = (RemoteViews) Preconditions.checkNotNull(remoteViews, "RemoteViews object can not be null!");
        this.f15374i = (ComponentName) Preconditions.checkNotNull(componentName, "ComponentName can not be null!");
        this.f15377l = i3;
        this.f15373h = null;
    }

    public AppWidgetTarget(Context context, int i, RemoteViews remoteViews, ComponentName componentName) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i, remoteViews, componentName);
    }
}
