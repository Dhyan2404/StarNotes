package com.onyx.galaxy.note.category.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutLabelBinding;
import com.onyx.galaxy.note.utils.TagColorUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 92\u00020\u0001:\u00019B'\b\u0007\u0012\u0006\u00105\u001a\u000204\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u00106\u001a\u00020\u000f¢\u0006\u0004\b7\u00108J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0012\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002J\b\u0010\n\u001a\u00020\u0005H\u0002J\b\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0003H\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\r0\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010 R\u0016\u0010%\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010 R\u0016\u0010'\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010 R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010-\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010 R\u0016\u0010/\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010 R\u0016\u00101\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010 R\u0016\u00103\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010 ¨\u0006:"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/LabelLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "", "labels", "", "setLabels", "Landroid/util/AttributeSet;", "attrs", "p", "q", "m", "text", "Landroid/widget/TextView;", C4921e.f26528e, "", "color", "Landroid/graphics/drawable/GradientDrawable;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/databinding/LayoutLabelBinding;", "v0", "Lcom/onyx/galaxy/note/databinding/LayoutLabelBinding;", "binding", "", "w0", "Ljava/util/List;", "labelViews", "Landroid/graphics/drawable/Drawable;", "x0", "Landroid/graphics/drawable/Drawable;", "labelIcon", "y0", "I", "labelIconTintId", "z0", "labelIconSize", "A0", "labelSpacing", "B0", "labelBackgroundColor", "", "C0", "F", "labelTextSize", "D0", "labelPaddingHorizontal", "E0", "labelPaddingVertical", "F0", "labelCornerRadius", "G0", "labelMaxEms", "Landroid/content/Context;", "context", "defStyleAttr", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLabelLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LabelLayout.kt\ncom/onyx/galaxy/note/category/view/LabelLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n1864#2,3:159\n*S KotlinDebug\n*F\n+ 1 LabelLayout.kt\ncom/onyx/galaxy/note/category/view/LabelLayout\n*L\n113#1:159,3\n*E\n"})
/* loaded from: classes9.dex */
public final class LabelLayout extends ConstraintLayout {

    /* renamed from: H0 */
    public static final int f55064H0;

    /* renamed from: I0 */
    public static final int f55065I0;

    /* renamed from: J0 */
    public static final int f55066J0;

    /* renamed from: K0 */
    public static final int f55067K0;

    /* renamed from: L0 */
    public static final float f55068L0;

    /* renamed from: M0 */
    public static final int f55069M0;

    /* renamed from: N0 */
    public static final int f55070N0;

    /* renamed from: O0 */
    public static final int f55071O0;

    /* renamed from: A0, reason: from kotlin metadata */
    public int labelSpacing;

    /* renamed from: B0, reason: from kotlin metadata */
    public int labelBackgroundColor;

    /* renamed from: C0, reason: from kotlin metadata */
    public float labelTextSize;

    /* renamed from: D0, reason: from kotlin metadata */
    public int labelPaddingHorizontal;

    /* renamed from: E0, reason: from kotlin metadata */
    public int labelPaddingVertical;

    /* renamed from: F0, reason: from kotlin metadata */
    public int labelCornerRadius;

    /* renamed from: G0, reason: from kotlin metadata */
    public int labelMaxEms;

    /* renamed from: v0, reason: from kotlin metadata */
    @NotNull
    public final LayoutLabelBinding binding;

    /* renamed from: w0, reason: from kotlin metadata */
    @NotNull
    public List<TextView> labelViews;

    /* renamed from: x0, reason: from kotlin metadata */
    @Nullable
    public Drawable labelIcon;

    /* renamed from: y0, reason: from kotlin metadata */
    public int labelIconTintId;

    /* renamed from: z0, reason: from kotlin metadata */
    public int labelIconSize;

    static {
        ResManager resManager = ResManager.INSTANCE;
        f55064H0 = resManager.getDimens(C7384R.dimen.dp_16);
        f55065I0 = resManager.getDimens(C7384R.dimen.dp_8);
        f55066J0 = resManager.getColor(C7996R.color.theme_background_color_02);
        f55067K0 = C7996R.color.theme_icon_color_03;
        f55068L0 = resManager.getDimens(C7384R.dimen.sp_10);
        f55069M0 = resManager.getDimens(C7384R.dimen.dp_6);
        f55070N0 = resManager.getDimens(C7384R.dimen.dp_2);
        f55071O0 = resManager.getDimens(C7384R.dimen.dp_16);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LabelLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: m */
    public final void m43938m() {
        this.binding.flexboxLabels.removeAllViews();
        this.labelViews.clear();
    }

    /* renamed from: n */
    public final GradientDrawable m43939n(int color) {
        int generateTagColor = TagColorUtils.INSTANCE.generateTagColor(color);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(ResManager.INSTANCE.getDimension(C7384R.dimen.dp_18));
        gradientDrawable.setColor(ColorStateList.valueOf(generateTagColor));
        return gradientDrawable;
    }

    /* renamed from: o */
    public final TextView m43940o(String text) {
        TintTextView tintTextView = new TintTextView(getContext());
        tintTextView.setText(text);
        tintTextView.setTextColor(ThemeUtils.getColorById(C7996R.color.theme_text_color_01));
        tintTextView.setTextSize(0, this.labelTextSize);
        int i = this.labelPaddingHorizontal;
        int i2 = this.labelPaddingVertical;
        tintTextView.setPadding(i, i2, i, i2);
        FlexboxLayout.LayoutParams layoutParams = new FlexboxLayout.LayoutParams(-2, -2);
        ResManager resManager = ResManager.INSTANCE;
        layoutParams.setMargins(0, resManager.getDimens(C7384R.dimen.dp_4), 0, resManager.getDimens(C7384R.dimen.dp_4));
        tintTextView.setLayoutParams(layoutParams);
        tintTextView.setMaxEms(this.labelMaxEms);
        tintTextView.setMaxLines(1);
        tintTextView.setEllipsize(TextUtils.TruncateAt.END);
        tintTextView.setBackground(m43939n(ThemeUtils.getColor(tintTextView.getContext(), this.labelBackgroundColor)));
        return tintTextView;
    }

    /* renamed from: p */
    public final void m43941p(AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.LabelLayout, 0, 0);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        try {
            this.labelIcon = obtainStyledAttributes.getDrawable(C10651R.styleable.LabelLayout_labelIcon);
            this.labelIconTintId = obtainStyledAttributes.getResourceId(C10651R.styleable.LabelLayout_labelIconTint, f55067K0);
            this.labelIconSize = obtainStyledAttributes.getDimensionPixelSize(C10651R.styleable.LabelLayout_labelIconSize, f55064H0);
            this.labelSpacing = obtainStyledAttributes.getDimensionPixelSize(C10651R.styleable.LabelLayout_labelSpacing, f55065I0);
            this.labelTextSize = obtainStyledAttributes.getDimension(C10651R.styleable.LabelLayout_labelTextSize, f55068L0);
            this.labelPaddingHorizontal = obtainStyledAttributes.getDimensionPixelSize(C10651R.styleable.LabelLayout_labelPaddingHorizontal, f55069M0);
            this.labelPaddingVertical = obtainStyledAttributes.getDimensionPixelSize(C10651R.styleable.LabelLayout_labelPaddingVertical, f55070N0);
            this.labelCornerRadius = obtainStyledAttributes.getDimensionPixelSize(C10651R.styleable.LabelLayout_labelCornerRadius, f55071O0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: q */
    public final void m43942q() {
        Drawable drawable = this.labelIcon;
        if (drawable != null) {
            this.binding.ivIcon.setImageDrawable(drawable);
        }
        this.binding.ivIcon.setImageTintList(ThemeUtils.getThemeColorStateList(getContext(), this.labelIconTintId));
        int i = this.labelIconSize;
        ViewGroup.LayoutParams layoutParams = this.binding.ivIcon.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
    }

    public final void setLabels(@NotNull List<String> labels) {
        Intrinsics.checkNotNullParameter(labels, "labels");
        m43938m();
        int i = 0;
        for (Object obj : labels) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            TextView m43940o = m43940o((String) obj);
            if (i < labels.size() - 1) {
                ViewGroup.LayoutParams layoutParams = m43940o.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.google.android.flexbox.FlexboxLayout.LayoutParams");
                FlexboxLayout.LayoutParams layoutParams2 = (FlexboxLayout.LayoutParams) layoutParams;
                layoutParams2.setMarginEnd(this.labelSpacing);
                m43940o.setLayoutParams(layoutParams2);
            }
            this.binding.flexboxLabels.addView(m43940o);
            this.labelViews.add(m43940o);
            i = i2;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LabelLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ LabelLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LabelLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        LayoutLabelBinding inflate = LayoutLabelBinding.inflate(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.labelViews = new ArrayList();
        this.labelIconTintId = f55067K0;
        this.labelIconSize = f55064H0;
        this.labelSpacing = f55065I0;
        this.labelBackgroundColor = f55066J0;
        this.labelTextSize = f55068L0;
        this.labelPaddingHorizontal = f55069M0;
        this.labelPaddingVertical = f55070N0;
        this.labelCornerRadius = f55071O0;
        this.labelMaxEms = 8;
        m43941p(attributeSet);
        m43942q();
    }
}
