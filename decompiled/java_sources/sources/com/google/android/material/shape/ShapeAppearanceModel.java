package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.annotation.AttrRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import com.google.android.material.C5139R;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* loaded from: classes6.dex */
public class ShapeAppearanceModel {
    public static final CornerSize PILL = new RelativeCornerSize(0.5f);

    /* renamed from: a */
    public CornerTreatment f32260a;

    /* renamed from: b */
    public CornerTreatment f32261b;

    /* renamed from: c */
    public CornerTreatment f32262c;

    /* renamed from: d */
    public CornerTreatment f32263d;

    /* renamed from: e */
    public CornerSize f32264e;

    /* renamed from: f */
    public CornerSize f32265f;

    /* renamed from: g */
    public CornerSize f32266g;

    /* renamed from: h */
    public CornerSize f32267h;

    /* renamed from: i */
    public EdgeTreatment f32268i;

    /* renamed from: j */
    public EdgeTreatment f32269j;

    /* renamed from: k */
    public EdgeTreatment f32270k;

    /* renamed from: l */
    public EdgeTreatment f32271l;

    /* loaded from: classes6.dex */
    public static final class Builder {

        /* renamed from: a */
        @NonNull
        public CornerTreatment f32272a;

        /* renamed from: b */
        @NonNull
        public CornerTreatment f32273b;

        /* renamed from: c */
        @NonNull
        public CornerTreatment f32274c;

        /* renamed from: d */
        @NonNull
        public CornerTreatment f32275d;

        /* renamed from: e */
        @NonNull
        public CornerSize f32276e;

        /* renamed from: f */
        @NonNull
        public CornerSize f32277f;

        /* renamed from: g */
        @NonNull
        public CornerSize f32278g;

        /* renamed from: h */
        @NonNull
        public CornerSize f32279h;

        /* renamed from: i */
        @NonNull
        public EdgeTreatment f32280i;

        /* renamed from: j */
        @NonNull
        public EdgeTreatment f32281j;

        /* renamed from: k */
        @NonNull
        public EdgeTreatment f32282k;

        /* renamed from: l */
        @NonNull
        public EdgeTreatment f32283l;

        public Builder() {
            this.f32272a = MaterialShapeUtils.m24734b();
            this.f32273b = MaterialShapeUtils.m24734b();
            this.f32274c = MaterialShapeUtils.m24734b();
            this.f32275d = MaterialShapeUtils.m24734b();
            this.f32276e = new AbsoluteCornerSize(0.0f);
            this.f32277f = new AbsoluteCornerSize(0.0f);
            this.f32278g = new AbsoluteCornerSize(0.0f);
            this.f32279h = new AbsoluteCornerSize(0.0f);
            this.f32280i = MaterialShapeUtils.m24735c();
            this.f32281j = MaterialShapeUtils.m24735c();
            this.f32282k = MaterialShapeUtils.m24735c();
            this.f32283l = MaterialShapeUtils.m24735c();
        }

        /* renamed from: m */
        public static float m24752m(CornerTreatment cornerTreatment) {
            if (cornerTreatment instanceof RoundedCornerTreatment) {
                return ((RoundedCornerTreatment) cornerTreatment).f32259a;
            }
            if (cornerTreatment instanceof CutCornerTreatment) {
                return ((CutCornerTreatment) cornerTreatment).f32195a;
            }
            return -1.0f;
        }

        @NonNull
        public ShapeAppearanceModel build() {
            return new ShapeAppearanceModel(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setAllCornerSizes(@NonNull CornerSize cornerSize) {
            return setTopLeftCornerSize(cornerSize).setTopRightCornerSize(cornerSize).setBottomRightCornerSize(cornerSize).setBottomLeftCornerSize(cornerSize);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setAllCorners(int i, @Dimension float f) {
            return setAllCorners(MaterialShapeUtils.m24733a(i)).setAllCornerSizes(f);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setAllEdges(@NonNull EdgeTreatment edgeTreatment) {
            return setLeftEdge(edgeTreatment).setTopEdge(edgeTreatment).setRightEdge(edgeTreatment).setBottomEdge(edgeTreatment);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setBottomEdge(@NonNull EdgeTreatment edgeTreatment) {
            this.f32282k = edgeTreatment;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setBottomLeftCorner(int i, @Dimension float f) {
            return setBottomLeftCorner(MaterialShapeUtils.m24733a(i)).setBottomLeftCornerSize(f);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setBottomLeftCornerSize(@Dimension float f) {
            this.f32279h = new AbsoluteCornerSize(f);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setBottomRightCorner(int i, @Dimension float f) {
            return setBottomRightCorner(MaterialShapeUtils.m24733a(i)).setBottomRightCornerSize(f);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setBottomRightCornerSize(@Dimension float f) {
            this.f32278g = new AbsoluteCornerSize(f);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setLeftEdge(@NonNull EdgeTreatment edgeTreatment) {
            this.f32283l = edgeTreatment;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setRightEdge(@NonNull EdgeTreatment edgeTreatment) {
            this.f32281j = edgeTreatment;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTopEdge(@NonNull EdgeTreatment edgeTreatment) {
            this.f32280i = edgeTreatment;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTopLeftCorner(int i, @Dimension float f) {
            return setTopLeftCorner(MaterialShapeUtils.m24733a(i)).setTopLeftCornerSize(f);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTopLeftCornerSize(@Dimension float f) {
            this.f32276e = new AbsoluteCornerSize(f);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTopRightCorner(int i, @Dimension float f) {
            return setTopRightCorner(MaterialShapeUtils.m24733a(i)).setTopRightCornerSize(f);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTopRightCornerSize(@Dimension float f) {
            this.f32277f = new AbsoluteCornerSize(f);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setBottomLeftCornerSize(@NonNull CornerSize cornerSize) {
            this.f32279h = cornerSize;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setBottomRightCornerSize(@NonNull CornerSize cornerSize) {
            this.f32278g = cornerSize;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTopLeftCornerSize(@NonNull CornerSize cornerSize) {
            this.f32276e = cornerSize;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTopRightCornerSize(@NonNull CornerSize cornerSize) {
            this.f32277f = cornerSize;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setAllCorners(@NonNull CornerTreatment cornerTreatment) {
            return setTopLeftCorner(cornerTreatment).setTopRightCorner(cornerTreatment).setBottomRightCorner(cornerTreatment).setBottomLeftCorner(cornerTreatment);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setBottomLeftCorner(int i, @NonNull CornerSize cornerSize) {
            return setBottomLeftCorner(MaterialShapeUtils.m24733a(i)).setBottomLeftCornerSize(cornerSize);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setBottomRightCorner(int i, @NonNull CornerSize cornerSize) {
            return setBottomRightCorner(MaterialShapeUtils.m24733a(i)).setBottomRightCornerSize(cornerSize);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTopLeftCorner(int i, @NonNull CornerSize cornerSize) {
            return setTopLeftCorner(MaterialShapeUtils.m24733a(i)).setTopLeftCornerSize(cornerSize);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTopRightCorner(int i, @NonNull CornerSize cornerSize) {
            return setTopRightCorner(MaterialShapeUtils.m24733a(i)).setTopRightCornerSize(cornerSize);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setAllCornerSizes(@Dimension float f) {
            return setTopLeftCornerSize(f).setTopRightCornerSize(f).setBottomRightCornerSize(f).setBottomLeftCornerSize(f);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setBottomLeftCorner(@NonNull CornerTreatment cornerTreatment) {
            this.f32275d = cornerTreatment;
            float m24752m = m24752m(cornerTreatment);
            if (m24752m != -1.0f) {
                setBottomLeftCornerSize(m24752m);
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setBottomRightCorner(@NonNull CornerTreatment cornerTreatment) {
            this.f32274c = cornerTreatment;
            float m24752m = m24752m(cornerTreatment);
            if (m24752m != -1.0f) {
                setBottomRightCornerSize(m24752m);
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTopLeftCorner(@NonNull CornerTreatment cornerTreatment) {
            this.f32272a = cornerTreatment;
            float m24752m = m24752m(cornerTreatment);
            if (m24752m != -1.0f) {
                setTopLeftCornerSize(m24752m);
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTopRightCorner(@NonNull CornerTreatment cornerTreatment) {
            this.f32273b = cornerTreatment;
            float m24752m = m24752m(cornerTreatment);
            if (m24752m != -1.0f) {
                setTopRightCornerSize(m24752m);
            }
            return this;
        }

        public Builder(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
            this.f32272a = MaterialShapeUtils.m24734b();
            this.f32273b = MaterialShapeUtils.m24734b();
            this.f32274c = MaterialShapeUtils.m24734b();
            this.f32275d = MaterialShapeUtils.m24734b();
            this.f32276e = new AbsoluteCornerSize(0.0f);
            this.f32277f = new AbsoluteCornerSize(0.0f);
            this.f32278g = new AbsoluteCornerSize(0.0f);
            this.f32279h = new AbsoluteCornerSize(0.0f);
            this.f32280i = MaterialShapeUtils.m24735c();
            this.f32281j = MaterialShapeUtils.m24735c();
            this.f32282k = MaterialShapeUtils.m24735c();
            this.f32283l = MaterialShapeUtils.m24735c();
            this.f32272a = shapeAppearanceModel.f32260a;
            this.f32273b = shapeAppearanceModel.f32261b;
            this.f32274c = shapeAppearanceModel.f32262c;
            this.f32275d = shapeAppearanceModel.f32263d;
            this.f32276e = shapeAppearanceModel.f32264e;
            this.f32277f = shapeAppearanceModel.f32265f;
            this.f32278g = shapeAppearanceModel.f32266g;
            this.f32279h = shapeAppearanceModel.f32267h;
            this.f32280i = shapeAppearanceModel.f32268i;
            this.f32281j = shapeAppearanceModel.f32269j;
            this.f32282k = shapeAppearanceModel.f32270k;
            this.f32283l = shapeAppearanceModel.f32271l;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public interface CornerSizeUnaryOperator {
        @NonNull
        CornerSize apply(@NonNull CornerSize cornerSize);
    }

    @NonNull
    /* renamed from: a */
    public static Builder m24737a(Context context, @StyleRes int i, @StyleRes int i2, int i3) {
        return m24738b(context, i, i2, new AbsoluteCornerSize(i3));
    }

    @NonNull
    /* renamed from: b */
    public static Builder m24738b(Context context, @StyleRes int i, @StyleRes int i2, @NonNull CornerSize cornerSize) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
        if (i2 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i2);
        }
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(C5139R.styleable.ShapeAppearance);
        try {
            int i3 = obtainStyledAttributes.getInt(C5139R.styleable.ShapeAppearance_cornerFamily, 0);
            int i4 = obtainStyledAttributes.getInt(C5139R.styleable.ShapeAppearance_cornerFamilyTopLeft, i3);
            int i5 = obtainStyledAttributes.getInt(C5139R.styleable.ShapeAppearance_cornerFamilyTopRight, i3);
            int i6 = obtainStyledAttributes.getInt(C5139R.styleable.ShapeAppearance_cornerFamilyBottomRight, i3);
            int i7 = obtainStyledAttributes.getInt(C5139R.styleable.ShapeAppearance_cornerFamilyBottomLeft, i3);
            CornerSize m24739c = m24739c(obtainStyledAttributes, C5139R.styleable.ShapeAppearance_cornerSize, cornerSize);
            CornerSize m24739c2 = m24739c(obtainStyledAttributes, C5139R.styleable.ShapeAppearance_cornerSizeTopLeft, m24739c);
            CornerSize m24739c3 = m24739c(obtainStyledAttributes, C5139R.styleable.ShapeAppearance_cornerSizeTopRight, m24739c);
            CornerSize m24739c4 = m24739c(obtainStyledAttributes, C5139R.styleable.ShapeAppearance_cornerSizeBottomRight, m24739c);
            return new Builder().setTopLeftCorner(i4, m24739c2).setTopRightCorner(i5, m24739c3).setBottomRightCorner(i6, m24739c4).setBottomLeftCorner(i7, m24739c(obtainStyledAttributes, C5139R.styleable.ShapeAppearance_cornerSizeBottomLeft, m24739c));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @NonNull
    public static Builder builder() {
        return new Builder();
    }

    @NonNull
    /* renamed from: c */
    public static CornerSize m24739c(TypedArray typedArray, int i, @NonNull CornerSize cornerSize) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue == null) {
            return cornerSize;
        }
        int i2 = peekValue.type;
        return i2 == 5 ? new AbsoluteCornerSize(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics())) : i2 == 6 ? new RelativeCornerSize(peekValue.getFraction(1.0f, 1.0f)) : cornerSize;
    }

    @NonNull
    public EdgeTreatment getBottomEdge() {
        return this.f32270k;
    }

    @NonNull
    public CornerTreatment getBottomLeftCorner() {
        return this.f32263d;
    }

    @NonNull
    public CornerSize getBottomLeftCornerSize() {
        return this.f32267h;
    }

    @NonNull
    public CornerTreatment getBottomRightCorner() {
        return this.f32262c;
    }

    @NonNull
    public CornerSize getBottomRightCornerSize() {
        return this.f32266g;
    }

    @NonNull
    public EdgeTreatment getLeftEdge() {
        return this.f32271l;
    }

    @NonNull
    public EdgeTreatment getRightEdge() {
        return this.f32269j;
    }

    @NonNull
    public EdgeTreatment getTopEdge() {
        return this.f32268i;
    }

    @NonNull
    public CornerTreatment getTopLeftCorner() {
        return this.f32260a;
    }

    @NonNull
    public CornerSize getTopLeftCornerSize() {
        return this.f32264e;
    }

    @NonNull
    public CornerTreatment getTopRightCorner() {
        return this.f32261b;
    }

    @NonNull
    public CornerSize getTopRightCornerSize() {
        return this.f32265f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isRoundRect(@NonNull RectF rectF) {
        boolean z = this.f32271l.getClass().equals(EdgeTreatment.class) && this.f32269j.getClass().equals(EdgeTreatment.class) && this.f32268i.getClass().equals(EdgeTreatment.class) && this.f32270k.getClass().equals(EdgeTreatment.class);
        float cornerSize = this.f32264e.getCornerSize(rectF);
        return z && ((this.f32265f.getCornerSize(rectF) > cornerSize ? 1 : (this.f32265f.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.f32267h.getCornerSize(rectF) > cornerSize ? 1 : (this.f32267h.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.f32266g.getCornerSize(rectF) > cornerSize ? 1 : (this.f32266g.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0) && ((this.f32261b instanceof RoundedCornerTreatment) && (this.f32260a instanceof RoundedCornerTreatment) && (this.f32262c instanceof RoundedCornerTreatment) && (this.f32263d instanceof RoundedCornerTreatment));
    }

    @NonNull
    public Builder toBuilder() {
        return new Builder(this);
    }

    @NonNull
    public ShapeAppearanceModel withCornerSize(float f) {
        return toBuilder().setAllCornerSizes(f).build();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ShapeAppearanceModel withTransformedCornerSizes(@NonNull CornerSizeUnaryOperator cornerSizeUnaryOperator) {
        return toBuilder().setTopLeftCornerSize(cornerSizeUnaryOperator.apply(getTopLeftCornerSize())).setTopRightCornerSize(cornerSizeUnaryOperator.apply(getTopRightCornerSize())).setBottomLeftCornerSize(cornerSizeUnaryOperator.apply(getBottomLeftCornerSize())).setBottomRightCornerSize(cornerSizeUnaryOperator.apply(getBottomRightCornerSize())).build();
    }

    public ShapeAppearanceModel(@NonNull Builder builder) {
        this.f32260a = builder.f32272a;
        this.f32261b = builder.f32273b;
        this.f32262c = builder.f32274c;
        this.f32263d = builder.f32275d;
        this.f32264e = builder.f32276e;
        this.f32265f = builder.f32277f;
        this.f32266g = builder.f32278g;
        this.f32267h = builder.f32279h;
        this.f32268i = builder.f32280i;
        this.f32269j = builder.f32281j;
        this.f32270k = builder.f32282k;
        this.f32271l = builder.f32283l;
    }

    @NonNull
    public static Builder builder(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        return builder(context, attributeSet, i, i2, 0);
    }

    @NonNull
    public ShapeAppearanceModel withCornerSize(@NonNull CornerSize cornerSize) {
        return toBuilder().setAllCornerSizes(cornerSize).build();
    }

    @NonNull
    public static Builder builder(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2, int i3) {
        return builder(context, attributeSet, i, i2, new AbsoluteCornerSize(i3));
    }

    @NonNull
    public static Builder builder(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2, @NonNull CornerSize cornerSize) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5139R.styleable.MaterialShape, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(C5139R.styleable.MaterialShape_shapeAppearanceOverlay, 0);
        obtainStyledAttributes.recycle();
        return m24738b(context, resourceId, resourceId2, cornerSize);
    }

    @NonNull
    public static Builder builder(Context context, @StyleRes int i, @StyleRes int i2) {
        return m24737a(context, i, i2, 0);
    }

    public ShapeAppearanceModel() {
        this.f32260a = MaterialShapeUtils.m24734b();
        this.f32261b = MaterialShapeUtils.m24734b();
        this.f32262c = MaterialShapeUtils.m24734b();
        this.f32263d = MaterialShapeUtils.m24734b();
        this.f32264e = new AbsoluteCornerSize(0.0f);
        this.f32265f = new AbsoluteCornerSize(0.0f);
        this.f32266g = new AbsoluteCornerSize(0.0f);
        this.f32267h = new AbsoluteCornerSize(0.0f);
        this.f32268i = MaterialShapeUtils.m24735c();
        this.f32269j = MaterialShapeUtils.m24735c();
        this.f32270k = MaterialShapeUtils.m24735c();
        this.f32271l = MaterialShapeUtils.m24735c();
    }
}
