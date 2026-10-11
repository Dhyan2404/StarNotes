package com.google.android.material.shadow;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class ShadowRenderer {

    /* renamed from: i */
    public static final int f32176i = 68;

    /* renamed from: j */
    public static final int f32177j = 20;

    /* renamed from: k */
    public static final int f32178k = 0;

    /* renamed from: l */
    public static final int[] f32179l = new int[3];

    /* renamed from: m */
    public static final float[] f32180m = {0.0f, 0.5f, 1.0f};

    /* renamed from: n */
    public static final int[] f32181n = new int[4];

    /* renamed from: o */
    public static final float[] f32182o = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: a */
    @NonNull
    public final Paint f32183a;

    /* renamed from: b */
    @NonNull
    public final Paint f32184b;

    /* renamed from: c */
    @NonNull
    public final Paint f32185c;

    /* renamed from: d */
    public int f32186d;

    /* renamed from: e */
    public int f32187e;

    /* renamed from: f */
    public int f32188f;

    /* renamed from: g */
    public final Path f32189g;

    /* renamed from: h */
    public final Paint f32190h;

    public ShadowRenderer() {
        this(-16777216);
    }

    public void drawCornerShadow(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i, float f, float f2) {
        boolean z = f2 < 0.0f;
        Path path = this.f32189g;
        if (z) {
            int[] iArr = f32181n;
            iArr[0] = 0;
            iArr[1] = this.f32188f;
            iArr[2] = this.f32187e;
            iArr[3] = this.f32186d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            float f3 = -i;
            rectF.inset(f3, f3);
            int[] iArr2 = f32181n;
            iArr2[0] = 0;
            iArr2[1] = this.f32186d;
            iArr2[2] = this.f32187e;
            iArr2[3] = this.f32188f;
        }
        float width = rectF.width() / 2.0f;
        if (width <= 0.0f) {
            return;
        }
        float f4 = 1.0f - (i / width);
        float[] fArr = f32182o;
        fArr[1] = f4;
        fArr[2] = ((1.0f - f4) / 2.0f) + f4;
        this.f32184b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, f32181n, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.f32190h);
        }
        canvas.drawArc(rectF, f, f2, true, this.f32184b);
        canvas.restore();
    }

    public void drawEdgeShadow(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i) {
        rectF.bottom += i;
        rectF.offset(0.0f, -i);
        int[] iArr = f32179l;
        iArr[0] = this.f32188f;
        iArr[1] = this.f32187e;
        iArr[2] = this.f32186d;
        Paint paint = this.f32185c;
        float f = rectF.left;
        paint.setShader(new LinearGradient(f, rectF.top, f, rectF.bottom, iArr, f32180m, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f32185c);
        canvas.restore();
    }

    public void drawInnerCornerShadow(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i, float f, float f2, @NonNull float[] fArr) {
        if (f2 > 0.0f) {
            f += f2;
            f2 = -f2;
        }
        drawCornerShadow(canvas, matrix, rectF, i, f, f2);
        Path path = this.f32189g;
        path.rewind();
        path.moveTo(fArr[0], fArr[1]);
        path.arcTo(rectF, f, f2);
        path.close();
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        canvas.drawPath(path, this.f32190h);
        canvas.drawPath(path, this.f32183a);
        canvas.restore();
    }

    @NonNull
    public Paint getShadowPaint() {
        return this.f32183a;
    }

    public void setShadowColor(int i) {
        this.f32186d = ColorUtils.setAlphaComponent(i, 68);
        this.f32187e = ColorUtils.setAlphaComponent(i, 20);
        this.f32188f = ColorUtils.setAlphaComponent(i, 0);
        this.f32183a.setColor(this.f32186d);
    }

    public ShadowRenderer(int i) {
        this.f32189g = new Path();
        Paint paint = new Paint();
        this.f32190h = paint;
        this.f32183a = new Paint();
        setShadowColor(i);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f32184b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f32185c = new Paint(paint2);
    }
}
