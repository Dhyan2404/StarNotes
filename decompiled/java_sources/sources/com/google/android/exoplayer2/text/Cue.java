package com.google.android.exoplayer2.text;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.Assertions;
import com.google.common.base.Objects;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class Cue implements Bundleable {
    public static final int ANCHOR_TYPE_END = 2;
    public static final int ANCHOR_TYPE_MIDDLE = 1;
    public static final int ANCHOR_TYPE_START = 0;
    public static final float DIMEN_UNSET = -3.4028235E38f;
    public static final int LINE_TYPE_FRACTION = 0;
    public static final int LINE_TYPE_NUMBER = 1;
    public static final int TEXT_SIZE_TYPE_ABSOLUTE = 2;
    public static final int TEXT_SIZE_TYPE_FRACTIONAL = 0;
    public static final int TEXT_SIZE_TYPE_FRACTIONAL_IGNORE_PADDING = 1;
    public static final int TYPE_UNSET = Integer.MIN_VALUE;
    public static final int VERTICAL_TYPE_LR = 2;
    public static final int VERTICAL_TYPE_RL = 1;

    /* renamed from: e */
    public static final int f26703e = 0;

    /* renamed from: f */
    public static final int f26704f = 1;

    /* renamed from: g */
    public static final int f26705g = 2;

    /* renamed from: h */
    public static final int f26706h = 3;

    /* renamed from: i */
    public static final int f26707i = 4;

    /* renamed from: j */
    public static final int f26708j = 5;

    /* renamed from: k */
    public static final int f26709k = 6;

    /* renamed from: l */
    public static final int f26710l = 7;

    /* renamed from: m */
    public static final int f26711m = 8;

    /* renamed from: n */
    public static final int f26712n = 9;

    /* renamed from: o */
    public static final int f26713o = 10;

    /* renamed from: p */
    public static final int f26714p = 11;

    /* renamed from: q */
    public static final int f26715q = 12;

    /* renamed from: r */
    public static final int f26716r = 13;

    /* renamed from: s */
    public static final int f26717s = 14;

    /* renamed from: t */
    public static final int f26718t = 15;

    /* renamed from: u */
    public static final int f26719u = 16;

    @Nullable
    public final Bitmap bitmap;
    public final float bitmapHeight;
    public final float line;
    public final int lineAnchor;
    public final int lineType;

    @Nullable
    public final Layout.Alignment multiRowAlignment;
    public final float position;
    public final int positionAnchor;
    public final float shearDegrees;
    public final float size;

    @Nullable
    public final CharSequence text;

    @Nullable
    public final Layout.Alignment textAlignment;
    public final float textSize;
    public final int textSizeType;
    public final int verticalType;
    public final int windowColor;
    public final boolean windowColorSet;
    public static final Cue EMPTY = new Builder().setText("").build();
    public static final Bundleable.Creator<Cue> CREATOR = new Bundleable.Creator() { // from class: com.sunia.HTREnginev2.nie
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            Cue m20540b;
            m20540b = Cue.m20540b(bundle);
            return m20540b;
        }
    };

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface AnchorType {
    }

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a */
        @Nullable
        public CharSequence f26720a;

        /* renamed from: b */
        @Nullable
        public Bitmap f26721b;

        /* renamed from: c */
        @Nullable
        public Layout.Alignment f26722c;

        /* renamed from: d */
        @Nullable
        public Layout.Alignment f26723d;

        /* renamed from: e */
        public float f26724e;

        /* renamed from: f */
        public int f26725f;

        /* renamed from: g */
        public int f26726g;

        /* renamed from: h */
        public float f26727h;

        /* renamed from: i */
        public int f26728i;

        /* renamed from: j */
        public int f26729j;

        /* renamed from: k */
        public float f26730k;

        /* renamed from: l */
        public float f26731l;

        /* renamed from: m */
        public float f26732m;

        /* renamed from: n */
        public boolean f26733n;

        /* renamed from: o */
        @ColorInt
        public int f26734o;

        /* renamed from: p */
        public int f26735p;

        /* renamed from: q */
        public float f26736q;

        public Cue build() {
            return new Cue(this.f26720a, this.f26722c, this.f26723d, this.f26721b, this.f26724e, this.f26725f, this.f26726g, this.f26727h, this.f26728i, this.f26729j, this.f26730k, this.f26731l, this.f26732m, this.f26733n, this.f26734o, this.f26735p, this.f26736q);
        }

        public Builder clearWindowColor() {
            this.f26733n = false;
            return this;
        }

        @Nullable
        @Pure
        public Bitmap getBitmap() {
            return this.f26721b;
        }

        @Pure
        public float getBitmapHeight() {
            return this.f26732m;
        }

        @Pure
        public float getLine() {
            return this.f26724e;
        }

        @Pure
        public int getLineAnchor() {
            return this.f26726g;
        }

        @Pure
        public int getLineType() {
            return this.f26725f;
        }

        @Pure
        public float getPosition() {
            return this.f26727h;
        }

        @Pure
        public int getPositionAnchor() {
            return this.f26728i;
        }

        @Pure
        public float getSize() {
            return this.f26731l;
        }

        @Nullable
        @Pure
        public CharSequence getText() {
            return this.f26720a;
        }

        @Nullable
        @Pure
        public Layout.Alignment getTextAlignment() {
            return this.f26722c;
        }

        @Pure
        public float getTextSize() {
            return this.f26730k;
        }

        @Pure
        public int getTextSizeType() {
            return this.f26729j;
        }

        @Pure
        public int getVerticalType() {
            return this.f26735p;
        }

        @ColorInt
        @Pure
        public int getWindowColor() {
            return this.f26734o;
        }

        public boolean isWindowColorSet() {
            return this.f26733n;
        }

        public Builder setBitmap(Bitmap bitmap) {
            this.f26721b = bitmap;
            return this;
        }

        public Builder setBitmapHeight(float f) {
            this.f26732m = f;
            return this;
        }

        public Builder setLine(float f, int i) {
            this.f26724e = f;
            this.f26725f = i;
            return this;
        }

        public Builder setLineAnchor(int i) {
            this.f26726g = i;
            return this;
        }

        public Builder setMultiRowAlignment(@Nullable Layout.Alignment alignment) {
            this.f26723d = alignment;
            return this;
        }

        public Builder setPosition(float f) {
            this.f26727h = f;
            return this;
        }

        public Builder setPositionAnchor(int i) {
            this.f26728i = i;
            return this;
        }

        public Builder setShearDegrees(float f) {
            this.f26736q = f;
            return this;
        }

        public Builder setSize(float f) {
            this.f26731l = f;
            return this;
        }

        public Builder setText(CharSequence charSequence) {
            this.f26720a = charSequence;
            return this;
        }

        public Builder setTextAlignment(@Nullable Layout.Alignment alignment) {
            this.f26722c = alignment;
            return this;
        }

        public Builder setTextSize(float f, int i) {
            this.f26730k = f;
            this.f26729j = i;
            return this;
        }

        public Builder setVerticalType(int i) {
            this.f26735p = i;
            return this;
        }

        public Builder setWindowColor(@ColorInt int i) {
            this.f26734o = i;
            this.f26733n = true;
            return this;
        }

        public Builder() {
            this.f26720a = null;
            this.f26721b = null;
            this.f26722c = null;
            this.f26723d = null;
            this.f26724e = -3.4028235E38f;
            this.f26725f = Integer.MIN_VALUE;
            this.f26726g = Integer.MIN_VALUE;
            this.f26727h = -3.4028235E38f;
            this.f26728i = Integer.MIN_VALUE;
            this.f26729j = Integer.MIN_VALUE;
            this.f26730k = -3.4028235E38f;
            this.f26731l = -3.4028235E38f;
            this.f26732m = -3.4028235E38f;
            this.f26733n = false;
            this.f26734o = -16777216;
            this.f26735p = Integer.MIN_VALUE;
        }

        public Builder(Cue cue) {
            this.f26720a = cue.text;
            this.f26721b = cue.bitmap;
            this.f26722c = cue.textAlignment;
            this.f26723d = cue.multiRowAlignment;
            this.f26724e = cue.line;
            this.f26725f = cue.lineType;
            this.f26726g = cue.lineAnchor;
            this.f26727h = cue.position;
            this.f26728i = cue.positionAnchor;
            this.f26729j = cue.textSizeType;
            this.f26730k = cue.textSize;
            this.f26731l = cue.size;
            this.f26732m = cue.bitmapHeight;
            this.f26733n = cue.windowColorSet;
            this.f26734o = cue.windowColor;
            this.f26735p = cue.verticalType;
            this.f26736q = cue.shearDegrees;
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface LineType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface TextSizeType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface VerticalType {
    }

    /* renamed from: b */
    public static final Cue m20540b(Bundle bundle) {
        Builder builder = new Builder();
        CharSequence charSequence = bundle.getCharSequence(m20541c(0));
        if (charSequence != null) {
            builder.setText(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(m20541c(1));
        if (alignment != null) {
            builder.setTextAlignment(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(m20541c(2));
        if (alignment2 != null) {
            builder.setMultiRowAlignment(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(m20541c(3));
        if (bitmap != null) {
            builder.setBitmap(bitmap);
        }
        if (bundle.containsKey(m20541c(4)) && bundle.containsKey(m20541c(5))) {
            builder.setLine(bundle.getFloat(m20541c(4)), bundle.getInt(m20541c(5)));
        }
        if (bundle.containsKey(m20541c(6))) {
            builder.setLineAnchor(bundle.getInt(m20541c(6)));
        }
        if (bundle.containsKey(m20541c(7))) {
            builder.setPosition(bundle.getFloat(m20541c(7)));
        }
        if (bundle.containsKey(m20541c(8))) {
            builder.setPositionAnchor(bundle.getInt(m20541c(8)));
        }
        if (bundle.containsKey(m20541c(10)) && bundle.containsKey(m20541c(9))) {
            builder.setTextSize(bundle.getFloat(m20541c(10)), bundle.getInt(m20541c(9)));
        }
        if (bundle.containsKey(m20541c(11))) {
            builder.setSize(bundle.getFloat(m20541c(11)));
        }
        if (bundle.containsKey(m20541c(12))) {
            builder.setBitmapHeight(bundle.getFloat(m20541c(12)));
        }
        if (bundle.containsKey(m20541c(13))) {
            builder.setWindowColor(bundle.getInt(m20541c(13)));
        }
        if (!bundle.getBoolean(m20541c(14), false)) {
            builder.clearWindowColor();
        }
        if (bundle.containsKey(m20541c(15))) {
            builder.setVerticalType(bundle.getInt(m20541c(15)));
        }
        if (bundle.containsKey(m20541c(16))) {
            builder.setShearDegrees(bundle.getFloat(m20541c(16)));
        }
        return builder.build();
    }

    /* renamed from: c */
    public static String m20541c(int i) {
        return Integer.toString(i, 36);
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(@Nullable Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || Cue.class != obj.getClass()) {
            return false;
        }
        Cue cue = (Cue) obj;
        return TextUtils.equals(this.text, cue.text) && this.textAlignment == cue.textAlignment && this.multiRowAlignment == cue.multiRowAlignment && ((bitmap = this.bitmap) != null ? !((bitmap2 = cue.bitmap) == null || !bitmap.sameAs(bitmap2)) : cue.bitmap == null) && this.line == cue.line && this.lineType == cue.lineType && this.lineAnchor == cue.lineAnchor && this.position == cue.position && this.positionAnchor == cue.positionAnchor && this.size == cue.size && this.bitmapHeight == cue.bitmapHeight && this.windowColorSet == cue.windowColorSet && this.windowColor == cue.windowColor && this.textSizeType == cue.textSizeType && this.textSize == cue.textSize && this.verticalType == cue.verticalType && this.shearDegrees == cue.shearDegrees;
    }

    public int hashCode() {
        return Objects.hashCode(this.text, this.textAlignment, this.multiRowAlignment, this.bitmap, Float.valueOf(this.line), Integer.valueOf(this.lineType), Integer.valueOf(this.lineAnchor), Float.valueOf(this.position), Integer.valueOf(this.positionAnchor), Float.valueOf(this.size), Float.valueOf(this.bitmapHeight), Boolean.valueOf(this.windowColorSet), Integer.valueOf(this.windowColor), Integer.valueOf(this.textSizeType), Float.valueOf(this.textSize), Integer.valueOf(this.verticalType), Float.valueOf(this.shearDegrees));
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(m20541c(0), this.text);
        bundle.putSerializable(m20541c(1), this.textAlignment);
        bundle.putSerializable(m20541c(2), this.multiRowAlignment);
        bundle.putParcelable(m20541c(3), this.bitmap);
        bundle.putFloat(m20541c(4), this.line);
        bundle.putInt(m20541c(5), this.lineType);
        bundle.putInt(m20541c(6), this.lineAnchor);
        bundle.putFloat(m20541c(7), this.position);
        bundle.putInt(m20541c(8), this.positionAnchor);
        bundle.putInt(m20541c(9), this.textSizeType);
        bundle.putFloat(m20541c(10), this.textSize);
        bundle.putFloat(m20541c(11), this.size);
        bundle.putFloat(m20541c(12), this.bitmapHeight);
        bundle.putBoolean(m20541c(14), this.windowColorSet);
        bundle.putInt(m20541c(13), this.windowColor);
        bundle.putInt(m20541c(15), this.verticalType);
        bundle.putFloat(m20541c(16), this.shearDegrees);
        return bundle;
    }

    @Deprecated
    public Cue(CharSequence charSequence) {
        this(charSequence, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f);
    }

    @Deprecated
    public Cue(CharSequence charSequence, @Nullable Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        this(charSequence, alignment, f, i, i2, f2, i3, f3, false, -16777216);
    }

    @Deprecated
    public Cue(CharSequence charSequence, @Nullable Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, int i4, float f4) {
        this(charSequence, alignment, null, null, f, i, i2, f2, i3, i4, f4, f3, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);
    }

    @Deprecated
    public Cue(CharSequence charSequence, @Nullable Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4) {
        this(charSequence, alignment, null, null, f, i, i2, f2, i3, Integer.MIN_VALUE, -3.4028235E38f, f3, -3.4028235E38f, z, i4, Integer.MIN_VALUE, 0.0f);
    }

    public Cue(@Nullable CharSequence charSequence, @Nullable Layout.Alignment alignment, @Nullable Layout.Alignment alignment2, @Nullable Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5, int i6, float f6) {
        if (charSequence == null) {
            Assertions.checkNotNull(bitmap);
        } else {
            Assertions.checkArgument(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.text = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.text = charSequence.toString();
        } else {
            this.text = null;
        }
        this.textAlignment = alignment;
        this.multiRowAlignment = alignment2;
        this.bitmap = bitmap;
        this.line = f;
        this.lineType = i;
        this.lineAnchor = i2;
        this.position = f2;
        this.positionAnchor = i3;
        this.size = f4;
        this.bitmapHeight = f5;
        this.windowColorSet = z;
        this.windowColor = i5;
        this.textSizeType = i4;
        this.textSize = f3;
        this.verticalType = i6;
        this.shearDegrees = f6;
    }
}
