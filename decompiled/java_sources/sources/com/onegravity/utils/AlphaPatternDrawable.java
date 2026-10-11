package com.onegravity.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.onegravity.colorpicker.Util;

/* loaded from: classes7.dex */
public class AlphaPatternDrawable extends Drawable {

    /* renamed from: a */
    public final int f40603a;

    /* renamed from: b */
    public final Paint f40604b = new Paint();

    /* renamed from: c */
    public final Paint f40605c;

    /* renamed from: d */
    public final Paint f40606d;

    /* renamed from: e */
    public int f40607e;

    /* renamed from: f */
    public int f40608f;

    /* renamed from: g */
    public Bitmap f40609g;

    public AlphaPatternDrawable(Context context) {
        Paint paint = new Paint();
        this.f40605c = paint;
        Paint paint2 = new Paint();
        this.f40606d = paint2;
        this.f40603a = (int) (Util.getDisplayDensity(context) * 5.0f);
        paint.setColor(-1);
        paint2.setColor(-3421237);
    }

    /* renamed from: a */
    public final void m31810a() {
        if (getBounds().width() <= 0 || getBounds().height() <= 0) {
            return;
        }
        Bitmap allocateBitmap = Util.allocateBitmap(getBounds().width(), getBounds().height());
        this.f40609g = allocateBitmap;
        if (allocateBitmap == null) {
            return;
        }
        Canvas canvas = new Canvas(this.f40609g);
        Rect rect = new Rect();
        boolean z = true;
        for (int i = 0; i <= this.f40608f; i++) {
            boolean z2 = z;
            for (int i2 = 0; i2 <= this.f40607e; i2++) {
                int i3 = this.f40603a;
                int i4 = i * i3;
                rect.top = i4;
                int i5 = i2 * i3;
                rect.left = i5;
                rect.bottom = i4 + i3;
                rect.right = i5 + i3;
                canvas.drawRect(rect, z2 ? this.f40605c : this.f40606d);
                z2 = !z2;
            }
            z = !z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Bitmap bitmap = this.f40609g;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, (Rect) null, getBounds(), this.f40604b);
        }
    }

    public Bitmap generatePatternBitmap(int i, int i2) {
        Bitmap allocateBitmap;
        if (i <= 0 || i2 <= 0 || (allocateBitmap = Util.allocateBitmap(i, i2)) == null) {
            return null;
        }
        Canvas canvas = new Canvas(allocateBitmap);
        int ceil = (int) Math.ceil(i / this.f40603a);
        int ceil2 = (int) Math.ceil(i2 / this.f40603a);
        Rect rect = new Rect();
        boolean z = true;
        for (int i3 = 0; i3 <= ceil2; i3++) {
            boolean z2 = z;
            for (int i4 = 0; i4 <= ceil; i4++) {
                int i5 = this.f40603a;
                int i6 = i3 * i5;
                rect.top = i6;
                int i7 = i4 * i5;
                rect.left = i7;
                rect.bottom = i6 + i5;
                rect.right = i7 + i5;
                canvas.drawRect(rect, z2 ? this.f40605c : this.f40606d);
                z2 = !z2;
            }
            z = !z;
        }
        return allocateBitmap;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        int height = rect.height();
        this.f40607e = (int) Math.ceil(rect.width() / this.f40603a);
        this.f40608f = (int) Math.ceil(height / this.f40603a);
        m31810a();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
