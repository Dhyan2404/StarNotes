package com.bumptech.glide.request.target;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Preconditions;
import com.onyx.android.sdk.data.common.data.FunctionKey;

/* loaded from: classes3.dex */
public class NotificationTarget extends CustomTarget<Bitmap> {

    /* renamed from: h */
    public final RemoteViews f15406h;

    /* renamed from: i */
    public final Context f15407i;

    /* renamed from: j */
    public final int f15408j;

    /* renamed from: k */
    public final String f15409k;

    /* renamed from: l */
    public final Notification f15410l;

    /* renamed from: m */
    public final int f15411m;

    public NotificationTarget(Context context, int i, RemoteViews remoteViews, Notification notification, int i2) {
        this(context, i, remoteViews, notification, i2, null);
    }

    /* renamed from: a */
    public final void m9147a(@Nullable Bitmap bitmap) {
        this.f15406h.setImageViewBitmap(this.f15411m, bitmap);
        m9148b();
    }

    /* renamed from: b */
    public final void m9148b() {
        ((NotificationManager) Preconditions.checkNotNull((NotificationManager) this.f15407i.getSystemService(FunctionKey.NOTIFICATION))).notify(this.f15409k, this.f15408j, this.f15410l);
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
        m9147a(null);
    }

    @Override // com.bumptech.glide.request.target.Target
    public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable Transition transition) {
        onResourceReady((Bitmap) obj, (Transition<? super Bitmap>) transition);
    }

    public NotificationTarget(Context context, int i, RemoteViews remoteViews, Notification notification, int i2, String str) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i, remoteViews, notification, i2, str);
    }

    public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
        m9147a(bitmap);
    }

    public NotificationTarget(Context context, int i, int i2, int i3, RemoteViews remoteViews, Notification notification, int i4, String str) {
        super(i, i2);
        this.f15407i = (Context) Preconditions.checkNotNull(context, "Context must not be null!");
        this.f15410l = (Notification) Preconditions.checkNotNull(notification, "Notification object can not be null!");
        this.f15406h = (RemoteViews) Preconditions.checkNotNull(remoteViews, "RemoteViews object can not be null!");
        this.f15411m = i3;
        this.f15408j = i4;
        this.f15409k = str;
    }
}
