package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes3.dex */
public class PatternPathMotion extends PathMotion {

    /* renamed from: a */
    public Path f10599a;

    /* renamed from: b */
    @NonNull
    public final Path f10600b;

    /* renamed from: c */
    public final Matrix f10601c;

    public PatternPathMotion() {
        Path path = new Path();
        this.f10600b = path;
        this.f10601c = new Matrix();
        path.lineTo(1.0f, 0.0f);
        this.f10599a = path;
    }

    /* renamed from: a */
    public static float m6564a(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    @Override // androidx.transition.PathMotion
    @NonNull
    public Path getPath(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float m6564a = m6564a(f5, f6);
        double atan2 = Math.atan2(f6, f5);
        this.f10601c.setScale(m6564a, m6564a);
        this.f10601c.postRotate((float) Math.toDegrees(atan2));
        this.f10601c.postTranslate(f, f2);
        Path path = new Path();
        this.f10600b.transform(this.f10601c, path);
        return path;
    }

    @NonNull
    public Path getPatternPath() {
        return this.f10599a;
    }

    public void setPatternPath(@NonNull Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[2];
        pathMeasure.getPosTan(pathMeasure.getLength(), fArr, null);
        float f = fArr[0];
        float f2 = fArr[1];
        pathMeasure.getPosTan(0.0f, fArr, null);
        float f3 = fArr[0];
        float f4 = fArr[1];
        if (f3 == f && f4 == f2) {
            throw new IllegalArgumentException("pattern must not end at the starting point");
        }
        this.f10601c.setTranslate(-f3, -f4);
        float f5 = f - f3;
        float f6 = f2 - f4;
        float m6564a = 1.0f / m6564a(f5, f6);
        this.f10601c.postScale(m6564a, m6564a);
        this.f10601c.postRotate((float) Math.toDegrees(-Math.atan2(f6, f5)));
        path.transform(this.f10601c, this.f10600b);
        this.f10599a = path;
    }

    public PatternPathMotion(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        this.f10600b = new Path();
        this.f10601c = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1513c.f10766k);
        try {
            String namedString = TypedArrayUtils.getNamedString(obtainStyledAttributes, (XmlPullParser) attributeSet, "patternPathData", 0);
            if (namedString != null) {
                setPatternPath(PathParser.createPathFromPathData(namedString));
                return;
            }
            throw new RuntimeException("pathData must be supplied for patternPathMotion");
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public PatternPathMotion(@NonNull Path path) {
        this.f10600b = new Path();
        this.f10601c = new Matrix();
        setPatternPath(path);
    }
}
