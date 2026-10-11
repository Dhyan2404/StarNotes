package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.PluralsRes;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.annotation.XmlRes;
import com.google.android.material.C5139R;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import java.util.Locale;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class BadgeState {

    /* renamed from: l */
    public static final String f30315l = "badge";

    /* renamed from: a */
    public final State f30316a;

    /* renamed from: b */
    public final State f30317b;

    /* renamed from: c */
    public final float f30318c;

    /* renamed from: d */
    public final float f30319d;

    /* renamed from: e */
    public final float f30320e;

    /* renamed from: f */
    public final float f30321f;

    /* renamed from: g */
    public final float f30322g;

    /* renamed from: h */
    public final float f30323h;

    /* renamed from: i */
    public final int f30324i;

    /* renamed from: j */
    public final int f30325j;

    /* renamed from: k */
    public int f30326k;

    public BadgeState(Context context, @XmlRes int i, @AttrRes int i2, @StyleRes int i3, @Nullable State state) {
        State state2 = new State();
        this.f30317b = state2;
        state = state == null ? new State() : state;
        if (i != 0) {
            state.badgeResId = i;
        }
        TypedArray m23016c = m23016c(context, state.badgeResId, i2, i3);
        Resources resources = context.getResources();
        this.f30318c = m23016c.getDimensionPixelSize(C5139R.styleable.Badge_badgeRadius, -1);
        this.f30324i = context.getResources().getDimensionPixelSize(C5139R.dimen.mtrl_badge_horizontal_edge_offset);
        this.f30325j = context.getResources().getDimensionPixelSize(C5139R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.f30319d = m23016c.getDimensionPixelSize(C5139R.styleable.Badge_badgeWithTextRadius, -1);
        this.f30320e = m23016c.getDimension(C5139R.styleable.Badge_badgeWidth, resources.getDimension(C5139R.dimen.m3_badge_size));
        this.f30322g = m23016c.getDimension(C5139R.styleable.Badge_badgeWithTextWidth, resources.getDimension(C5139R.dimen.m3_badge_with_text_size));
        this.f30321f = m23016c.getDimension(C5139R.styleable.Badge_badgeHeight, resources.getDimension(C5139R.dimen.m3_badge_size));
        this.f30323h = m23016c.getDimension(C5139R.styleable.Badge_badgeWithTextHeight, resources.getDimension(C5139R.dimen.m3_badge_with_text_size));
        boolean z = true;
        this.f30326k = m23016c.getInt(C5139R.styleable.Badge_offsetAlignmentMode, 1);
        state2.alpha = state.alpha == -2 ? 255 : state.alpha;
        if (state.number != -2) {
            state2.number = state.number;
        } else if (m23016c.hasValue(C5139R.styleable.Badge_number)) {
            state2.number = m23016c.getInt(C5139R.styleable.Badge_number, 0);
        } else {
            state2.number = -1;
        }
        if (state.text != null) {
            state2.text = state.text;
        } else if (m23016c.hasValue(C5139R.styleable.Badge_badgeText)) {
            state2.text = m23016c.getString(C5139R.styleable.Badge_badgeText);
        }
        state2.contentDescriptionForText = state.contentDescriptionForText;
        state2.contentDescriptionNumberless = state.contentDescriptionNumberless == null ? context.getString(C5139R.string.mtrl_badge_numberless_content_description) : state.contentDescriptionNumberless;
        state2.contentDescriptionQuantityStrings = state.contentDescriptionQuantityStrings == 0 ? C5139R.plurals.mtrl_badge_content_description : state.contentDescriptionQuantityStrings;
        state2.contentDescriptionExceedsMaxBadgeNumberRes = state.contentDescriptionExceedsMaxBadgeNumberRes == 0 ? C5139R.string.mtrl_exceed_max_badge_number_content_description : state.contentDescriptionExceedsMaxBadgeNumberRes;
        if (state.isVisible != null && !state.isVisible.booleanValue()) {
            z = false;
        }
        state2.isVisible = Boolean.valueOf(z);
        state2.maxCharacterCount = state.maxCharacterCount == -2 ? m23016c.getInt(C5139R.styleable.Badge_maxCharacterCount, -2) : state.maxCharacterCount;
        state2.maxNumber = state.maxNumber == -2 ? m23016c.getInt(C5139R.styleable.Badge_maxNumber, -2) : state.maxNumber;
        state2.badgeShapeAppearanceResId = Integer.valueOf(state.badgeShapeAppearanceResId == null ? m23016c.getResourceId(C5139R.styleable.Badge_badgeShapeAppearance, C5139R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : state.badgeShapeAppearanceResId.intValue());
        state2.badgeShapeAppearanceOverlayResId = Integer.valueOf(state.badgeShapeAppearanceOverlayResId == null ? m23016c.getResourceId(C5139R.styleable.Badge_badgeShapeAppearanceOverlay, 0) : state.badgeShapeAppearanceOverlayResId.intValue());
        state2.badgeWithTextShapeAppearanceResId = Integer.valueOf(state.badgeWithTextShapeAppearanceResId == null ? m23016c.getResourceId(C5139R.styleable.Badge_badgeWithTextShapeAppearance, C5139R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : state.badgeWithTextShapeAppearanceResId.intValue());
        state2.badgeWithTextShapeAppearanceOverlayResId = Integer.valueOf(state.badgeWithTextShapeAppearanceOverlayResId == null ? m23016c.getResourceId(C5139R.styleable.Badge_badgeWithTextShapeAppearanceOverlay, 0) : state.badgeWithTextShapeAppearanceOverlayResId.intValue());
        state2.backgroundColor = Integer.valueOf(state.backgroundColor == null ? m22986J(context, m23016c, C5139R.styleable.Badge_backgroundColor) : state.backgroundColor.intValue());
        state2.badgeTextAppearanceResId = Integer.valueOf(state.badgeTextAppearanceResId == null ? m23016c.getResourceId(C5139R.styleable.Badge_badgeTextAppearance, C5139R.style.TextAppearance_MaterialComponents_Badge) : state.badgeTextAppearanceResId.intValue());
        if (state.badgeTextColor != null) {
            state2.badgeTextColor = state.badgeTextColor;
        } else if (m23016c.hasValue(C5139R.styleable.Badge_badgeTextColor)) {
            state2.badgeTextColor = Integer.valueOf(m22986J(context, m23016c, C5139R.styleable.Badge_badgeTextColor));
        } else {
            state2.badgeTextColor = Integer.valueOf(new TextAppearance(context, state2.badgeTextAppearanceResId.intValue()).getTextColor().getDefaultColor());
        }
        state2.badgeGravity = Integer.valueOf(state.badgeGravity == null ? m23016c.getInt(C5139R.styleable.Badge_badgeGravity, 8388661) : state.badgeGravity.intValue());
        state2.badgeHorizontalPadding = Integer.valueOf(state.badgeHorizontalPadding == null ? m23016c.getDimensionPixelSize(C5139R.styleable.Badge_badgeWidePadding, resources.getDimensionPixelSize(C5139R.dimen.mtrl_badge_long_text_horizontal_padding)) : state.badgeHorizontalPadding.intValue());
        state2.badgeVerticalPadding = Integer.valueOf(state.badgeVerticalPadding == null ? m23016c.getDimensionPixelSize(C5139R.styleable.Badge_badgeVerticalPadding, resources.getDimensionPixelSize(C5139R.dimen.m3_badge_with_text_vertical_padding)) : state.badgeVerticalPadding.intValue());
        state2.horizontalOffsetWithoutText = Integer.valueOf(state.horizontalOffsetWithoutText == null ? m23016c.getDimensionPixelOffset(C5139R.styleable.Badge_horizontalOffset, 0) : state.horizontalOffsetWithoutText.intValue());
        state2.verticalOffsetWithoutText = Integer.valueOf(state.verticalOffsetWithoutText == null ? m23016c.getDimensionPixelOffset(C5139R.styleable.Badge_verticalOffset, 0) : state.verticalOffsetWithoutText.intValue());
        state2.horizontalOffsetWithText = Integer.valueOf(state.horizontalOffsetWithText == null ? m23016c.getDimensionPixelOffset(C5139R.styleable.Badge_horizontalOffsetWithText, state2.horizontalOffsetWithoutText.intValue()) : state.horizontalOffsetWithText.intValue());
        state2.verticalOffsetWithText = Integer.valueOf(state.verticalOffsetWithText == null ? m23016c.getDimensionPixelOffset(C5139R.styleable.Badge_verticalOffsetWithText, state2.verticalOffsetWithoutText.intValue()) : state.verticalOffsetWithText.intValue());
        state2.largeFontVerticalOffsetAdjustment = Integer.valueOf(state.largeFontVerticalOffsetAdjustment == null ? m23016c.getDimensionPixelOffset(C5139R.styleable.Badge_largeFontVerticalOffsetAdjustment, 0) : state.largeFontVerticalOffsetAdjustment.intValue());
        state2.additionalHorizontalOffset = Integer.valueOf(state.additionalHorizontalOffset == null ? 0 : state.additionalHorizontalOffset.intValue());
        state2.additionalVerticalOffset = Integer.valueOf(state.additionalVerticalOffset == null ? 0 : state.additionalVerticalOffset.intValue());
        state2.autoAdjustToWithinGrandparentBounds = Boolean.valueOf(state.autoAdjustToWithinGrandparentBounds == null ? m23016c.getBoolean(C5139R.styleable.Badge_autoAdjustToWithinGrandparentBounds, false) : state.autoAdjustToWithinGrandparentBounds.booleanValue());
        m23016c.recycle();
        if (state.numberLocale == null) {
            state2.numberLocale = Locale.getDefault(Locale.Category.FORMAT);
        } else {
            state2.numberLocale = state.numberLocale;
        }
        this.f30316a = state;
    }

    /* renamed from: J */
    public static int m22986J(Context context, @NonNull TypedArray typedArray, @StyleableRes int i) {
        return MaterialResources.getColorStateList(context, typedArray, i).getDefaultColor();
    }

    /* renamed from: A */
    public State m22987A() {
        return this.f30316a;
    }

    /* renamed from: B */
    public String m22988B() {
        return this.f30317b.text;
    }

    @StyleRes
    /* renamed from: C */
    public int m22989C() {
        return this.f30317b.badgeTextAppearanceResId.intValue();
    }

    @Dimension(unit = 1)
    /* renamed from: D */
    public int m22990D() {
        return this.f30317b.verticalOffsetWithText.intValue();
    }

    @Dimension(unit = 1)
    /* renamed from: E */
    public int m22991E() {
        return this.f30317b.verticalOffsetWithoutText.intValue();
    }

    /* renamed from: F */
    public boolean m22992F() {
        return this.f30317b.number != -1;
    }

    /* renamed from: G */
    public boolean m22993G() {
        return this.f30317b.text != null;
    }

    /* renamed from: H */
    public boolean m22994H() {
        return this.f30317b.autoAdjustToWithinGrandparentBounds.booleanValue();
    }

    /* renamed from: I */
    public boolean m22995I() {
        return this.f30317b.isVisible.booleanValue();
    }

    /* renamed from: K */
    public void m22996K(@Dimension(unit = 1) int i) {
        this.f30316a.additionalHorizontalOffset = Integer.valueOf(i);
        this.f30317b.additionalHorizontalOffset = Integer.valueOf(i);
    }

    /* renamed from: L */
    public void m22997L(@Dimension(unit = 1) int i) {
        this.f30316a.additionalVerticalOffset = Integer.valueOf(i);
        this.f30317b.additionalVerticalOffset = Integer.valueOf(i);
    }

    /* renamed from: M */
    public void m22998M(int i) {
        this.f30316a.alpha = i;
        this.f30317b.alpha = i;
    }

    /* renamed from: N */
    public void m22999N(boolean z) {
        this.f30316a.autoAdjustToWithinGrandparentBounds = Boolean.valueOf(z);
        this.f30317b.autoAdjustToWithinGrandparentBounds = Boolean.valueOf(z);
    }

    /* renamed from: O */
    public void m23000O(@ColorInt int i) {
        this.f30316a.backgroundColor = Integer.valueOf(i);
        this.f30317b.backgroundColor = Integer.valueOf(i);
    }

    /* renamed from: P */
    public void m23001P(int i) {
        this.f30316a.badgeGravity = Integer.valueOf(i);
        this.f30317b.badgeGravity = Integer.valueOf(i);
    }

    /* renamed from: Q */
    public void m23002Q(@Px int i) {
        this.f30316a.badgeHorizontalPadding = Integer.valueOf(i);
        this.f30317b.badgeHorizontalPadding = Integer.valueOf(i);
    }

    /* renamed from: R */
    public void m23003R(int i) {
        this.f30316a.badgeShapeAppearanceOverlayResId = Integer.valueOf(i);
        this.f30317b.badgeShapeAppearanceOverlayResId = Integer.valueOf(i);
    }

    /* renamed from: S */
    public void m23004S(int i) {
        this.f30316a.badgeShapeAppearanceResId = Integer.valueOf(i);
        this.f30317b.badgeShapeAppearanceResId = Integer.valueOf(i);
    }

    /* renamed from: T */
    public void m23005T(@ColorInt int i) {
        this.f30316a.badgeTextColor = Integer.valueOf(i);
        this.f30317b.badgeTextColor = Integer.valueOf(i);
    }

    /* renamed from: U */
    public void m23006U(@Px int i) {
        this.f30316a.badgeVerticalPadding = Integer.valueOf(i);
        this.f30317b.badgeVerticalPadding = Integer.valueOf(i);
    }

    /* renamed from: V */
    public void m23007V(int i) {
        this.f30316a.badgeWithTextShapeAppearanceOverlayResId = Integer.valueOf(i);
        this.f30317b.badgeWithTextShapeAppearanceOverlayResId = Integer.valueOf(i);
    }

    /* renamed from: W */
    public void m23008W(int i) {
        this.f30316a.badgeWithTextShapeAppearanceResId = Integer.valueOf(i);
        this.f30317b.badgeWithTextShapeAppearanceResId = Integer.valueOf(i);
    }

    /* renamed from: X */
    public void m23009X(@StringRes int i) {
        this.f30316a.contentDescriptionExceedsMaxBadgeNumberRes = i;
        this.f30317b.contentDescriptionExceedsMaxBadgeNumberRes = i;
    }

    /* renamed from: Y */
    public void m23010Y(CharSequence charSequence) {
        this.f30316a.contentDescriptionForText = charSequence;
        this.f30317b.contentDescriptionForText = charSequence;
    }

    /* renamed from: Z */
    public void m23011Z(CharSequence charSequence) {
        this.f30316a.contentDescriptionNumberless = charSequence;
        this.f30317b.contentDescriptionNumberless = charSequence;
    }

    /* renamed from: a */
    public void m23012a() {
        m23025g0(-1);
    }

    /* renamed from: a0 */
    public void m23013a0(@PluralsRes int i) {
        this.f30316a.contentDescriptionQuantityStrings = i;
        this.f30317b.contentDescriptionQuantityStrings = i;
    }

    /* renamed from: b */
    public void m23014b() {
        m23029i0(null);
    }

    /* renamed from: b0 */
    public void m23015b0(@Dimension(unit = 1) int i) {
        this.f30316a.horizontalOffsetWithText = Integer.valueOf(i);
        this.f30317b.horizontalOffsetWithText = Integer.valueOf(i);
    }

    /* renamed from: c */
    public final TypedArray m23016c(Context context, @XmlRes int i, @AttrRes int i2, @StyleRes int i3) {
        AttributeSet attributeSet;
        int i4;
        if (i != 0) {
            attributeSet = DrawableUtils.parseDrawableXml(context, i, f30315l);
            i4 = attributeSet.getStyleAttribute();
        } else {
            attributeSet = null;
            i4 = 0;
        }
        return ThemeEnforcement.obtainStyledAttributes(context, attributeSet, C5139R.styleable.Badge, i2, i4 == 0 ? i3 : i4, new int[0]);
    }

    /* renamed from: c0 */
    public void m23017c0(@Dimension(unit = 1) int i) {
        this.f30316a.horizontalOffsetWithoutText = Integer.valueOf(i);
        this.f30317b.horizontalOffsetWithoutText = Integer.valueOf(i);
    }

    @Dimension(unit = 1)
    /* renamed from: d */
    public int m23018d() {
        return this.f30317b.additionalHorizontalOffset.intValue();
    }

    /* renamed from: d0 */
    public void m23019d0(@Dimension(unit = 1) int i) {
        this.f30316a.largeFontVerticalOffsetAdjustment = Integer.valueOf(i);
        this.f30317b.largeFontVerticalOffsetAdjustment = Integer.valueOf(i);
    }

    @Dimension(unit = 1)
    /* renamed from: e */
    public int m23020e() {
        return this.f30317b.additionalVerticalOffset.intValue();
    }

    /* renamed from: e0 */
    public void m23021e0(int i) {
        this.f30316a.maxCharacterCount = i;
        this.f30317b.maxCharacterCount = i;
    }

    /* renamed from: f */
    public int m23022f() {
        return this.f30317b.alpha;
    }

    /* renamed from: f0 */
    public void m23023f0(int i) {
        this.f30316a.maxNumber = i;
        this.f30317b.maxNumber = i;
    }

    @ColorInt
    /* renamed from: g */
    public int m23024g() {
        return this.f30317b.backgroundColor.intValue();
    }

    /* renamed from: g0 */
    public void m23025g0(int i) {
        this.f30316a.number = i;
        this.f30317b.number = i;
    }

    /* renamed from: h */
    public int m23026h() {
        return this.f30317b.badgeGravity.intValue();
    }

    /* renamed from: h0 */
    public void m23027h0(Locale locale) {
        this.f30316a.numberLocale = locale;
        this.f30317b.numberLocale = locale;
    }

    @Px
    /* renamed from: i */
    public int m23028i() {
        return this.f30317b.badgeHorizontalPadding.intValue();
    }

    /* renamed from: i0 */
    public void m23029i0(String str) {
        this.f30316a.text = str;
        this.f30317b.text = str;
    }

    /* renamed from: j */
    public int m23030j() {
        return this.f30317b.badgeShapeAppearanceOverlayResId.intValue();
    }

    /* renamed from: j0 */
    public void m23031j0(@StyleRes int i) {
        this.f30316a.badgeTextAppearanceResId = Integer.valueOf(i);
        this.f30317b.badgeTextAppearanceResId = Integer.valueOf(i);
    }

    /* renamed from: k */
    public int m23032k() {
        return this.f30317b.badgeShapeAppearanceResId.intValue();
    }

    /* renamed from: k0 */
    public void m23033k0(@Dimension(unit = 1) int i) {
        this.f30316a.verticalOffsetWithText = Integer.valueOf(i);
        this.f30317b.verticalOffsetWithText = Integer.valueOf(i);
    }

    @ColorInt
    /* renamed from: l */
    public int m23034l() {
        return this.f30317b.badgeTextColor.intValue();
    }

    /* renamed from: l0 */
    public void m23035l0(@Dimension(unit = 1) int i) {
        this.f30316a.verticalOffsetWithoutText = Integer.valueOf(i);
        this.f30317b.verticalOffsetWithoutText = Integer.valueOf(i);
    }

    @Px
    /* renamed from: m */
    public int m23036m() {
        return this.f30317b.badgeVerticalPadding.intValue();
    }

    /* renamed from: m0 */
    public void m23037m0(boolean z) {
        this.f30316a.isVisible = Boolean.valueOf(z);
        this.f30317b.isVisible = Boolean.valueOf(z);
    }

    /* renamed from: n */
    public int m23038n() {
        return this.f30317b.badgeWithTextShapeAppearanceOverlayResId.intValue();
    }

    /* renamed from: o */
    public int m23039o() {
        return this.f30317b.badgeWithTextShapeAppearanceResId.intValue();
    }

    @StringRes
    /* renamed from: p */
    public int m23040p() {
        return this.f30317b.contentDescriptionExceedsMaxBadgeNumberRes;
    }

    /* renamed from: q */
    public CharSequence m23041q() {
        return this.f30317b.contentDescriptionForText;
    }

    /* renamed from: r */
    public CharSequence m23042r() {
        return this.f30317b.contentDescriptionNumberless;
    }

    @PluralsRes
    /* renamed from: s */
    public int m23043s() {
        return this.f30317b.contentDescriptionQuantityStrings;
    }

    @Dimension(unit = 1)
    /* renamed from: t */
    public int m23044t() {
        return this.f30317b.horizontalOffsetWithText.intValue();
    }

    @Dimension(unit = 1)
    /* renamed from: u */
    public int m23045u() {
        return this.f30317b.horizontalOffsetWithoutText.intValue();
    }

    @Dimension(unit = 1)
    /* renamed from: v */
    public int m23046v() {
        return this.f30317b.largeFontVerticalOffsetAdjustment.intValue();
    }

    /* renamed from: w */
    public int m23047w() {
        return this.f30317b.maxCharacterCount;
    }

    /* renamed from: x */
    public int m23048x() {
        return this.f30317b.maxNumber;
    }

    /* renamed from: y */
    public int m23049y() {
        return this.f30317b.number;
    }

    /* renamed from: z */
    public Locale m23050z() {
        return this.f30317b.numberLocale;
    }

    /* loaded from: classes6.dex */
    public static final class State implements Parcelable {
        private static final int BADGE_NUMBER_NONE = -1;
        public static final Parcelable.Creator<State> CREATOR = new C5148a();
        private static final int NOT_SET = -2;

        @Dimension(unit = 1)
        private Integer additionalHorizontalOffset;

        @Dimension(unit = 1)
        private Integer additionalVerticalOffset;
        private int alpha;
        private Boolean autoAdjustToWithinGrandparentBounds;

        @ColorInt
        private Integer backgroundColor;
        private Integer badgeGravity;

        @Px
        private Integer badgeHorizontalPadding;

        @XmlRes
        private int badgeResId;

        @StyleRes
        private Integer badgeShapeAppearanceOverlayResId;

        @StyleRes
        private Integer badgeShapeAppearanceResId;

        @StyleRes
        private Integer badgeTextAppearanceResId;

        @ColorInt
        private Integer badgeTextColor;

        @Px
        private Integer badgeVerticalPadding;

        @StyleRes
        private Integer badgeWithTextShapeAppearanceOverlayResId;

        @StyleRes
        private Integer badgeWithTextShapeAppearanceResId;

        @StringRes
        private int contentDescriptionExceedsMaxBadgeNumberRes;

        @Nullable
        private CharSequence contentDescriptionForText;

        @Nullable
        private CharSequence contentDescriptionNumberless;

        @PluralsRes
        private int contentDescriptionQuantityStrings;

        @Dimension(unit = 1)
        private Integer horizontalOffsetWithText;

        @Dimension(unit = 1)
        private Integer horizontalOffsetWithoutText;
        private Boolean isVisible;

        @Dimension(unit = 1)
        private Integer largeFontVerticalOffsetAdjustment;
        private int maxCharacterCount;
        private int maxNumber;
        private int number;
        private Locale numberLocale;

        @Nullable
        private String text;

        @Dimension(unit = 1)
        private Integer verticalOffsetWithText;

        @Dimension(unit = 1)
        private Integer verticalOffsetWithoutText;

        /* renamed from: com.google.android.material.badge.BadgeState$State$a */
        /* loaded from: classes6.dex */
        public class C5148a implements Parcelable.Creator<State> {
            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public State createFromParcel(@NonNull Parcel parcel) {
                return new State(parcel);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public State[] newArray(int i) {
                return new State[i];
            }
        }

        public State() {
            this.alpha = 255;
            this.number = -2;
            this.maxCharacterCount = -2;
            this.maxNumber = -2;
            this.isVisible = Boolean.TRUE;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeInt(this.badgeResId);
            parcel.writeSerializable(this.backgroundColor);
            parcel.writeSerializable(this.badgeTextColor);
            parcel.writeSerializable(this.badgeTextAppearanceResId);
            parcel.writeSerializable(this.badgeShapeAppearanceResId);
            parcel.writeSerializable(this.badgeShapeAppearanceOverlayResId);
            parcel.writeSerializable(this.badgeWithTextShapeAppearanceResId);
            parcel.writeSerializable(this.badgeWithTextShapeAppearanceOverlayResId);
            parcel.writeInt(this.alpha);
            parcel.writeString(this.text);
            parcel.writeInt(this.number);
            parcel.writeInt(this.maxCharacterCount);
            parcel.writeInt(this.maxNumber);
            CharSequence charSequence = this.contentDescriptionForText;
            parcel.writeString(charSequence != null ? charSequence.toString() : null);
            CharSequence charSequence2 = this.contentDescriptionNumberless;
            parcel.writeString(charSequence2 != null ? charSequence2.toString() : null);
            parcel.writeInt(this.contentDescriptionQuantityStrings);
            parcel.writeSerializable(this.badgeGravity);
            parcel.writeSerializable(this.badgeHorizontalPadding);
            parcel.writeSerializable(this.badgeVerticalPadding);
            parcel.writeSerializable(this.horizontalOffsetWithoutText);
            parcel.writeSerializable(this.verticalOffsetWithoutText);
            parcel.writeSerializable(this.horizontalOffsetWithText);
            parcel.writeSerializable(this.verticalOffsetWithText);
            parcel.writeSerializable(this.largeFontVerticalOffsetAdjustment);
            parcel.writeSerializable(this.additionalHorizontalOffset);
            parcel.writeSerializable(this.additionalVerticalOffset);
            parcel.writeSerializable(this.isVisible);
            parcel.writeSerializable(this.numberLocale);
            parcel.writeSerializable(this.autoAdjustToWithinGrandparentBounds);
        }

        public State(@NonNull Parcel parcel) {
            this.alpha = 255;
            this.number = -2;
            this.maxCharacterCount = -2;
            this.maxNumber = -2;
            this.isVisible = Boolean.TRUE;
            this.badgeResId = parcel.readInt();
            this.backgroundColor = (Integer) parcel.readSerializable();
            this.badgeTextColor = (Integer) parcel.readSerializable();
            this.badgeTextAppearanceResId = (Integer) parcel.readSerializable();
            this.badgeShapeAppearanceResId = (Integer) parcel.readSerializable();
            this.badgeShapeAppearanceOverlayResId = (Integer) parcel.readSerializable();
            this.badgeWithTextShapeAppearanceResId = (Integer) parcel.readSerializable();
            this.badgeWithTextShapeAppearanceOverlayResId = (Integer) parcel.readSerializable();
            this.alpha = parcel.readInt();
            this.text = parcel.readString();
            this.number = parcel.readInt();
            this.maxCharacterCount = parcel.readInt();
            this.maxNumber = parcel.readInt();
            this.contentDescriptionForText = parcel.readString();
            this.contentDescriptionNumberless = parcel.readString();
            this.contentDescriptionQuantityStrings = parcel.readInt();
            this.badgeGravity = (Integer) parcel.readSerializable();
            this.badgeHorizontalPadding = (Integer) parcel.readSerializable();
            this.badgeVerticalPadding = (Integer) parcel.readSerializable();
            this.horizontalOffsetWithoutText = (Integer) parcel.readSerializable();
            this.verticalOffsetWithoutText = (Integer) parcel.readSerializable();
            this.horizontalOffsetWithText = (Integer) parcel.readSerializable();
            this.verticalOffsetWithText = (Integer) parcel.readSerializable();
            this.largeFontVerticalOffsetAdjustment = (Integer) parcel.readSerializable();
            this.additionalHorizontalOffset = (Integer) parcel.readSerializable();
            this.additionalVerticalOffset = (Integer) parcel.readSerializable();
            this.isVisible = (Boolean) parcel.readSerializable();
            this.numberLocale = (Locale) parcel.readSerializable();
            this.autoAdjustToWithinGrandparentBounds = (Boolean) parcel.readSerializable();
        }
    }
}
