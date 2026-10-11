package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import androidx.core.graphics.drawable.DrawableCompat;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sunia.HTREnginev2.C14447ta;
import com.sunia.HTREnginev2.o0o;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.apache.commons.collections4.MapUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class VectorDrawableCompat extends o0o {

    /* renamed from: J */
    public static final int f10839J = 2048;

    /* renamed from: O */
    public static final boolean f10840O = false;

    /* renamed from: o */
    public static final String f10841o = "VectorDrawableCompat";

    /* renamed from: p */
    public static final PorterDuff.Mode f10842p = PorterDuff.Mode.SRC_IN;

    /* renamed from: q */
    public static final String f10843q = "clip-path";

    /* renamed from: r */
    public static final String f10844r = "group";

    /* renamed from: s */
    public static final String f10845s = "path";

    /* renamed from: t */
    public static final String f10846t = "vector";

    /* renamed from: u */
    public static final int f10847u = 0;

    /* renamed from: v */
    public static final int f10848v = 1;

    /* renamed from: w */
    public static final int f10849w = 2;

    /* renamed from: x */
    public static final int f10850x = 0;

    /* renamed from: y */
    public static final int f10851y = 1;

    /* renamed from: z */
    public static final int f10852z = 2;

    /* renamed from: f */
    public C1531h f10853f;

    /* renamed from: g */
    public PorterDuffColorFilter f10854g;

    /* renamed from: h */
    public ColorFilter f10855h;

    /* renamed from: i */
    public boolean f10856i;

    /* renamed from: j */
    public boolean f10857j;

    /* renamed from: k */
    public Drawable.ConstantState f10858k;

    /* renamed from: l */
    public final float[] f10859l;

    /* renamed from: m */
    public final Matrix f10860m;

    /* renamed from: n */
    public final Rect f10861n;

    /* renamed from: androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$b */
    /* loaded from: classes3.dex */
    public static class C1525b extends AbstractC1529f {
        public C1525b() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.AbstractC1529f
        /* renamed from: e */
        public boolean mo6710e() {
            return true;
        }

        /* renamed from: i */
        public void m6711i(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
                TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C14447ta.f85044I);
                m6712j(obtainAttributes, xmlPullParser);
                obtainAttributes.recycle();
            }
        }

        /* renamed from: j */
        public final void m6712j(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f10889b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f10888a = PathParser.createNodesFromPathData(string2);
            }
            this.f10890c = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        public C1525b(C1525b c1525b) {
            super(c1525b);
        }
    }

    /* renamed from: androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$e */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1528e {
        public AbstractC1528e() {
        }

        /* renamed from: a */
        public boolean mo6713a() {
            return false;
        }

        /* renamed from: b */
        public boolean mo6714b(int[] iArr) {
            return false;
        }
    }

    /* renamed from: androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$h */
    /* loaded from: classes3.dex */
    public static class C1531h extends Drawable.ConstantState {

        /* renamed from: a */
        public int f10909a;

        /* renamed from: b */
        public C1530g f10910b;

        /* renamed from: c */
        public ColorStateList f10911c;

        /* renamed from: d */
        public PorterDuff.Mode f10912d;

        /* renamed from: e */
        public boolean f10913e;

        /* renamed from: f */
        public Bitmap f10914f;

        /* renamed from: g */
        public int[] f10915g;

        /* renamed from: h */
        public ColorStateList f10916h;

        /* renamed from: i */
        public PorterDuff.Mode f10917i;

        /* renamed from: j */
        public int f10918j;

        /* renamed from: k */
        public boolean f10919k;

        /* renamed from: l */
        public boolean f10920l;

        /* renamed from: m */
        public Paint f10921m;

        public C1531h(C1531h c1531h) {
            this.f10911c = null;
            this.f10912d = VectorDrawableCompat.f10842p;
            if (c1531h != null) {
                this.f10909a = c1531h.f10909a;
                C1530g c1530g = new C1530g(c1531h.f10910b);
                this.f10910b = c1530g;
                if (c1531h.f10910b.f10897e != null) {
                    c1530g.f10897e = new Paint(c1531h.f10910b.f10897e);
                }
                if (c1531h.f10910b.f10896d != null) {
                    this.f10910b.f10896d = new Paint(c1531h.f10910b.f10896d);
                }
                this.f10911c = c1531h.f10911c;
                this.f10912d = c1531h.f10912d;
                this.f10913e = c1531h.f10913e;
            }
        }

        /* renamed from: a */
        public boolean m6734a(int i, int i2) {
            return i == this.f10914f.getWidth() && i2 == this.f10914f.getHeight();
        }

        /* renamed from: b */
        public boolean m6735b() {
            return !this.f10920l && this.f10916h == this.f10911c && this.f10917i == this.f10912d && this.f10919k == this.f10913e && this.f10918j == this.f10910b.getRootAlpha();
        }

        /* renamed from: c */
        public void m6736c(int i, int i2) {
            if (this.f10914f == null || !m6734a(i, i2)) {
                this.f10914f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.f10920l = true;
            }
        }

        /* renamed from: d */
        public void m6737d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f10914f, (Rect) null, rect, m6738e(colorFilter));
        }

        /* renamed from: e */
        public Paint m6738e(ColorFilter colorFilter) {
            if (!m6739f() && colorFilter == null) {
                return null;
            }
            if (this.f10921m == null) {
                Paint paint = new Paint();
                this.f10921m = paint;
                paint.setFilterBitmap(true);
            }
            this.f10921m.setAlpha(this.f10910b.getRootAlpha());
            this.f10921m.setColorFilter(colorFilter);
            return this.f10921m;
        }

        /* renamed from: f */
        public boolean m6739f() {
            return this.f10910b.getRootAlpha() < 255;
        }

        /* renamed from: g */
        public boolean m6740g() {
            return this.f10910b.m6732f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f10909a;
        }

        /* renamed from: h */
        public boolean m6741h(int[] iArr) {
            boolean m6733g = this.f10910b.m6733g(iArr);
            this.f10920l |= m6733g;
            return m6733g;
        }

        /* renamed from: i */
        public void m6742i() {
            this.f10916h = this.f10911c;
            this.f10917i = this.f10912d;
            this.f10918j = this.f10910b.getRootAlpha();
            this.f10919k = this.f10913e;
            this.f10920l = false;
        }

        /* renamed from: j */
        public void m6743j(int i, int i2) {
            this.f10914f.eraseColor(0);
            this.f10910b.m6728b(new Canvas(this.f10914f), i, i2, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new VectorDrawableCompat(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new VectorDrawableCompat(this);
        }

        public C1531h() {
            this.f10911c = null;
            this.f10912d = VectorDrawableCompat.f10842p;
            this.f10910b = new C1530g();
        }
    }

    public VectorDrawableCompat() {
        this.f10857j = true;
        this.f10859l = new float[9];
        this.f10860m = new Matrix();
        this.f10861n = new Rect();
        this.f10853f = new C1531h();
    }

    /* renamed from: a */
    public static int m6701a(int i, float f) {
        return (i & 16777215) | (((int) (Color.alpha(i) * f)) << 24);
    }

    @Nullable
    public static VectorDrawableCompat create(@NonNull Resources resources, @DrawableRes int i, @Nullable Resources.Theme theme) {
        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
        vectorDrawableCompat.f79205e = ResourcesCompat.getDrawable(resources, i, theme);
        vectorDrawableCompat.f10858k = new C1532i(vectorDrawableCompat.f79205e.getConstantState());
        return vectorDrawableCompat;
    }

    public static VectorDrawableCompat createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
        vectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return vectorDrawableCompat;
    }

    /* renamed from: e */
    public static PorterDuff.Mode m6702e(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    /* renamed from: b */
    public Object m6703b(String str) {
        return this.f10853f.f10910b.f10908p.get(str);
    }

    /* renamed from: c */
    public final void m6704c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C1531h c1531h = this.f10853f;
        C1530g c1530g = c1531h.f10910b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(c1530g.f10900h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                C1527d c1527d = (C1527d) arrayDeque.peek();
                if ("path".equals(name)) {
                    C1526c c1526c = new C1526c();
                    c1526c.m6719k(resources, attributeSet, theme, xmlPullParser);
                    c1527d.f10875b.add(c1526c);
                    if (c1526c.getPathName() != null) {
                        c1530g.f10908p.put(c1526c.getPathName(), c1526c);
                    }
                    c1531h.f10909a = c1526c.f10891d | c1531h.f10909a;
                    z = false;
                } else if (f10843q.equals(name)) {
                    C1525b c1525b = new C1525b();
                    c1525b.m6711i(resources, attributeSet, theme, xmlPullParser);
                    c1527d.f10875b.add(c1525b);
                    if (c1525b.getPathName() != null) {
                        c1530g.f10908p.put(c1525b.getPathName(), c1525b);
                    }
                    c1531h.f10909a = c1525b.f10891d | c1531h.f10909a;
                } else if ("group".equals(name)) {
                    C1527d c1527d2 = new C1527d();
                    c1527d2.m6721c(resources, attributeSet, theme, xmlPullParser);
                    c1527d.f10875b.add(c1527d2);
                    arrayDeque.push(c1527d2);
                    if (c1527d2.getGroupName() != null) {
                        c1530g.f10908p.put(c1527d2.getGroupName(), c1527d2);
                    }
                    c1531h.f10909a = c1527d2.f10884k | c1531h.f10909a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f79205e;
        if (drawable == null) {
            return false;
        }
        DrawableCompat.canApplyTheme(drawable);
        return false;
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    /* renamed from: d */
    public final boolean m6705d() {
        return isAutoMirrored() && DrawableCompat.getLayoutDirection(this) == 1;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f10861n);
        if (this.f10861n.width() <= 0 || this.f10861n.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f10855h;
        if (colorFilter == null) {
            colorFilter = this.f10854g;
        }
        canvas.getMatrix(this.f10860m);
        this.f10860m.getValues(this.f10859l);
        float abs = Math.abs(this.f10859l[0]);
        float abs2 = Math.abs(this.f10859l[4]);
        float abs3 = Math.abs(this.f10859l[1]);
        float abs4 = Math.abs(this.f10859l[3]);
        if (abs3 != 0.0f || abs4 != 0.0f) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int min = Math.min(2048, (int) (this.f10861n.width() * abs));
        int min2 = Math.min(2048, (int) (this.f10861n.height() * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        Rect rect = this.f10861n;
        canvas.translate(rect.left, rect.top);
        if (m6705d()) {
            canvas.translate(this.f10861n.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.f10861n.offsetTo(0, 0);
        this.f10853f.m6736c(min, min2);
        if (!this.f10857j) {
            this.f10853f.m6743j(min, min2);
        } else if (!this.f10853f.m6735b()) {
            this.f10853f.m6743j(min, min2);
            this.f10853f.m6742i();
        }
        this.f10853f.m6737d(canvas, colorFilter, this.f10861n);
        canvas.restoreToCount(save);
    }

    /* renamed from: f */
    public final void m6706f(C1527d c1527d, int i) {
        String str = "";
        for (int i2 = 0; i2 < i; i2++) {
            str = str + MapUtils.f104930a;
        }
        Log.v(f10841o, str + "current group is :" + c1527d.getGroupName() + " rotation is " + c1527d.f10876c);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("matrix is :");
        sb.append(c1527d.getLocalMatrix().toString());
        Log.v(f10841o, sb.toString());
        for (int i3 = 0; i3 < c1527d.f10875b.size(); i3++) {
            AbstractC1528e abstractC1528e = c1527d.f10875b.get(i3);
            if (abstractC1528e instanceof C1527d) {
                m6706f((C1527d) abstractC1528e, i + 1);
            } else {
                ((AbstractC1529f) abstractC1528e).m6725g(i + 1);
            }
        }
    }

    /* renamed from: g */
    public void m6707g(boolean z) {
        this.f10857j = z;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f79205e;
        return drawable != null ? DrawableCompat.getAlpha(drawable) : this.f10853f.f10910b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return this.f10853f.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f79205e;
        return drawable != null ? DrawableCompat.getColorFilter(drawable) : this.f10855h;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f79205e != null) {
            return new C1532i(this.f79205e.getConstantState());
        }
        this.f10853f.f10909a = getChangingConfigurations();
        return this.f10853f;
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f79205e;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f10853f.f10910b.f10902j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f79205e;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f10853f.f10910b.f10901i;
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public float getPixelSize() {
        C1530g c1530g;
        C1531h c1531h = this.f10853f;
        if (c1531h == null || (c1530g = c1531h.f10910b) == null) {
            return 1.0f;
        }
        float f = c1530g.f10901i;
        if (f == 0.0f) {
            return 1.0f;
        }
        float f2 = c1530g.f10902j;
        if (f2 == 0.0f) {
            return 1.0f;
        }
        float f3 = c1530g.f10904l;
        if (f3 == 0.0f) {
            return 1.0f;
        }
        float f4 = c1530g.f10903k;
        if (f4 == 0.0f) {
            return 1.0f;
        }
        return Math.min(f4 / f, f3 / f2);
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    /* renamed from: h */
    public final void m6708h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        C1531h c1531h = this.f10853f;
        C1530g c1530g = c1531h.f10910b;
        c1531h.f10912d = m6702e(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList namedColorStateList = TypedArrayUtils.getNamedColorStateList(typedArray, xmlPullParser, theme, "tint", 1);
        if (namedColorStateList != null) {
            c1531h.f10911c = namedColorStateList;
        }
        c1531h.f10913e = TypedArrayUtils.getNamedBoolean(typedArray, xmlPullParser, "autoMirrored", 5, c1531h.f10913e);
        c1530g.f10903k = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "viewportWidth", 7, c1530g.f10903k);
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "viewportHeight", 8, c1530g.f10904l);
        c1530g.f10904l = namedFloat;
        if (c1530g.f10903k <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (namedFloat <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        c1530g.f10901i = typedArray.getDimension(3, c1530g.f10901i);
        float dimension = typedArray.getDimension(2, c1530g.f10902j);
        c1530g.f10902j = dimension;
        if (c1530g.f10901i <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        c1530g.setAlpha(TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "alpha", 4, c1530g.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            c1530g.f10906n = string;
            c1530g.f10908p.put(string, c1530g);
        }
    }

    /* renamed from: i */
    public PorterDuffColorFilter m6709i(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f79205e;
        return drawable != null ? DrawableCompat.isAutoMirrored(drawable) : this.f10853f.f10913e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C1531h c1531h;
        ColorStateList colorStateList;
        Drawable drawable = this.f79205e;
        return drawable != null ? drawable.isStateful() : super.isStateful() || ((c1531h = this.f10853f) != null && (c1531h.m6740g() || ((colorStateList = this.f10853f.f10911c) != null && colorStateList.isStateful())));
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f10856i && super.mutate() == this) {
            this.f10853f = new C1531h(this.f10853f);
            this.f10856i = true;
        }
        return this;
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        C1531h c1531h = this.f10853f;
        ColorStateList colorStateList = c1531h.f10911c;
        if (colorStateList == null || (mode = c1531h.f10912d) == null) {
            z = false;
        } else {
            this.f10854g = m6709i(this.f10854g, colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        if (!c1531h.m6740g() || !c1531h.m6741h(iArr)) {
            return z;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.f10853f.f10910b.getRootAlpha() != i) {
            this.f10853f.f10910b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            DrawableCompat.setAutoMirrored(drawable, z);
        } else {
            this.f10853f.f10913e = z;
        }
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // com.sunia.HTREnginev2.o0o, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            DrawableCompat.setTint(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
            return;
        }
        C1531h c1531h = this.f10853f;
        if (c1531h.f10911c != colorStateList) {
            c1531h.f10911c = colorStateList;
            this.f10854g = m6709i(this.f10854g, colorStateList, c1531h.f10912d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            DrawableCompat.setTintMode(drawable, mode);
            return;
        }
        C1531h c1531h = this.f10853f;
        if (c1531h.f10912d != mode) {
            c1531h.f10912d = mode;
            this.f10854g = m6709i(this.f10854g, c1531h.f10911c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f79205e;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$i */
    /* loaded from: classes3.dex */
    public static class C1532i extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f10922a;

        public C1532i(Drawable.ConstantState constantState) {
            this.f10922a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f10922a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f10922a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f79205e = (VectorDrawable) this.f10922a.newDrawable();
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f79205e = (VectorDrawable) this.f10922a.newDrawable(resources);
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f79205e = (VectorDrawable) this.f10922a.newDrawable(resources, theme);
            return vectorDrawableCompat;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f10855h = colorFilter;
            invalidateSelf();
        }
    }

    /* renamed from: androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$f */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1529f extends AbstractC1528e {

        /* renamed from: e */
        public static final int f10887e = 0;

        /* renamed from: a */
        public PathParser.PathDataNode[] f10888a;

        /* renamed from: b */
        public String f10889b;

        /* renamed from: c */
        public int f10890c;

        /* renamed from: d */
        public int f10891d;

        public AbstractC1529f() {
            super();
            this.f10888a = null;
            this.f10890c = 0;
        }

        /* renamed from: c */
        public void mo6715c(Resources.Theme theme) {
        }

        /* renamed from: d */
        public boolean mo6716d() {
            return false;
        }

        /* renamed from: e */
        public boolean mo6710e() {
            return false;
        }

        /* renamed from: f */
        public String m6724f(PathParser.PathDataNode[] pathDataNodeArr) {
            String str = " ";
            for (int i = 0; i < pathDataNodeArr.length; i++) {
                str = str + pathDataNodeArr[i].f5392a + ":";
                for (float f : pathDataNodeArr[i].f5393b) {
                    str = str + f + ",";
                }
            }
            return str;
        }

        /* renamed from: g */
        public void m6725g(int i) {
            String str = "";
            for (int i2 = 0; i2 < i; i2++) {
                str = str + MapUtils.f104930a;
            }
            Log.v(VectorDrawableCompat.f10841o, str + "current path is :" + this.f10889b + " pathData is " + m6724f(this.f10888a));
        }

        public PathParser.PathDataNode[] getPathData() {
            return this.f10888a;
        }

        public String getPathName() {
            return this.f10889b;
        }

        /* renamed from: h */
        public void m6726h(Path path) {
            path.reset();
            PathParser.PathDataNode[] pathDataNodeArr = this.f10888a;
            if (pathDataNodeArr != null) {
                PathParser.PathDataNode.nodesToPath(pathDataNodeArr, path);
            }
        }

        public void setPathData(PathParser.PathDataNode[] pathDataNodeArr) {
            if (PathParser.canMorph(this.f10888a, pathDataNodeArr)) {
                PathParser.updateNodes(this.f10888a, pathDataNodeArr);
            } else {
                this.f10888a = PathParser.deepCopyNodes(pathDataNodeArr);
            }
        }

        public AbstractC1529f(AbstractC1529f abstractC1529f) {
            super();
            this.f10888a = null;
            this.f10890c = 0;
            this.f10889b = abstractC1529f.f10889b;
            this.f10891d = abstractC1529f.f10891d;
            this.f10888a = PathParser.deepCopyNodes(abstractC1529f.f10888a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f79205e;
        if (drawable != null) {
            DrawableCompat.inflate(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C1531h c1531h = this.f10853f;
        c1531h.f10910b = new C1530g();
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C14447ta.f85062a);
        m6708h(obtainAttributes, xmlPullParser, theme);
        obtainAttributes.recycle();
        c1531h.f10909a = getChangingConfigurations();
        c1531h.f10920l = true;
        m6704c(resources, xmlPullParser, attributeSet, theme);
        this.f10854g = m6709i(this.f10854g, c1531h.f10911c, c1531h.f10912d);
    }

    public VectorDrawableCompat(@NonNull C1531h c1531h) {
        this.f10857j = true;
        this.f10859l = new float[9];
        this.f10860m = new Matrix();
        this.f10861n = new Rect();
        this.f10853f = c1531h;
        this.f10854g = m6709i(this.f10854g, c1531h.f10911c, c1531h.f10912d);
    }

    /* renamed from: androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$c */
    /* loaded from: classes3.dex */
    public static class C1526c extends AbstractC1529f {

        /* renamed from: f */
        public int[] f10862f;

        /* renamed from: g */
        public ComplexColorCompat f10863g;

        /* renamed from: h */
        public float f10864h;

        /* renamed from: i */
        public ComplexColorCompat f10865i;

        /* renamed from: j */
        public float f10866j;

        /* renamed from: k */
        public float f10867k;

        /* renamed from: l */
        public float f10868l;

        /* renamed from: m */
        public float f10869m;

        /* renamed from: n */
        public float f10870n;

        /* renamed from: o */
        public Paint.Cap f10871o;

        /* renamed from: p */
        public Paint.Join f10872p;

        /* renamed from: q */
        public float f10873q;

        public C1526c() {
            this.f10864h = 0.0f;
            this.f10866j = 1.0f;
            this.f10867k = 1.0f;
            this.f10868l = 0.0f;
            this.f10869m = 1.0f;
            this.f10870n = 0.0f;
            this.f10871o = Paint.Cap.BUTT;
            this.f10872p = Paint.Join.MITER;
            this.f10873q = 4.0f;
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.AbstractC1528e
        /* renamed from: a */
        public boolean mo6713a() {
            return this.f10865i.isStateful() || this.f10863g.isStateful();
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.AbstractC1528e
        /* renamed from: b */
        public boolean mo6714b(int[] iArr) {
            return this.f10863g.onStateChanged(iArr) | this.f10865i.onStateChanged(iArr);
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.AbstractC1529f
        /* renamed from: c */
        public void mo6715c(Resources.Theme theme) {
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.AbstractC1529f
        /* renamed from: d */
        public boolean mo6716d() {
            return this.f10862f != null;
        }

        public float getFillAlpha() {
            return this.f10867k;
        }

        @ColorInt
        public int getFillColor() {
            return this.f10865i.getColor();
        }

        public float getStrokeAlpha() {
            return this.f10866j;
        }

        @ColorInt
        public int getStrokeColor() {
            return this.f10863g.getColor();
        }

        public float getStrokeWidth() {
            return this.f10864h;
        }

        public float getTrimPathEnd() {
            return this.f10869m;
        }

        public float getTrimPathOffset() {
            return this.f10870n;
        }

        public float getTrimPathStart() {
            return this.f10868l;
        }

        /* renamed from: i */
        public final Paint.Cap m6717i(int i, Paint.Cap cap) {
            return i != 0 ? i != 1 ? i != 2 ? cap : Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }

        /* renamed from: j */
        public final Paint.Join m6718j(int i, Paint.Join join) {
            return i != 0 ? i != 1 ? i != 2 ? join : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER;
        }

        /* renamed from: k */
        public void m6719k(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C14447ta.f85100t);
            m6720l(obtainAttributes, xmlPullParser, theme);
            obtainAttributes.recycle();
        }

        /* renamed from: l */
        public final void m6720l(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f10862f = null;
            if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f10889b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f10888a = PathParser.createNodesFromPathData(string2);
                }
                this.f10865i = TypedArrayUtils.getNamedComplexColor(typedArray, xmlPullParser, theme, CouchFieldKey.KEY_FILL_COLOR, 1, 0);
                this.f10867k = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "fillAlpha", 12, this.f10867k);
                this.f10871o = m6717i(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f10871o);
                this.f10872p = m6718j(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f10872p);
                this.f10873q = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f10873q);
                this.f10863g = TypedArrayUtils.getNamedComplexColor(typedArray, xmlPullParser, theme, ApiBroadCastReceiver.ARGS_STROKE_COLOR, 3, 0);
                this.f10866j = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeAlpha", 11, this.f10866j);
                this.f10864h = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, ApiBroadCastReceiver.ARGS_STROKE_WIDTH, 4, this.f10864h);
                this.f10869m = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathEnd", 6, this.f10869m);
                this.f10870n = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathOffset", 7, this.f10870n);
                this.f10868l = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathStart", 5, this.f10868l);
                this.f10890c = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "fillType", 13, this.f10890c);
            }
        }

        public void setFillAlpha(float f) {
            this.f10867k = f;
        }

        public void setFillColor(int i) {
            this.f10865i.setColor(i);
        }

        public void setStrokeAlpha(float f) {
            this.f10866j = f;
        }

        public void setStrokeColor(int i) {
            this.f10863g.setColor(i);
        }

        public void setStrokeWidth(float f) {
            this.f10864h = f;
        }

        public void setTrimPathEnd(float f) {
            this.f10869m = f;
        }

        public void setTrimPathOffset(float f) {
            this.f10870n = f;
        }

        public void setTrimPathStart(float f) {
            this.f10868l = f;
        }

        public C1526c(C1526c c1526c) {
            super(c1526c);
            this.f10864h = 0.0f;
            this.f10866j = 1.0f;
            this.f10867k = 1.0f;
            this.f10868l = 0.0f;
            this.f10869m = 1.0f;
            this.f10870n = 0.0f;
            this.f10871o = Paint.Cap.BUTT;
            this.f10872p = Paint.Join.MITER;
            this.f10873q = 4.0f;
            this.f10862f = c1526c.f10862f;
            this.f10863g = c1526c.f10863g;
            this.f10864h = c1526c.f10864h;
            this.f10866j = c1526c.f10866j;
            this.f10865i = c1526c.f10865i;
            this.f10890c = c1526c.f10890c;
            this.f10867k = c1526c.f10867k;
            this.f10868l = c1526c.f10868l;
            this.f10869m = c1526c.f10869m;
            this.f10870n = c1526c.f10870n;
            this.f10871o = c1526c.f10871o;
            this.f10872p = c1526c.f10872p;
            this.f10873q = c1526c.f10873q;
        }
    }

    /* renamed from: androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$g */
    /* loaded from: classes3.dex */
    public static class C1530g {

        /* renamed from: q */
        public static final Matrix f10892q = new Matrix();

        /* renamed from: a */
        public final Path f10893a;

        /* renamed from: b */
        public final Path f10894b;

        /* renamed from: c */
        public final Matrix f10895c;

        /* renamed from: d */
        public Paint f10896d;

        /* renamed from: e */
        public Paint f10897e;

        /* renamed from: f */
        public PathMeasure f10898f;

        /* renamed from: g */
        public int f10899g;

        /* renamed from: h */
        public final C1527d f10900h;

        /* renamed from: i */
        public float f10901i;

        /* renamed from: j */
        public float f10902j;

        /* renamed from: k */
        public float f10903k;

        /* renamed from: l */
        public float f10904l;

        /* renamed from: m */
        public int f10905m;

        /* renamed from: n */
        public String f10906n;

        /* renamed from: o */
        public Boolean f10907o;

        /* renamed from: p */
        public final ArrayMap<String, Object> f10908p;

        public C1530g() {
            this.f10895c = new Matrix();
            this.f10901i = 0.0f;
            this.f10902j = 0.0f;
            this.f10903k = 0.0f;
            this.f10904l = 0.0f;
            this.f10905m = 255;
            this.f10906n = null;
            this.f10907o = null;
            this.f10908p = new ArrayMap<>();
            this.f10900h = new C1527d();
            this.f10893a = new Path();
            this.f10894b = new Path();
        }

        /* renamed from: a */
        public static float m6727a(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        /* renamed from: b */
        public void m6728b(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            m6729c(this.f10900h, f10892q, canvas, i, i2, colorFilter);
        }

        /* renamed from: c */
        public final void m6729c(C1527d c1527d, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            c1527d.f10874a.set(matrix);
            c1527d.f10874a.preConcat(c1527d.f10883j);
            canvas.save();
            for (int i3 = 0; i3 < c1527d.f10875b.size(); i3++) {
                AbstractC1528e abstractC1528e = c1527d.f10875b.get(i3);
                if (abstractC1528e instanceof C1527d) {
                    m6729c((C1527d) abstractC1528e, c1527d.f10874a, canvas, i, i2, colorFilter);
                } else if (abstractC1528e instanceof AbstractC1529f) {
                    m6730d(c1527d, (AbstractC1529f) abstractC1528e, canvas, i, i2, colorFilter);
                }
            }
            canvas.restore();
        }

        /* renamed from: d */
        public final void m6730d(C1527d c1527d, AbstractC1529f abstractC1529f, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            float f = i / this.f10903k;
            float f2 = i2 / this.f10904l;
            float min = Math.min(f, f2);
            Matrix matrix = c1527d.f10874a;
            this.f10895c.set(matrix);
            this.f10895c.postScale(f, f2);
            float m6731e = m6731e(matrix);
            if (m6731e == 0.0f) {
                return;
            }
            abstractC1529f.m6726h(this.f10893a);
            Path path = this.f10893a;
            this.f10894b.reset();
            if (abstractC1529f.mo6710e()) {
                this.f10894b.setFillType(abstractC1529f.f10890c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f10894b.addPath(path, this.f10895c);
                canvas.clipPath(this.f10894b);
                return;
            }
            C1526c c1526c = (C1526c) abstractC1529f;
            float f3 = c1526c.f10868l;
            if (f3 != 0.0f || c1526c.f10869m != 1.0f) {
                float f4 = c1526c.f10870n;
                float f5 = (f3 + f4) % 1.0f;
                float f6 = (c1526c.f10869m + f4) % 1.0f;
                if (this.f10898f == null) {
                    this.f10898f = new PathMeasure();
                }
                this.f10898f.setPath(this.f10893a, false);
                float length = this.f10898f.getLength();
                float f7 = f5 * length;
                float f8 = f6 * length;
                path.reset();
                if (f7 > f8) {
                    this.f10898f.getSegment(f7, length, path, true);
                    this.f10898f.getSegment(0.0f, f8, path, true);
                } else {
                    this.f10898f.getSegment(f7, f8, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.f10894b.addPath(path, this.f10895c);
            if (c1526c.f10865i.willDraw()) {
                ComplexColorCompat complexColorCompat = c1526c.f10865i;
                if (this.f10897e == null) {
                    Paint paint = new Paint(1);
                    this.f10897e = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.f10897e;
                if (complexColorCompat.isGradient()) {
                    Shader shader = complexColorCompat.getShader();
                    shader.setLocalMatrix(this.f10895c);
                    paint2.setShader(shader);
                    paint2.setAlpha(Math.round(c1526c.f10867k * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(VectorDrawableCompat.m6701a(complexColorCompat.getColor(), c1526c.f10867k));
                }
                paint2.setColorFilter(colorFilter);
                this.f10894b.setFillType(c1526c.f10890c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f10894b, paint2);
            }
            if (c1526c.f10863g.willDraw()) {
                ComplexColorCompat complexColorCompat2 = c1526c.f10863g;
                if (this.f10896d == null) {
                    Paint paint3 = new Paint(1);
                    this.f10896d = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                Paint paint4 = this.f10896d;
                Paint.Join join = c1526c.f10872p;
                if (join != null) {
                    paint4.setStrokeJoin(join);
                }
                Paint.Cap cap = c1526c.f10871o;
                if (cap != null) {
                    paint4.setStrokeCap(cap);
                }
                paint4.setStrokeMiter(c1526c.f10873q);
                if (complexColorCompat2.isGradient()) {
                    Shader shader2 = complexColorCompat2.getShader();
                    shader2.setLocalMatrix(this.f10895c);
                    paint4.setShader(shader2);
                    paint4.setAlpha(Math.round(c1526c.f10866j * 255.0f));
                } else {
                    paint4.setShader(null);
                    paint4.setAlpha(255);
                    paint4.setColor(VectorDrawableCompat.m6701a(complexColorCompat2.getColor(), c1526c.f10866j));
                }
                paint4.setColorFilter(colorFilter);
                paint4.setStrokeWidth(c1526c.f10864h * min * m6731e);
                canvas.drawPath(this.f10894b, paint4);
            }
        }

        /* renamed from: e */
        public final float m6731e(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float hypot = (float) Math.hypot(fArr[0], fArr[1]);
            float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float m6727a = m6727a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max(hypot, hypot2);
            if (max > 0.0f) {
                return Math.abs(m6727a) / max;
            }
            return 0.0f;
        }

        /* renamed from: f */
        public boolean m6732f() {
            if (this.f10907o == null) {
                this.f10907o = Boolean.valueOf(this.f10900h.mo6713a());
            }
            return this.f10907o.booleanValue();
        }

        /* renamed from: g */
        public boolean m6733g(int[] iArr) {
            return this.f10900h.mo6714b(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f10905m;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.f10905m = i;
        }

        public C1530g(C1530g c1530g) {
            this.f10895c = new Matrix();
            this.f10901i = 0.0f;
            this.f10902j = 0.0f;
            this.f10903k = 0.0f;
            this.f10904l = 0.0f;
            this.f10905m = 255;
            this.f10906n = null;
            this.f10907o = null;
            ArrayMap<String, Object> arrayMap = new ArrayMap<>();
            this.f10908p = arrayMap;
            this.f10900h = new C1527d(c1530g.f10900h, arrayMap);
            this.f10893a = new Path(c1530g.f10893a);
            this.f10894b = new Path(c1530g.f10894b);
            this.f10901i = c1530g.f10901i;
            this.f10902j = c1530g.f10902j;
            this.f10903k = c1530g.f10903k;
            this.f10904l = c1530g.f10904l;
            this.f10899g = c1530g.f10899g;
            this.f10905m = c1530g.f10905m;
            this.f10906n = c1530g.f10906n;
            String str = c1530g.f10906n;
            if (str != null) {
                arrayMap.put(str, this);
            }
            this.f10907o = c1530g.f10907o;
        }
    }

    /* renamed from: androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$d */
    /* loaded from: classes3.dex */
    public static class C1527d extends AbstractC1528e {

        /* renamed from: a */
        public final Matrix f10874a;

        /* renamed from: b */
        public final ArrayList<AbstractC1528e> f10875b;

        /* renamed from: c */
        public float f10876c;

        /* renamed from: d */
        public float f10877d;

        /* renamed from: e */
        public float f10878e;

        /* renamed from: f */
        public float f10879f;

        /* renamed from: g */
        public float f10880g;

        /* renamed from: h */
        public float f10881h;

        /* renamed from: i */
        public float f10882i;

        /* renamed from: j */
        public final Matrix f10883j;

        /* renamed from: k */
        public int f10884k;

        /* renamed from: l */
        public int[] f10885l;

        /* renamed from: m */
        public String f10886m;

        public C1527d(C1527d c1527d, ArrayMap<String, Object> arrayMap) {
            super();
            AbstractC1529f c1525b;
            this.f10874a = new Matrix();
            this.f10875b = new ArrayList<>();
            this.f10876c = 0.0f;
            this.f10877d = 0.0f;
            this.f10878e = 0.0f;
            this.f10879f = 1.0f;
            this.f10880g = 1.0f;
            this.f10881h = 0.0f;
            this.f10882i = 0.0f;
            Matrix matrix = new Matrix();
            this.f10883j = matrix;
            this.f10886m = null;
            this.f10876c = c1527d.f10876c;
            this.f10877d = c1527d.f10877d;
            this.f10878e = c1527d.f10878e;
            this.f10879f = c1527d.f10879f;
            this.f10880g = c1527d.f10880g;
            this.f10881h = c1527d.f10881h;
            this.f10882i = c1527d.f10882i;
            this.f10885l = c1527d.f10885l;
            String str = c1527d.f10886m;
            this.f10886m = str;
            this.f10884k = c1527d.f10884k;
            if (str != null) {
                arrayMap.put(str, this);
            }
            matrix.set(c1527d.f10883j);
            ArrayList<AbstractC1528e> arrayList = c1527d.f10875b;
            for (int i = 0; i < arrayList.size(); i++) {
                AbstractC1528e abstractC1528e = arrayList.get(i);
                if (abstractC1528e instanceof C1527d) {
                    this.f10875b.add(new C1527d((C1527d) abstractC1528e, arrayMap));
                } else {
                    if (abstractC1528e instanceof C1526c) {
                        c1525b = new C1526c((C1526c) abstractC1528e);
                    } else if (abstractC1528e instanceof C1525b) {
                        c1525b = new C1525b((C1525b) abstractC1528e);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.f10875b.add(c1525b);
                    String str2 = c1525b.f10889b;
                    if (str2 != null) {
                        arrayMap.put(str2, c1525b);
                    }
                }
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.AbstractC1528e
        /* renamed from: a */
        public boolean mo6713a() {
            for (int i = 0; i < this.f10875b.size(); i++) {
                if (this.f10875b.get(i).mo6713a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.AbstractC1528e
        /* renamed from: b */
        public boolean mo6714b(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f10875b.size(); i++) {
                z |= this.f10875b.get(i).mo6714b(iArr);
            }
            return z;
        }

        /* renamed from: c */
        public void m6721c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C14447ta.f85082k);
            m6723e(obtainAttributes, xmlPullParser);
            obtainAttributes.recycle();
        }

        /* renamed from: d */
        public final void m6722d() {
            this.f10883j.reset();
            this.f10883j.postTranslate(-this.f10877d, -this.f10878e);
            this.f10883j.postScale(this.f10879f, this.f10880g);
            this.f10883j.postRotate(this.f10876c, 0.0f, 0.0f);
            this.f10883j.postTranslate(this.f10881h + this.f10877d, this.f10882i + this.f10878e);
        }

        /* renamed from: e */
        public final void m6723e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f10885l = null;
            this.f10876c = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "rotation", 5, this.f10876c);
            this.f10877d = typedArray.getFloat(1, this.f10877d);
            this.f10878e = typedArray.getFloat(2, this.f10878e);
            this.f10879f = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "scaleX", 3, this.f10879f);
            this.f10880g = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "scaleY", 4, this.f10880g);
            this.f10881h = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "translateX", 6, this.f10881h);
            this.f10882i = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "translateY", 7, this.f10882i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f10886m = string;
            }
            m6722d();
        }

        public String getGroupName() {
            return this.f10886m;
        }

        public Matrix getLocalMatrix() {
            return this.f10883j;
        }

        public float getPivotX() {
            return this.f10877d;
        }

        public float getPivotY() {
            return this.f10878e;
        }

        public float getRotation() {
            return this.f10876c;
        }

        public float getScaleX() {
            return this.f10879f;
        }

        public float getScaleY() {
            return this.f10880g;
        }

        public float getTranslateX() {
            return this.f10881h;
        }

        public float getTranslateY() {
            return this.f10882i;
        }

        public void setPivotX(float f) {
            if (f != this.f10877d) {
                this.f10877d = f;
                m6722d();
            }
        }

        public void setPivotY(float f) {
            if (f != this.f10878e) {
                this.f10878e = f;
                m6722d();
            }
        }

        public void setRotation(float f) {
            if (f != this.f10876c) {
                this.f10876c = f;
                m6722d();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f10879f) {
                this.f10879f = f;
                m6722d();
            }
        }

        public void setScaleY(float f) {
            if (f != this.f10880g) {
                this.f10880g = f;
                m6722d();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.f10881h) {
                this.f10881h = f;
                m6722d();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.f10882i) {
                this.f10882i = f;
                m6722d();
            }
        }

        public C1527d() {
            super();
            this.f10874a = new Matrix();
            this.f10875b = new ArrayList<>();
            this.f10876c = 0.0f;
            this.f10877d = 0.0f;
            this.f10878e = 0.0f;
            this.f10879f = 1.0f;
            this.f10880g = 1.0f;
            this.f10881h = 0.0f;
            this.f10882i = 0.0f;
            this.f10883j = new Matrix();
            this.f10886m = null;
        }
    }
}
