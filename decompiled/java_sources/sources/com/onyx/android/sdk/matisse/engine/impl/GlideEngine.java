package com.onyx.android.sdk.matisse.engine.impl;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.onyx.android.sdk.matisse.engine.ImageEngine;

/* loaded from: classes7.dex */
public class GlideEngine implements ImageEngine {
    @Override // com.onyx.android.sdk.matisse.engine.ImageEngine
    public void loadGifImage(Context context, int i, int i2, ImageView imageView, Uri uri) {
        Glide.with(context).asGif().load(uri).diskCacheStrategy(DiskCacheStrategy.NONE).apply((BaseRequestOptions<?>) new RequestOptions().override(i, i2).priority(Priority.HIGH).fitCenter()).into(imageView);
    }

    @Override // com.onyx.android.sdk.matisse.engine.ImageEngine
    public void loadGifThumbnail(Context context, int i, Drawable drawable, ImageView imageView, Uri uri) {
        Glide.with(context).asBitmap().load(uri).diskCacheStrategy(DiskCacheStrategy.NONE).apply((BaseRequestOptions<?>) new RequestOptions().override(i, i).placeholder(drawable).centerCrop()).into(imageView);
    }

    @Override // com.onyx.android.sdk.matisse.engine.ImageEngine
    public void loadImage(Context context, int i, int i2, ImageView imageView, Uri uri) {
        Glide.with(context).load(uri).diskCacheStrategy(DiskCacheStrategy.NONE).apply((BaseRequestOptions<?>) new RequestOptions().override(i, i2).priority(Priority.HIGH).fitCenter()).into(imageView);
    }

    @Override // com.onyx.android.sdk.matisse.engine.ImageEngine
    public void loadThumbnail(Context context, int i, Drawable drawable, ImageView imageView, Uri uri) {
        Glide.with(context).asBitmap().load(uri).diskCacheStrategy(DiskCacheStrategy.NONE).apply((BaseRequestOptions<?>) new RequestOptions().override(i, i).placeholder(drawable).centerCrop()).into(imageView);
    }

    @Override // com.onyx.android.sdk.matisse.engine.ImageEngine
    public boolean supportAnimatedGif() {
        return true;
    }
}
