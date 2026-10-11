package com.google.android.odml.image;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import com.sunia.HTREnginev2.hkp;
import java.nio.ByteBuffer;

/* loaded from: classes6.dex */
public class ByteBufferMlImageBuilder {

    /* renamed from: a */
    public final ByteBuffer f33347a;

    /* renamed from: b */
    public final int f33348b;

    /* renamed from: c */
    public final int f33349c;

    /* renamed from: d */
    public final int f33350d;

    /* renamed from: e */
    public int f33351e = 0;

    /* renamed from: f */
    public Rect f33352f;

    public ByteBufferMlImageBuilder(@NonNull ByteBuffer byteBuffer, int i, int i2, int i3) {
        this.f33347a = byteBuffer;
        this.f33348b = i;
        this.f33349c = i2;
        this.f33350d = i3;
        this.f33352f = new Rect(0, 0, i, i2);
    }

    @NonNull
    public MlImage build() {
        return new MlImage(new hkp(this.f33347a, this.f33350d), this.f33351e, this.f33352f, 0L, this.f33348b, this.f33349c);
    }

    @NonNull
    public ByteBufferMlImageBuilder setRotation(int i) {
        MlImage.m25652w(i);
        this.f33351e = i;
        return this;
    }
}
