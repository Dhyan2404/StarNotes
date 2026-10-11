package com.google.android.odml.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.provider.MediaStore;
import androidx.annotation.NonNull;
import com.sunia.HTREnginev2.yjp;
import java.io.IOException;

/* loaded from: classes6.dex */
public class BitmapMlImageBuilder {

    /* renamed from: a */
    public final Bitmap f33344a;

    /* renamed from: b */
    public int f33345b;

    /* renamed from: c */
    public Rect f33346c;

    public BitmapMlImageBuilder(@NonNull Context context, @NonNull Uri uri) throws IOException {
        this(MediaStore.Images.Media.getBitmap(context.getContentResolver(), uri));
    }

    @NonNull
    public MlImage build() {
        return new MlImage(new yjp(this.f33344a), this.f33345b, this.f33346c, 0L, this.f33344a.getWidth(), this.f33344a.getHeight());
    }

    @NonNull
    public BitmapMlImageBuilder setRotation(int i) {
        MlImage.m25652w(i);
        this.f33345b = i;
        return this;
    }

    public BitmapMlImageBuilder(@NonNull Bitmap bitmap) {
        this.f33344a = bitmap;
        this.f33345b = 0;
        this.f33346c = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
    }
}
