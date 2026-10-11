package com.google.android.odml.image;

import android.graphics.Rect;
import android.media.Image;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.sunia.HTREnginev2.ulp;

@RequiresApi(19)
/* loaded from: classes6.dex */
public class MediaMlImageBuilder {

    /* renamed from: a */
    public final Image f33353a;

    /* renamed from: b */
    public int f33354b = 0;

    /* renamed from: c */
    public Rect f33355c;

    public MediaMlImageBuilder(@NonNull Image image) {
        this.f33353a = image;
        this.f33355c = new Rect(0, 0, image.getWidth(), image.getHeight());
    }

    @NonNull
    public MlImage build() {
        return new MlImage(new ulp(this.f33353a), this.f33354b, this.f33355c, 0L, this.f33353a.getWidth(), this.f33353a.getHeight());
    }

    @NonNull
    public MediaMlImageBuilder setRotation(int i) {
        MlImage.m25652w(i);
        this.f33354b = i;
        return this;
    }
}
