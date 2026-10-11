package com.onyx.galaxy.note.editor.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.hwr.service.manager.HWRActivationManager;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.onyx.galaxy.note.editor.menu.PrimarySelectionMenuAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u0019¢\u0006\u0004\b$\u0010%J\u001c\u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0018\u001a\u00020\tH\u0002R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u001dR\u0014\u0010 \u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u001fR\u0014\u0010!\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u001fR\u0014\u0010#\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010\u001f¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/PrimarySelectionMenuAdapter;", "Lcom/onyx/galaxy/note/editor/menu/BasePagedMenuAdapter;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "", "forceUpdate", "", "setMenusByShape", "", FirebaseAnalytics.Param.INDEX, "Landroid/view/View;", "createDividerView", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "menu", "createMenuView", "view", "r", "Landroid/widget/ImageView;", "l", GoogleApiAvailabilityLight.f29016b, "Landroid/widget/TextView;", C4921e.f26528e, "m", "q", "Landroid/content/Context;", "Landroid/content/Context;", "context", "", Constants.STRING_SIG, "elementsHashCodeStr", "I", "height", Constant.PADDING_TAG, "p", "textSize", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PrimarySelectionMenuAdapter extends BasePagedMenuAdapter {

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public String elementsHashCodeStr;

    /* renamed from: n, reason: from kotlin metadata */
    public final int height;

    /* renamed from: o, reason: from kotlin metadata */
    public final int padding;

    /* renamed from: p, reason: from kotlin metadata */
    public final int textSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrimarySelectionMenuAdapter(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.elementsHashCodeStr = "";
        ResManager resManager = ResManager.INSTANCE;
        this.height = resManager.getDimens(C7384R.dimen.dp_40);
        this.padding = resManager.getDimens(C7384R.dimen.dp_16);
        this.textSize = resManager.getDimens(C7384R.dimen.dp_16);
    }

    /* renamed from: p */
    public static final void m46411p(PrimarySelectionMenuAdapter this$0, SelectionMenuType menu, View view, View view2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(menu, "$menu");
        Intrinsics.checkNotNullParameter(view, "$view");
        SelectionMenuCallback callback = this$0.getCallback();
        if (callback != null) {
            callback.onMenuClick(menu, view);
        }
    }

    @Override // com.onyx.galaxy.note.editor.menu.BasePagedMenuAdapter
    @NotNull
    public View createDividerView(int index) {
        TintView tintView = new TintView(this.context);
        ViewKt.setLayoutParams(tintView, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_0_5), this.height);
        tintView.setBackgroundResource(C7996R.color.theme_divider_color_01);
        return tintView;
    }

    @Override // com.onyx.galaxy.note.editor.menu.BasePagedMenuAdapter
    @NotNull
    public View createMenuView(int index, @NotNull final SelectionMenuType menu) {
        final View m46412l;
        Intrinsics.checkNotNullParameter(menu, "menu");
        if (menu == SelectionMenuType.HWR_BEAUTIFY) {
            m46412l = m46413m(menu);
        } else {
            SelectionMenuType.Companion companion = SelectionMenuType.INSTANCE;
            m46412l = companion.isAnnotationMenuType(menu) ? m46412l(menu) : companion.isValidImageResId(menu) ? m46414n(menu) : m46415o(menu);
        }
        m46417r(m46412l);
        m46412l.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.e7l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PrimarySelectionMenuAdapter.m46411p(PrimarySelectionMenuAdapter.this, menu, m46412l, view);
            }
        });
        return m46412l;
    }

    /* renamed from: l */
    public final ImageView m46412l(SelectionMenuType menu) {
        Drawable themeDrawable = ThemeUtils.getThemeDrawable(menu.getImageResId());
        Intrinsics.checkNotNull(themeDrawable, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable");
        LayerDrawable layerDrawable = (LayerDrawable) themeDrawable;
        Drawable drawable = layerDrawable.getDrawable(0);
        Drawable drawable2 = layerDrawable.getDrawable(1);
        SelectionMenuType.Companion companion = SelectionMenuType.INSTANCE;
        int i = companion.getAnnotationColorOption(companion.getAnnotationStyleType(menu)).get();
        int colorById = ThemeUtils.getColorById(C7996R.color.theme_icon_color_01);
        drawable.setTint(i);
        drawable2.setTint(colorById);
        TintImageView tintImageView = new TintImageView(this.context);
        tintImageView.setScaleType(ImageView.ScaleType.CENTER);
        tintImageView.setImageDrawable(layerDrawable);
        tintImageView.measure(View.MeasureSpec.makeMeasureSpec(this.height, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.height, 1073741824));
        ViewKt.setLayoutParams(tintImageView, tintImageView.getMeasuredWidth() + (this.padding * 2), this.height);
        return tintImageView;
    }

    /* renamed from: m */
    public final View m46413m(SelectionMenuType menu) {
        TintTextView tintTextView = new TintTextView(this.context);
        ResManager resManager = ResManager.INSTANCE;
        String stringSafely = resManager.getStringSafely(menu.getTextResId());
        tintTextView.setGravity(17);
        tintTextView.setText(stringSafely);
        tintTextView.setTextSize(resManager.getDimension(C7384R.dimen.sp_14));
        tintTextView.setSingleLine();
        tintTextView.setTextColorById(menu.getTextColor());
        tintTextView.setTextSize(0, this.textSize);
        int measureText = (int) tintTextView.getPaint().measureText(stringSafely);
        ViewKt.setLayoutParams(tintTextView, measureText, this.height);
        int dimension = (int) resManager.getDimension(C7384R.dimen.dp_26);
        int dimension2 = (int) resManager.getDimension(C7384R.dimen.dp_16);
        int dimension3 = (int) resManager.getDimension(C7384R.dimen.dp_4);
        TintImageView tintImageView = new TintImageView(this.context);
        int m46416q = m46416q();
        tintImageView.setScaleType(ImageView.ScaleType.FIT_XY);
        tintImageView.setImageResource(m46416q);
        tintImageView.measure(View.MeasureSpec.makeMeasureSpec(dimension, 1073741824), View.MeasureSpec.makeMeasureSpec(dimension2, 1073741824));
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(dimension, dimension2);
        marginLayoutParams.leftMargin = dimension3;
        tintImageView.setLayoutParams(marginLayoutParams);
        TintLinearLayout tintLinearLayout = new TintLinearLayout(this.context);
        tintLinearLayout.setOrientation(0);
        tintLinearLayout.setGravity(17);
        int i = this.padding;
        tintLinearLayout.setPadding(i, 0, i, 0);
        tintLinearLayout.addView(tintTextView);
        if (m46416q != 0) {
            tintLinearLayout.addView(tintImageView);
            ViewKt.setLayoutParams(tintLinearLayout, measureText + dimension3 + dimension + (this.padding * 2), this.height);
        } else {
            ViewKt.setLayoutParams(tintLinearLayout, measureText + (this.padding * 2), this.height);
        }
        return tintLinearLayout;
    }

    /* renamed from: n */
    public final ImageView m46414n(SelectionMenuType menu) {
        TintImageView tintImageView = new TintImageView(this.context);
        tintImageView.setScaleType(ImageView.ScaleType.CENTER);
        tintImageView.setImageResource(menu.getImageResId());
        tintImageView.measure(View.MeasureSpec.makeMeasureSpec(this.height, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.height, 1073741824));
        ViewKt.setLayoutParams(tintImageView, tintImageView.getMeasuredWidth() + (this.padding * 2), this.height);
        return tintImageView;
    }

    /* renamed from: o */
    public final TextView m46415o(SelectionMenuType menu) {
        TintTextView tintTextView = new TintTextView(this.context);
        ResManager resManager = ResManager.INSTANCE;
        String stringSafely = resManager.getStringSafely(menu.getTextResId());
        tintTextView.setGravity(17);
        tintTextView.setText(stringSafely);
        tintTextView.setTextSize(resManager.getDimension(C7384R.dimen.sp_14));
        tintTextView.setSingleLine();
        tintTextView.setTextColorById(menu.getTextColor());
        tintTextView.setTextSize(0, this.textSize);
        ViewKt.setLayoutParams(tintTextView, (int) (tintTextView.getPaint().measureText(stringSafely) + (this.padding * 2)), this.height);
        return tintTextView;
    }

    /* renamed from: q */
    public final int m46416q() {
        if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            return C10651R.drawable.ic_ink_beautify_trial;
        }
        String engineByFunction = HWREngineManager.INSTANCE.getEngineByFunction(FunctionKey.INK_BEAUTIFY);
        HWRActivationManager hWRActivationManager = HWRActivationManager.INSTANCE;
        if (hWRActivationManager.showTrialMenu(engineByFunction)) {
            return C10651R.drawable.ic_ink_beautify_trial;
        }
        if (hWRActivationManager.showProMenu(engineByFunction)) {
            return C10651R.drawable.ic_ink_beautify_pro;
        }
        return 0;
    }

    /* renamed from: r */
    public final void m46417r(View view) {
        view.setClickable(true);
        view.setBackground(ThemeUtils.getThemeDrawable(C10651R.drawable.ripple_white));
        int i = this.padding;
        view.setPadding(i, 0, i, 0);
    }

    public final void setMenusByShape(@NotNull List<? extends Shape> shapes, boolean forceUpdate) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        String simpleNameString = AnyKt.toSimpleNameString(shapes);
        if (forceUpdate || !Intrinsics.areEqual(simpleNameString, this.elementsHashCodeStr)) {
            this.elementsHashCodeStr = simpleNameString;
            setMenus(ShapeMenuProvider.INSTANCE.getShapeMenus(shapes));
        }
    }
}
