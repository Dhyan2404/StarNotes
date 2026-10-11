package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes3.dex */
public class ArcMotion extends PathMotion {

    /* renamed from: g */
    public static final float f10470g = 0.0f;

    /* renamed from: h */
    public static final float f10471h = 70.0f;

    /* renamed from: i */
    public static final float f10472i = (float) Math.tan(Math.toRadians(35.0d));

    /* renamed from: a */
    public float f10473a;

    /* renamed from: b */
    public float f10474b;

    /* renamed from: c */
    public float f10475c;

    /* renamed from: d */
    public float f10476d;

    /* renamed from: e */
    public float f10477e;

    /* renamed from: f */
    public float f10478f;

    public ArcMotion() {
        this.f10473a = 0.0f;
        this.f10474b = 0.0f;
        this.f10475c = 70.0f;
        this.f10476d = 0.0f;
        this.f10477e = 0.0f;
        this.f10478f = f10472i;
    }

    /* renamed from: a */
    public static float m6508a(float f) {
        if (f < 0.0f || f > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f / 2.0f));
    }

    public float getMaximumAngle() {
        return this.f10475c;
    }

    public float getMinimumHorizontalAngle() {
        return this.f10473a;
    }

    public float getMinimumVerticalAngle() {
        return this.f10474b;
    }

    @Override // androidx.transition.PathMotion
    @NonNull
    public Path getPath(float f, float f2, float f3, float f4) {
        float f5;
        float f6;
        float f7;
        Path path = new Path();
        path.moveTo(f, f2);
        float f8 = f3 - f;
        float f9 = f4 - f2;
        float f10 = (f8 * f8) + (f9 * f9);
        float f11 = (f + f3) / 2.0f;
        float f12 = (f2 + f4) / 2.0f;
        float f13 = 0.25f * f10;
        boolean z = f2 > f4;
        if (Math.abs(f8) < Math.abs(f9)) {
            float abs = Math.abs(f10 / (f9 * 2.0f));
            if (z) {
                f6 = abs + f4;
                f5 = f3;
            } else {
                f6 = abs + f2;
                f5 = f;
            }
            f7 = this.f10477e;
        } else {
            float f14 = f10 / (f8 * 2.0f);
            if (z) {
                f6 = f2;
                f5 = f14 + f;
            } else {
                f5 = f3 - f14;
                f6 = f4;
            }
            f7 = this.f10476d;
        }
        float f15 = f13 * f7 * f7;
        float f16 = f11 - f5;
        float f17 = f12 - f6;
        float f18 = (f16 * f16) + (f17 * f17);
        float f19 = this.f10478f;
        float f20 = f13 * f19 * f19;
        if (f18 >= f15) {
            f15 = f18 > f20 ? f20 : 0.0f;
        }
        if (f15 != 0.0f) {
            float sqrt = (float) Math.sqrt(f15 / f18);
            f5 = ((f5 - f11) * sqrt) + f11;
            f6 = f12 + (sqrt * (f6 - f12));
        }
        path.cubicTo((f + f5) / 2.0f, (f2 + f6) / 2.0f, (f5 + f3) / 2.0f, (f6 + f4) / 2.0f, f3, f4);
        return path;
    }

    public void setMaximumAngle(float f) {
        this.f10475c = f;
        this.f10478f = m6508a(f);
    }

    public void setMinimumHorizontalAngle(float f) {
        this.f10473a = f;
        this.f10476d = m6508a(f);
    }

    public void setMinimumVerticalAngle(float f) {
        this.f10474b = f;
        this.f10477e = m6508a(f);
    }

    public ArcMotion(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10473a = 0.0f;
        this.f10474b = 0.0f;
        this.f10475c = 70.0f;
        this.f10476d = 0.0f;
        this.f10477e = 0.0f;
        this.f10478f = f10472i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1513c.f10765j);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        setMinimumVerticalAngle(TypedArrayUtils.getNamedFloat(obtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f));
        setMinimumHorizontalAngle(TypedArrayUtils.getNamedFloat(obtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f));
        setMaximumAngle(TypedArrayUtils.getNamedFloat(obtainStyledAttributes, xmlPullParser, "maximumAngle", 2, 70.0f));
        obtainStyledAttributes.recycle();
    }
}
