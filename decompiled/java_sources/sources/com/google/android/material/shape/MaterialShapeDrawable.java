package com.google.android.material.shape;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import com.google.android.material.C5139R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.shadow.ShadowRenderer;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.ShapePath;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.BitSet;

/* loaded from: classes6.dex */
public class MaterialShapeDrawable extends Drawable implements TintAwareDrawable, Shapeable {

    /* renamed from: O */
    public static final String f32204O = "MaterialShapeDrawable";

    /* renamed from: Q */
    public static final float f32205Q = 0.75f;
    public static final int SHADOW_COMPAT_MODE_ALWAYS = 2;
    public static final int SHADOW_COMPAT_MODE_DEFAULT = 0;
    public static final int SHADOW_COMPAT_MODE_NEVER = 1;

    /* renamed from: Z */
    public static final float f32206Z = 0.25f;

    /* renamed from: k0 */
    public static final Paint f32207k0;

    /* renamed from: J */
    public boolean f32208J;

    /* renamed from: e */
    public MaterialShapeDrawableState f32209e;

    /* renamed from: f */
    public final ShapePath.AbstractC5377e[] f32210f;

    /* renamed from: g */
    public final ShapePath.AbstractC5377e[] f32211g;

    /* renamed from: h */
    public final BitSet f32212h;

    /* renamed from: i */
    public boolean f32213i;

    /* renamed from: j */
    public final Matrix f32214j;

    /* renamed from: k */
    public final Path f32215k;

    /* renamed from: l */
    public final Path f32216l;

    /* renamed from: m */
    public final RectF f32217m;

    /* renamed from: n */
    public final RectF f32218n;

    /* renamed from: o */
    public final Region f32219o;

    /* renamed from: p */
    public final Region f32220p;

    /* renamed from: q */
    public ShapeAppearanceModel f32221q;

    /* renamed from: r */
    public final Paint f32222r;

    /* renamed from: s */
    public final Paint f32223s;

    /* renamed from: t */
    public final ShadowRenderer f32224t;

    /* renamed from: u */
    @NonNull
    public final ShapeAppearancePathProvider.PathListener f32225u;

    /* renamed from: v */
    public final ShapeAppearancePathProvider f32226v;

    /* renamed from: w */
    @Nullable
    public PorterDuffColorFilter f32227w;

    /* renamed from: x */
    @Nullable
    public PorterDuffColorFilter f32228x;

    /* renamed from: y */
    public int f32229y;

    /* renamed from: z */
    @NonNull
    public final RectF f32230z;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface CompatibilityShadowMode {
    }

    /* renamed from: com.google.android.material.shape.MaterialShapeDrawable$a */
    /* loaded from: classes6.dex */
    public class C5368a implements ShapeAppearancePathProvider.PathListener {
        public C5368a() {
        }

        @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
        public void onCornerPathCreated(@NonNull ShapePath shapePath, Matrix matrix, int i) {
            MaterialShapeDrawable.this.f32212h.set(i, shapePath.m24767c());
            MaterialShapeDrawable.this.f32210f[i] = shapePath.m24768d(matrix);
        }

        @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
        public void onEdgePathCreated(@NonNull ShapePath shapePath, Matrix matrix, int i) {
            MaterialShapeDrawable.this.f32212h.set(i + 4, shapePath.m24767c());
            MaterialShapeDrawable.this.f32211g[i] = shapePath.m24768d(matrix);
        }
    }

    /* renamed from: com.google.android.material.shape.MaterialShapeDrawable$b */
    /* loaded from: classes6.dex */
    public class C5369b implements ShapeAppearanceModel.CornerSizeUnaryOperator {

        /* renamed from: a */
        public final /* synthetic */ float f32254a;

        public C5369b(float f) {
            this.f32254a = f;
        }

        @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
        @NonNull
        public CornerSize apply(@NonNull CornerSize cornerSize) {
            return cornerSize instanceof RelativeCornerSize ? cornerSize : new AdjustedCornerSize(this.f32254a, cornerSize);
        }
    }

    static {
        Paint paint = new Paint(1);
        f32207k0 = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public MaterialShapeDrawable() {
        this(new ShapeAppearanceModel());
    }

    @NonNull
    public static MaterialShapeDrawable createWithElevationOverlay(Context context) {
        return createWithElevationOverlay(context, 0.0f);
    }

    /* renamed from: t */
    public static int m24713t(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void calculatePathForSize(@NonNull RectF rectF, @NonNull Path path) {
        ShapeAppearancePathProvider shapeAppearancePathProvider = this.f32226v;
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        shapeAppearancePathProvider.calculatePath(materialShapeDrawableState.f32231a, materialShapeDrawableState.f32241k, rectF, this.f32225u, path);
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int compositeElevationOverlayIfNeeded(@ColorInt int i) {
        float z = getZ() + getParentAbsoluteElevation();
        ElevationOverlayProvider elevationOverlayProvider = this.f32209e.f32232b;
        return elevationOverlayProvider != null ? elevationOverlayProvider.compositeOverlayIfNeeded(i, z) : i;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f32222r.setColorFilter(this.f32227w);
        int alpha = this.f32222r.getAlpha();
        this.f32222r.setAlpha(m24713t(alpha, this.f32209e.f32243m));
        this.f32223s.setColorFilter(this.f32228x);
        this.f32223s.setStrokeWidth(this.f32209e.f32242l);
        int alpha2 = this.f32223s.getAlpha();
        this.f32223s.setAlpha(m24713t(alpha2, this.f32209e.f32243m));
        if (this.f32213i) {
            m24716g();
            m24715f(getBoundsAsRectF(), this.f32215k);
            this.f32213i = false;
        }
        m24728s(canvas);
        if (m24725p()) {
            m24720k(canvas);
        }
        if (m24726q()) {
            drawStrokeShape(canvas);
        }
        this.f32222r.setAlpha(alpha);
        this.f32223s.setAlpha(alpha2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void drawShape(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull RectF rectF) {
        m24721l(canvas, paint, path, this.f32209e.f32231a, rectF);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void drawStrokeShape(@NonNull Canvas canvas) {
        m24721l(canvas, this.f32223s, this.f32216l, this.f32221q, m24722m());
    }

    @Nullable
    /* renamed from: e */
    public final PorterDuffColorFilter m24714e(@NonNull Paint paint, boolean z) {
        if (!z) {
            return null;
        }
        int color = paint.getColor();
        int compositeElevationOverlayIfNeeded = compositeElevationOverlayIfNeeded(color);
        this.f32229y = compositeElevationOverlayIfNeeded;
        if (compositeElevationOverlayIfNeeded != color) {
            return new PorterDuffColorFilter(compositeElevationOverlayIfNeeded, PorterDuff.Mode.SRC_IN);
        }
        return null;
    }

    /* renamed from: f */
    public final void m24715f(@NonNull RectF rectF, @NonNull Path path) {
        calculatePathForSize(rectF, path);
        if (this.f32209e.f32240j != 1.0f) {
            this.f32214j.reset();
            Matrix matrix = this.f32214j;
            float f = this.f32209e.f32240j;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f32214j);
        }
        path.computeBounds(this.f32230z, true);
    }

    /* renamed from: g */
    public final void m24716g() {
        ShapeAppearanceModel withTransformedCornerSizes = getShapeAppearanceModel().withTransformedCornerSizes(new C5369b(-m24723n()));
        this.f32221q = withTransformedCornerSizes;
        this.f32226v.calculatePath(withTransformedCornerSizes, this.f32209e.f32241k, m24722m(), this.f32216l);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f32209e.f32243m;
    }

    public float getBottomLeftCornerResolvedSize() {
        return this.f32209e.f32231a.getBottomLeftCornerSize().getCornerSize(getBoundsAsRectF());
    }

    public float getBottomRightCornerResolvedSize() {
        return this.f32209e.f32231a.getBottomRightCornerSize().getCornerSize(getBoundsAsRectF());
    }

    @NonNull
    public RectF getBoundsAsRectF() {
        this.f32217m.set(getBounds());
        return this.f32217m;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f32209e;
    }

    public float getElevation() {
        return this.f32209e.f32245o;
    }

    @Nullable
    public ColorStateList getFillColor() {
        return this.f32209e.f32234d;
    }

    public float getInterpolation() {
        return this.f32209e.f32241k;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f32209e.f32247q == 2) {
            return;
        }
        if (isRoundRect()) {
            outline.setRoundRect(getBounds(), getTopLeftCornerResolvedSize() * this.f32209e.f32241k);
        } else {
            m24715f(getBoundsAsRectF(), this.f32215k);
            DrawableUtils.setOutlineToPath(outline, this.f32215k);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        Rect rect2 = this.f32209e.f32239i;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    public Paint.Style getPaintStyle() {
        return this.f32209e.f32252v;
    }

    public float getParentAbsoluteElevation() {
        return this.f32209e.f32244n;
    }

    @Deprecated
    public void getPathForSize(int i, int i2, @NonNull Path path) {
        calculatePathForSize(new RectF(0.0f, 0.0f, i, i2), path);
    }

    @ColorInt
    public int getResolvedTintColor() {
        return this.f32229y;
    }

    public float getScale() {
        return this.f32209e.f32240j;
    }

    public int getShadowCompatRotation() {
        return this.f32209e.f32250t;
    }

    public int getShadowCompatibilityMode() {
        return this.f32209e.f32247q;
    }

    @Deprecated
    public int getShadowElevation() {
        return (int) getElevation();
    }

    public int getShadowOffsetX() {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        return (int) (materialShapeDrawableState.f32249s * Math.sin(Math.toRadians(materialShapeDrawableState.f32250t)));
    }

    public int getShadowOffsetY() {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        return (int) (materialShapeDrawableState.f32249s * Math.cos(Math.toRadians(materialShapeDrawableState.f32250t)));
    }

    public int getShadowRadius() {
        return this.f32209e.f32248r;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getShadowVerticalOffset() {
        return this.f32209e.f32249s;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f32209e.f32231a;
    }

    @Nullable
    @Deprecated
    public ShapePathModel getShapedViewModel() {
        ShapeAppearanceModel shapeAppearanceModel = getShapeAppearanceModel();
        if (shapeAppearanceModel instanceof ShapePathModel) {
            return (ShapePathModel) shapeAppearanceModel;
        }
        return null;
    }

    @Nullable
    public ColorStateList getStrokeColor() {
        return this.f32209e.f32235e;
    }

    @Nullable
    public ColorStateList getStrokeTintList() {
        return this.f32209e.f32236f;
    }

    public float getStrokeWidth() {
        return this.f32209e.f32242l;
    }

    @Nullable
    public ColorStateList getTintList() {
        return this.f32209e.f32237g;
    }

    public float getTopLeftCornerResolvedSize() {
        return this.f32209e.f32231a.getTopLeftCornerSize().getCornerSize(getBoundsAsRectF());
    }

    public float getTopRightCornerResolvedSize() {
        return this.f32209e.f32231a.getTopRightCornerSize().getCornerSize(getBoundsAsRectF());
    }

    public float getTranslationZ() {
        return this.f32209e.f32246p;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.f32219o.set(getBounds());
        m24715f(getBoundsAsRectF(), this.f32215k);
        this.f32220p.setPath(this.f32215k, this.f32219o);
        this.f32219o.op(this.f32220p, Region.Op.DIFFERENCE);
        return this.f32219o;
    }

    public float getZ() {
        return getElevation() + getTranslationZ();
    }

    @NonNull
    /* renamed from: h */
    public final PorterDuffColorFilter m24717h(@NonNull ColorStateList colorStateList, @NonNull PorterDuff.Mode mode, boolean z) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z) {
            colorForState = compositeElevationOverlayIfNeeded(colorForState);
        }
        this.f32229y = colorForState;
        return new PorterDuffColorFilter(colorForState, mode);
    }

    @NonNull
    /* renamed from: i */
    public final PorterDuffColorFilter m24718i(@Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, @NonNull Paint paint, boolean z) {
        return (colorStateList == null || mode == null) ? m24714e(paint, z) : m24717h(colorStateList, mode, z);
    }

    public void initializeElevationOverlay(Context context) {
        this.f32209e.f32232b = new ElevationOverlayProvider(context);
        m24732x();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f32213i = true;
        super.invalidateSelf();
    }

    public boolean isElevationOverlayEnabled() {
        ElevationOverlayProvider elevationOverlayProvider = this.f32209e.f32232b;
        return elevationOverlayProvider != null && elevationOverlayProvider.isThemeElevationOverlayEnabled();
    }

    public boolean isElevationOverlayInitialized() {
        return this.f32209e.f32232b != null;
    }

    public boolean isPointInTransparentRegion(int i, int i2) {
        return getTransparentRegion().contains(i, i2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isRoundRect() {
        return this.f32209e.f32231a.isRoundRect(getBoundsAsRectF());
    }

    @Deprecated
    public boolean isShadowEnabled() {
        int i = this.f32209e.f32247q;
        return i == 0 || i == 2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f32209e.f32237g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f32209e.f32236f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f32209e.f32235e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f32209e.f32234d) != null && colorStateList4.isStateful())));
    }

    /* renamed from: j */
    public final void m24719j(@NonNull Canvas canvas) {
        if (this.f32212h.cardinality() > 0) {
            Log.w(f32204O, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.f32209e.f32249s != 0) {
            canvas.drawPath(this.f32215k, this.f32224t.getShadowPaint());
        }
        for (int i = 0; i < 4; i++) {
            this.f32210f[i].m24834b(this.f32224t, this.f32209e.f32248r, canvas);
            this.f32211g[i].m24834b(this.f32224t, this.f32209e.f32248r, canvas);
        }
        if (this.f32208J) {
            int shadowOffsetX = getShadowOffsetX();
            int shadowOffsetY = getShadowOffsetY();
            canvas.translate(-shadowOffsetX, -shadowOffsetY);
            canvas.drawPath(this.f32215k, f32207k0);
            canvas.translate(shadowOffsetX, shadowOffsetY);
        }
    }

    /* renamed from: k */
    public final void m24720k(@NonNull Canvas canvas) {
        m24721l(canvas, this.f32222r, this.f32215k, this.f32209e.f32231a, getBoundsAsRectF());
    }

    /* renamed from: l */
    public final void m24721l(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull ShapeAppearanceModel shapeAppearanceModel, @NonNull RectF rectF) {
        if (!shapeAppearanceModel.isRoundRect(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float cornerSize = shapeAppearanceModel.getTopRightCornerSize().getCornerSize(rectF) * this.f32209e.f32241k;
            canvas.drawRoundRect(rectF, cornerSize, cornerSize, paint);
        }
    }

    @NonNull
    /* renamed from: m */
    public final RectF m24722m() {
        this.f32218n.set(getBoundsAsRectF());
        float m24723n = m24723n();
        this.f32218n.inset(m24723n, m24723n);
        return this.f32218n;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        this.f32209e = new MaterialShapeDrawableState(this.f32209e);
        return this;
    }

    /* renamed from: n */
    public final float m24723n() {
        if (m24726q()) {
            return this.f32223s.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    /* renamed from: o */
    public final boolean m24724o() {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        int i = materialShapeDrawableState.f32247q;
        return i != 1 && materialShapeDrawableState.f32248r > 0 && (i == 2 || requiresCompatShadow());
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f32213i = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        boolean z = m24730v(iArr) || m24731w();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    /* renamed from: p */
    public final boolean m24725p() {
        Paint.Style style = this.f32209e.f32252v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    /* renamed from: q */
    public final boolean m24726q() {
        Paint.Style style = this.f32209e.f32252v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f32223s.getStrokeWidth() > 0.0f;
    }

    /* renamed from: r */
    public final void m24727r() {
        super.invalidateSelf();
    }

    public boolean requiresCompatShadow() {
        if (isRoundRect()) {
            return false;
        }
        this.f32215k.isConvex();
        return false;
    }

    /* renamed from: s */
    public final void m24728s(@NonNull Canvas canvas) {
        if (m24724o()) {
            canvas.save();
            m24729u(canvas);
            if (!this.f32208J) {
                m24719j(canvas);
                canvas.restore();
                return;
            }
            int width = (int) (this.f32230z.width() - getBounds().width());
            int height = (int) (this.f32230z.height() - getBounds().height());
            if (width < 0 || height < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap createBitmap = Bitmap.createBitmap(((int) this.f32230z.width()) + (this.f32209e.f32248r * 2) + width, ((int) this.f32230z.height()) + (this.f32209e.f32248r * 2) + height, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap);
            float f = (getBounds().left - this.f32209e.f32248r) - width;
            float f2 = (getBounds().top - this.f32209e.f32248r) - height;
            canvas2.translate(-f, -f2);
            m24719j(canvas2);
            canvas.drawBitmap(createBitmap, f, f2, (Paint) null);
            createBitmap.recycle();
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, m281to = 255) int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32243m != i) {
            materialShapeDrawableState.f32243m = i;
            m24727r();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f32209e.f32233c = colorFilter;
        m24727r();
    }

    public void setCornerSize(float f) {
        setShapeAppearanceModel(this.f32209e.f32231a.withCornerSize(f));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setEdgeIntersectionCheckEnable(boolean z) {
        this.f32226v.m24763k(z);
    }

    public void setElevation(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32245o != f) {
            materialShapeDrawableState.f32245o = f;
            m24732x();
        }
    }

    public void setFillColor(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32234d != colorStateList) {
            materialShapeDrawableState.f32234d = colorStateList;
            onStateChange(getState());
        }
    }

    public void setInterpolation(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32241k != f) {
            materialShapeDrawableState.f32241k = f;
            this.f32213i = true;
            invalidateSelf();
        }
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32239i == null) {
            materialShapeDrawableState.f32239i = new Rect();
        }
        this.f32209e.f32239i.set(i, i2, i3, i4);
        invalidateSelf();
    }

    public void setPaintStyle(Paint.Style style) {
        this.f32209e.f32252v = style;
        m24727r();
    }

    public void setParentAbsoluteElevation(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32244n != f) {
            materialShapeDrawableState.f32244n = f;
            m24732x();
        }
    }

    public void setScale(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32240j != f) {
            materialShapeDrawableState.f32240j = f;
            invalidateSelf();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setShadowBitmapDrawingEnable(boolean z) {
        this.f32208J = z;
    }

    public void setShadowColor(int i) {
        this.f32224t.setShadowColor(i);
        this.f32209e.f32251u = false;
        m24727r();
    }

    public void setShadowCompatRotation(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32250t != i) {
            materialShapeDrawableState.f32250t = i;
            m24727r();
        }
    }

    public void setShadowCompatibilityMode(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32247q != i) {
            materialShapeDrawableState.f32247q = i;
            m24727r();
        }
    }

    @Deprecated
    public void setShadowElevation(int i) {
        setElevation(i);
    }

    @Deprecated
    public void setShadowEnabled(boolean z) {
        setShadowCompatibilityMode(!z ? 1 : 0);
    }

    @Deprecated
    public void setShadowRadius(int i) {
        this.f32209e.f32248r = i;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setShadowVerticalOffset(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32249s != i) {
            materialShapeDrawableState.f32249s = i;
            m24727r();
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f32209e.f32231a = shapeAppearanceModel;
        invalidateSelf();
    }

    @Deprecated
    public void setShapedViewModel(@NonNull ShapePathModel shapePathModel) {
        setShapeAppearanceModel(shapePathModel);
    }

    public void setStroke(float f, @ColorInt int i) {
        setStrokeWidth(f);
        setStrokeColor(ColorStateList.valueOf(i));
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32235e != colorStateList) {
            materialShapeDrawableState.f32235e = colorStateList;
            onStateChange(getState());
        }
    }

    public void setStrokeTint(ColorStateList colorStateList) {
        this.f32209e.f32236f = colorStateList;
        m24731w();
        m24727r();
    }

    public void setStrokeWidth(float f) {
        this.f32209e.f32242l = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f32209e.f32237g = colorStateList;
        m24731w();
        m24727r();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32238h != mode) {
            materialShapeDrawableState.f32238h = mode;
            m24731w();
            m24727r();
        }
    }

    public void setTranslationZ(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32246p != f) {
            materialShapeDrawableState.f32246p = f;
            m24732x();
        }
    }

    public void setUseTintColorForShadow(boolean z) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        if (materialShapeDrawableState.f32251u != z) {
            materialShapeDrawableState.f32251u = z;
            invalidateSelf();
        }
    }

    public void setZ(float f) {
        setTranslationZ(f - getElevation());
    }

    /* renamed from: u */
    public final void m24729u(@NonNull Canvas canvas) {
        canvas.translate(getShadowOffsetX(), getShadowOffsetY());
    }

    /* renamed from: v */
    public final boolean m24730v(int[] iArr) {
        boolean z;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f32209e.f32234d == null || color2 == (colorForState2 = this.f32209e.f32234d.getColorForState(iArr, (color2 = this.f32222r.getColor())))) {
            z = false;
        } else {
            this.f32222r.setColor(colorForState2);
            z = true;
        }
        if (this.f32209e.f32235e == null || color == (colorForState = this.f32209e.f32235e.getColorForState(iArr, (color = this.f32223s.getColor())))) {
            return z;
        }
        this.f32223s.setColor(colorForState);
        return true;
    }

    /* renamed from: w */
    public final boolean m24731w() {
        PorterDuffColorFilter porterDuffColorFilter = this.f32227w;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f32228x;
        MaterialShapeDrawableState materialShapeDrawableState = this.f32209e;
        this.f32227w = m24718i(materialShapeDrawableState.f32237g, materialShapeDrawableState.f32238h, this.f32222r, true);
        MaterialShapeDrawableState materialShapeDrawableState2 = this.f32209e;
        this.f32228x = m24718i(materialShapeDrawableState2.f32236f, materialShapeDrawableState2.f32238h, this.f32223s, false);
        MaterialShapeDrawableState materialShapeDrawableState3 = this.f32209e;
        if (materialShapeDrawableState3.f32251u) {
            this.f32224t.setShadowColor(materialShapeDrawableState3.f32237g.getColorForState(getState(), 0));
        }
        return (ObjectsCompat.equals(porterDuffColorFilter, this.f32227w) && ObjectsCompat.equals(porterDuffColorFilter2, this.f32228x)) ? false : true;
    }

    /* renamed from: x */
    public final void m24732x() {
        float z = getZ();
        this.f32209e.f32248r = (int) Math.ceil(0.75f * z);
        this.f32209e.f32249s = (int) Math.ceil(z * 0.25f);
        m24731w();
        m24727r();
    }

    public MaterialShapeDrawable(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        this(ShapeAppearanceModel.builder(context, attributeSet, i, i2).build());
    }

    @NonNull
    public static MaterialShapeDrawable createWithElevationOverlay(@NonNull Context context, float f) {
        return createWithElevationOverlay(context, f, null);
    }

    public void setCornerSize(@NonNull CornerSize cornerSize) {
        setShapeAppearanceModel(this.f32209e.f32231a.withCornerSize(cornerSize));
    }

    @Deprecated
    public MaterialShapeDrawable(@NonNull ShapePathModel shapePathModel) {
        this((ShapeAppearanceModel) shapePathModel);
    }

    @NonNull
    public static MaterialShapeDrawable createWithElevationOverlay(@NonNull Context context, float f, @Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(MaterialColors.getColor(context, C5139R.attr.colorSurface, MaterialShapeDrawable.class.getSimpleName()));
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.initializeElevationOverlay(context);
        materialShapeDrawable.setFillColor(colorStateList);
        materialShapeDrawable.setElevation(f);
        return materialShapeDrawable;
    }

    public void setStroke(float f, @Nullable ColorStateList colorStateList) {
        setStrokeWidth(f);
        setStrokeColor(colorStateList);
    }

    public MaterialShapeDrawable(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this(new MaterialShapeDrawableState(shapeAppearanceModel, null));
    }

    public void setStrokeTint(@ColorInt int i) {
        setStrokeTint(ColorStateList.valueOf(i));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public MaterialShapeDrawable(@NonNull MaterialShapeDrawableState materialShapeDrawableState) {
        ShapeAppearancePathProvider shapeAppearancePathProvider;
        this.f32210f = new ShapePath.AbstractC5377e[4];
        this.f32211g = new ShapePath.AbstractC5377e[4];
        this.f32212h = new BitSet(8);
        this.f32214j = new Matrix();
        this.f32215k = new Path();
        this.f32216l = new Path();
        this.f32217m = new RectF();
        this.f32218n = new RectF();
        this.f32219o = new Region();
        this.f32220p = new Region();
        Paint paint = new Paint(1);
        this.f32222r = paint;
        Paint paint2 = new Paint(1);
        this.f32223s = paint2;
        this.f32224t = new ShadowRenderer();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            shapeAppearancePathProvider = ShapeAppearancePathProvider.getInstance();
        } else {
            shapeAppearancePathProvider = new ShapeAppearancePathProvider();
        }
        this.f32226v = shapeAppearancePathProvider;
        this.f32230z = new RectF();
        this.f32208J = true;
        this.f32209e = materialShapeDrawableState;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        m24731w();
        m24730v(getState());
        this.f32225u = new C5368a();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public static class MaterialShapeDrawableState extends Drawable.ConstantState {

        /* renamed from: a */
        @NonNull
        public ShapeAppearanceModel f32231a;

        /* renamed from: b */
        @Nullable
        public ElevationOverlayProvider f32232b;

        /* renamed from: c */
        @Nullable
        public ColorFilter f32233c;

        /* renamed from: d */
        @Nullable
        public ColorStateList f32234d;

        /* renamed from: e */
        @Nullable
        public ColorStateList f32235e;

        /* renamed from: f */
        @Nullable
        public ColorStateList f32236f;

        /* renamed from: g */
        @Nullable
        public ColorStateList f32237g;

        /* renamed from: h */
        @Nullable
        public PorterDuff.Mode f32238h;

        /* renamed from: i */
        @Nullable
        public Rect f32239i;

        /* renamed from: j */
        public float f32240j;

        /* renamed from: k */
        public float f32241k;

        /* renamed from: l */
        public float f32242l;

        /* renamed from: m */
        public int f32243m;

        /* renamed from: n */
        public float f32244n;

        /* renamed from: o */
        public float f32245o;

        /* renamed from: p */
        public float f32246p;

        /* renamed from: q */
        public int f32247q;

        /* renamed from: r */
        public int f32248r;

        /* renamed from: s */
        public int f32249s;

        /* renamed from: t */
        public int f32250t;

        /* renamed from: u */
        public boolean f32251u;

        /* renamed from: v */
        public Paint.Style f32252v;

        public MaterialShapeDrawableState(@NonNull ShapeAppearanceModel shapeAppearanceModel, @Nullable ElevationOverlayProvider elevationOverlayProvider) {
            this.f32234d = null;
            this.f32235e = null;
            this.f32236f = null;
            this.f32237g = null;
            this.f32238h = PorterDuff.Mode.SRC_IN;
            this.f32239i = null;
            this.f32240j = 1.0f;
            this.f32241k = 1.0f;
            this.f32243m = 255;
            this.f32244n = 0.0f;
            this.f32245o = 0.0f;
            this.f32246p = 0.0f;
            this.f32247q = 0;
            this.f32248r = 0;
            this.f32249s = 0;
            this.f32250t = 0;
            this.f32251u = false;
            this.f32252v = Paint.Style.FILL_AND_STROKE;
            this.f32231a = shapeAppearanceModel;
            this.f32232b = elevationOverlayProvider;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this);
            materialShapeDrawable.f32213i = true;
            return materialShapeDrawable;
        }

        public MaterialShapeDrawableState(@NonNull MaterialShapeDrawableState materialShapeDrawableState) {
            this.f32234d = null;
            this.f32235e = null;
            this.f32236f = null;
            this.f32237g = null;
            this.f32238h = PorterDuff.Mode.SRC_IN;
            this.f32239i = null;
            this.f32240j = 1.0f;
            this.f32241k = 1.0f;
            this.f32243m = 255;
            this.f32244n = 0.0f;
            this.f32245o = 0.0f;
            this.f32246p = 0.0f;
            this.f32247q = 0;
            this.f32248r = 0;
            this.f32249s = 0;
            this.f32250t = 0;
            this.f32251u = false;
            this.f32252v = Paint.Style.FILL_AND_STROKE;
            this.f32231a = materialShapeDrawableState.f32231a;
            this.f32232b = materialShapeDrawableState.f32232b;
            this.f32242l = materialShapeDrawableState.f32242l;
            this.f32233c = materialShapeDrawableState.f32233c;
            this.f32234d = materialShapeDrawableState.f32234d;
            this.f32235e = materialShapeDrawableState.f32235e;
            this.f32238h = materialShapeDrawableState.f32238h;
            this.f32237g = materialShapeDrawableState.f32237g;
            this.f32243m = materialShapeDrawableState.f32243m;
            this.f32240j = materialShapeDrawableState.f32240j;
            this.f32249s = materialShapeDrawableState.f32249s;
            this.f32247q = materialShapeDrawableState.f32247q;
            this.f32251u = materialShapeDrawableState.f32251u;
            this.f32241k = materialShapeDrawableState.f32241k;
            this.f32244n = materialShapeDrawableState.f32244n;
            this.f32245o = materialShapeDrawableState.f32245o;
            this.f32246p = materialShapeDrawableState.f32246p;
            this.f32248r = materialShapeDrawableState.f32248r;
            this.f32250t = materialShapeDrawableState.f32250t;
            this.f32236f = materialShapeDrawableState.f32236f;
            this.f32252v = materialShapeDrawableState.f32252v;
            if (materialShapeDrawableState.f32239i != null) {
                this.f32239i = new Rect(materialShapeDrawableState.f32239i);
            }
        }
    }
}
