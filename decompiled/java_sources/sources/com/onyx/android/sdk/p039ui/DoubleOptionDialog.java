package com.onyx.android.sdk.p039ui;

import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.p039ui.DoubleOptionDialog;
import com.onyx.android.sdk.p039ui.databinding.DialogDoubleOptionBinding;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0002\b&\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 w2\u00020\u0001:\u0001wB\u000f\u0012\u0006\u0010t\u001a\u00020s¢\u0006\u0004\bu\u0010vJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0016R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\"\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\"\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u000f\u001a\u0004\b\u0019\u0010\u0011\"\u0004\b\u001a\u0010\u0013R\"\u0010\"\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010&\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u000f\u001a\u0004\b$\u0010\u0011\"\u0004\b%\u0010\u0013R\"\u0010*\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u000f\u001a\u0004\b(\u0010\u0011\"\u0004\b)\u0010\u0013R\"\u0010.\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010\u000f\u001a\u0004\b,\u0010\u0011\"\u0004\b-\u0010\u0013R\"\u00102\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010\u000f\u001a\u0004\b0\u0010\u0011\"\u0004\b1\u0010\u0013R\"\u00106\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010\u000f\u001a\u0004\b4\u0010\u0011\"\u0004\b5\u0010\u0013R\"\u0010:\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010\u000f\u001a\u0004\b8\u0010\u0011\"\u0004\b9\u0010\u0013R\"\u0010>\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010\u000f\u001a\u0004\b<\u0010\u0011\"\u0004\b=\u0010\u0013R\"\u0010B\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010\u000f\u001a\u0004\b@\u0010\u0011\"\u0004\bA\u0010\u0013R\"\u0010J\u001a\u00020C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\"\u0010N\u001a\u00020C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010E\u001a\u0004\bL\u0010G\"\u0004\bM\u0010IR\"\u0010R\u001a\u00020C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010E\u001a\u0004\bP\u0010G\"\u0004\bQ\u0010IR(\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u00020S8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR(\u0010^\u001a\b\u0012\u0004\u0012\u00020\u00020S8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010U\u001a\u0004\b\\\u0010W\"\u0004\b]\u0010YR(\u0010b\u001a\b\u0012\u0004\u0012\u00020\u00020S8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b_\u0010U\u001a\u0004\b`\u0010W\"\u0004\ba\u0010YR\"\u0010j\u001a\u00020c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bd\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR\"\u0010n\u001a\u00020C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bk\u0010E\u001a\u0004\bl\u0010G\"\u0004\bm\u0010IR\"\u0010r\u001a\u00020C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bo\u0010E\u001a\u0004\bp\u0010G\"\u0004\bq\u0010I¨\u0006x"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/DoubleOptionDialog;", "Landroid/app/Dialog;", "", "i", "d", "", HWREngineConstant.Constant.RES_ID, "Landroid/graphics/drawable/Drawable;", C6999h.f39688c, "show", "Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;", "e", "Lcom/onyx/android/sdk/ui/databinding/DialogDoubleOptionBinding;", "binding", C6997f.f39671c, "I", "getTitleTextRes", "()I", "setTitleTextRes", "(I)V", "titleTextRes", C6998g.f39679a, "getTitleColorRes", "setTitleColorRes", "titleColorRes", "getMessageTextRes", "setMessageTextRes", "messageTextRes", "", Constants.STRING_SIG, "getMessageText", "()Ljava/lang/String;", "setMessageText", "(Ljava/lang/String;)V", "messageText", "j", "getLeftButtonTitleRes", "setLeftButtonTitleRes", "leftButtonTitleRes", C4921e.f26537n, "getRightButtonTitleRes", "setRightButtonTitleRes", "rightButtonTitleRes", "l", "getLeftButtonColorRes", "setLeftButtonColorRes", "leftButtonColorRes", "m", "getRightButtonColorRes", "setRightButtonColorRes", "rightButtonColorRes", GoogleApiAvailabilityLight.f29016b, "getIconDrawableRes", "setIconDrawableRes", "iconDrawableRes", C4921e.f26528e, "getTitleIconDrawableRes", "setTitleIconDrawableRes", "titleIconDrawableRes", "p", "getLeftButtonDrawableRes", "setLeftButtonDrawableRes", "leftButtonDrawableRes", "q", "getRightButtonDrawableRes", "setRightButtonDrawableRes", "rightButtonDrawableRes", "", "r", Constants.HASIDCALL_INDEX_SIG, "getShowCloseButton", Constants.BOOLEAN_VALUE_SIG, "setShowCloseButton", "(Z)V", "showCloseButton", "s", "getShowTitleIconView", "setShowTitleIconView", "showTitleIconView", "t", "getAutoDismiss", "setAutoDismiss", "autoDismiss", "Lkotlin/Function0;", "u", "Lkotlin/jvm/functions/Function0;", "getOnLeftButtonClick", "()Lkotlin/jvm/functions/Function0;", "setOnLeftButtonClick", "(Lkotlin/jvm/functions/Function0;)V", "onLeftButtonClick", "v", "getOnRightButtonClick", "setOnRightButtonClick", "onRightButtonClick", "w", "getOnCloseButtonClick", "setOnCloseButtonClick", "onCloseButtonClick", "", "x", "F", "getMask", "()F", "setMask", "(F)V", "mask", "y", "getShowTitle", "setShowTitle", "showTitle", "z", "getShowIcon", "setShowIcon", "showIcon", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Companion", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DoubleOptionDialog extends Dialog {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final float MASK_DARK = 0.7f;
    public static final float MASK_LIGHT = 0.4f;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final DialogDoubleOptionBinding binding;

    /* renamed from: f, reason: from kotlin metadata */
    public int titleTextRes;

    /* renamed from: g, reason: from kotlin metadata */
    public int titleColorRes;

    /* renamed from: h, reason: from kotlin metadata */
    public int messageTextRes;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String messageText;

    /* renamed from: j, reason: from kotlin metadata */
    public int leftButtonTitleRes;

    /* renamed from: k, reason: from kotlin metadata */
    public int rightButtonTitleRes;

    /* renamed from: l, reason: from kotlin metadata */
    public int leftButtonColorRes;

    /* renamed from: m, reason: from kotlin metadata */
    public int rightButtonColorRes;

    /* renamed from: n, reason: from kotlin metadata */
    public int iconDrawableRes;

    /* renamed from: o, reason: from kotlin metadata */
    public int titleIconDrawableRes;

    /* renamed from: p, reason: from kotlin metadata */
    public int leftButtonDrawableRes;

    /* renamed from: q, reason: from kotlin metadata */
    public int rightButtonDrawableRes;

    /* renamed from: r, reason: from kotlin metadata */
    public boolean showCloseButton;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean showTitleIconView;

    /* renamed from: t, reason: from kotlin metadata */
    public boolean autoDismiss;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public Function0<Unit> onLeftButtonClick;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public Function0<Unit> onRightButtonClick;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public Function0<Unit> onCloseButtonClick;

    /* renamed from: x, reason: from kotlin metadata */
    public float mask;

    /* renamed from: y, reason: from kotlin metadata */
    public boolean showTitle;

    /* renamed from: z, reason: from kotlin metadata */
    public boolean showIcon;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;", "", "()V", "MASK_DARK", "", "MASK_LIGHT", "createIconStyle", "Lcom/onyx/android/sdk/ui/DoubleOptionDialog;", "activityContext", "Landroid/content/Context;", "createTitleStyle", "createWithConfirmWarningIconStyle", "createWithConfirmWarningTitleStyle", "createWithPrimarySecondaryTitleStyle", "createWithSecondaryPrimaryTitleStyle", "createWithWarningConfirmCloseStyle", "createWithWarningConfirmTitleStyle", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final DoubleOptionDialog createIconStyle(@NotNull Context activityContext) {
            Intrinsics.checkNotNullParameter(activityContext, "activityContext");
            DoubleOptionDialog doubleOptionDialog = new DoubleOptionDialog(activityContext);
            doubleOptionDialog.setShowTitle(false);
            doubleOptionDialog.setShowIcon(true);
            return doubleOptionDialog;
        }

        @NotNull
        public final DoubleOptionDialog createTitleStyle(@NotNull Context activityContext) {
            Intrinsics.checkNotNullParameter(activityContext, "activityContext");
            DoubleOptionDialog doubleOptionDialog = new DoubleOptionDialog(activityContext);
            doubleOptionDialog.setShowTitle(true);
            doubleOptionDialog.setShowIcon(false);
            return doubleOptionDialog;
        }

        @NotNull
        public final DoubleOptionDialog createWithConfirmWarningIconStyle(@NotNull Context activityContext) {
            Intrinsics.checkNotNullParameter(activityContext, "activityContext");
            DoubleOptionDialog createWithConfirmWarningTitleStyle = createWithConfirmWarningTitleStyle(activityContext);
            createWithConfirmWarningTitleStyle.setShowTitle(false);
            createWithConfirmWarningTitleStyle.setShowIcon(true);
            return createWithConfirmWarningTitleStyle;
        }

        @NotNull
        public final DoubleOptionDialog createWithConfirmWarningTitleStyle(@NotNull Context activityContext) {
            Intrinsics.checkNotNullParameter(activityContext, "activityContext");
            DoubleOptionDialog createTitleStyle = createTitleStyle(activityContext);
            createTitleStyle.setLeftButtonColorRes(C7996R.color.theme_text_btn_color);
            createTitleStyle.setRightButtonColorRes(C7106R.color.red_warning);
            createTitleStyle.setLeftButtonDrawableRes(C8037R.drawable.md_ui_shape_solid_primary);
            createTitleStyle.setRightButtonDrawableRes(C8037R.drawable.md_ui_shape_stroke_red);
            return createTitleStyle;
        }

        @NotNull
        public final DoubleOptionDialog createWithPrimarySecondaryTitleStyle(@NotNull Context activityContext) {
            Intrinsics.checkNotNullParameter(activityContext, "activityContext");
            DoubleOptionDialog createTitleStyle = createTitleStyle(activityContext);
            createTitleStyle.setLeftButtonColorRes(C7106R.color.white);
            createTitleStyle.setRightButtonColorRes(C7106R.color.black);
            createTitleStyle.setLeftButtonDrawableRes(C8037R.drawable.md_ui_shape_solid_primary);
            createTitleStyle.setRightButtonDrawableRes(C8037R.drawable.md_ui_shape_stroke_gray);
            return createTitleStyle;
        }

        @NotNull
        public final DoubleOptionDialog createWithSecondaryPrimaryTitleStyle(@NotNull Context activityContext) {
            Intrinsics.checkNotNullParameter(activityContext, "activityContext");
            DoubleOptionDialog createTitleStyle = createTitleStyle(activityContext);
            createTitleStyle.setLeftButtonColorRes(C7996R.color.theme_text_color_01);
            createTitleStyle.setRightButtonColorRes(C7106R.color.white);
            createTitleStyle.setLeftButtonDrawableRes(C8037R.drawable.md_ui_shape_stroke_gray);
            createTitleStyle.setRightButtonDrawableRes(C8037R.drawable.md_ui_shape_solid_primary);
            return createTitleStyle;
        }

        @NotNull
        public final DoubleOptionDialog createWithWarningConfirmCloseStyle(@NotNull Context activityContext) {
            Intrinsics.checkNotNullParameter(activityContext, "activityContext");
            DoubleOptionDialog createTitleStyle = createTitleStyle(activityContext);
            createTitleStyle.setShowTitle(true);
            createTitleStyle.setShowIcon(false);
            createTitleStyle.setShowTitleIconView(true);
            createTitleStyle.setShowCloseButton(true);
            createTitleStyle.setTitleIconDrawableRes(C8037R.drawable.ic_warning);
            createTitleStyle.setRightButtonColorRes(C7106R.color.white);
            createTitleStyle.setRightButtonDrawableRes(C8037R.drawable.md_ui_shape_solid_primary);
            ViewKt.setViewVisibleOrGone(createTitleStyle.binding.optionButtonLeft, false);
            ViewKt.setViewVisibleOrGone(createTitleStyle.binding.buttonPaddingView, false);
            return createTitleStyle;
        }

        @NotNull
        public final DoubleOptionDialog createWithWarningConfirmTitleStyle(@NotNull Context activityContext) {
            Intrinsics.checkNotNullParameter(activityContext, "activityContext");
            DoubleOptionDialog createTitleStyle = createTitleStyle(activityContext);
            createTitleStyle.setLeftButtonColorRes(C7106R.color.red_warning);
            createTitleStyle.setRightButtonColorRes(C7106R.color.white);
            createTitleStyle.setLeftButtonDrawableRes(C8037R.drawable.md_ui_shape_stroke_red);
            createTitleStyle.setRightButtonDrawableRes(C8037R.drawable.md_ui_shape_solid_primary);
            return createTitleStyle;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DoubleOptionDialog(@NotNull Context context) {
        super(context, C8037R.style.commonDialog);
        Intrinsics.checkNotNullParameter(context, "context");
        DialogDoubleOptionBinding inflate = DialogDoubleOptionBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.titleTextRes = C7106R.string.tip;
        this.titleColorRes = C7996R.color.theme_text_color_01;
        this.messageText = "";
        this.leftButtonColorRes = C7996R.color.theme_text_btn_color;
        this.rightButtonColorRes = C7106R.color.red_warning;
        this.iconDrawableRes = C8037R.drawable.md_ui_icon_warning;
        this.titleIconDrawableRes = C8037R.drawable.ic_warning;
        this.leftButtonDrawableRes = C8037R.drawable.selector_dialog_common_btn_primary;
        this.rightButtonDrawableRes = C8037R.drawable.md_ui_shape_stroke_red;
        this.autoDismiss = true;
        this.onLeftButtonClick = new Function0<Unit>() { // from class: com.onyx.android.sdk.ui.DoubleOptionDialog$onLeftButtonClick$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.onRightButtonClick = new Function0<Unit>() { // from class: com.onyx.android.sdk.ui.DoubleOptionDialog$onRightButtonClick$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.onCloseButtonClick = new Function0<Unit>() { // from class: com.onyx.android.sdk.ui.DoubleOptionDialog$onCloseButtonClick$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.mask = 0.4f;
        this.showTitle = true;
        m36392i();
        m36390d();
    }

    /* renamed from: e */
    public static final void m36387e(DoubleOptionDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        this$0.onCloseButtonClick.invoke();
    }

    /* renamed from: f */
    public static final void m36388f(DoubleOptionDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.autoDismiss) {
            this$0.dismiss();
        }
        this$0.onLeftButtonClick.invoke();
    }

    /* renamed from: g */
    public static final void m36389g(DoubleOptionDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.autoDismiss) {
            this$0.dismiss();
        }
        this$0.onRightButtonClick.invoke();
    }

    /* renamed from: d */
    public final void m36390d() {
        TintImageView closeButton = this.binding.closeButton;
        Intrinsics.checkNotNullExpressionValue(closeButton, "closeButton");
        com.onyx.android.sdk.extension.ViewKt.click$default(closeButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jff
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DoubleOptionDialog.m36387e(DoubleOptionDialog.this, view);
            }
        }, 1, null);
        TintTextView optionButtonLeft = this.binding.optionButtonLeft;
        Intrinsics.checkNotNullExpressionValue(optionButtonLeft, "optionButtonLeft");
        com.onyx.android.sdk.extension.ViewKt.click$default(optionButtonLeft, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kff
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DoubleOptionDialog.m36388f(DoubleOptionDialog.this, view);
            }
        }, 1, null);
        TintTextView optionButtonRight = this.binding.optionButtonRight;
        Intrinsics.checkNotNullExpressionValue(optionButtonRight, "optionButtonRight");
        com.onyx.android.sdk.extension.ViewKt.click$default(optionButtonRight, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lff
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DoubleOptionDialog.m36389g(DoubleOptionDialog.this, view);
            }
        }, 1, null);
    }

    public final boolean getAutoDismiss() {
        return this.autoDismiss;
    }

    public final int getIconDrawableRes() {
        return this.iconDrawableRes;
    }

    public final int getLeftButtonColorRes() {
        return this.leftButtonColorRes;
    }

    public final int getLeftButtonDrawableRes() {
        return this.leftButtonDrawableRes;
    }

    public final int getLeftButtonTitleRes() {
        return this.leftButtonTitleRes;
    }

    public final float getMask() {
        return this.mask;
    }

    @NotNull
    public final String getMessageText() {
        return this.messageText;
    }

    public final int getMessageTextRes() {
        return this.messageTextRes;
    }

    @NotNull
    public final Function0<Unit> getOnCloseButtonClick() {
        return this.onCloseButtonClick;
    }

    @NotNull
    public final Function0<Unit> getOnLeftButtonClick() {
        return this.onLeftButtonClick;
    }

    @NotNull
    public final Function0<Unit> getOnRightButtonClick() {
        return this.onRightButtonClick;
    }

    public final int getRightButtonColorRes() {
        return this.rightButtonColorRes;
    }

    public final int getRightButtonDrawableRes() {
        return this.rightButtonDrawableRes;
    }

    public final int getRightButtonTitleRes() {
        return this.rightButtonTitleRes;
    }

    public final boolean getShowCloseButton() {
        return this.showCloseButton;
    }

    public final boolean getShowIcon() {
        return this.showIcon;
    }

    public final boolean getShowTitle() {
        return this.showTitle;
    }

    public final boolean getShowTitleIconView() {
        return this.showTitleIconView;
    }

    public final int getTitleColorRes() {
        return this.titleColorRes;
    }

    public final int getTitleIconDrawableRes() {
        return this.titleIconDrawableRes;
    }

    public final int getTitleTextRes() {
        return this.titleTextRes;
    }

    /* renamed from: h */
    public final Drawable m36391h(int resId) {
        ColorStateList valueOf = ColorStateList.valueOf(ResManager.INSTANCE.getColor(C7106R.color.black_percent_08));
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
        return new RippleDrawable(valueOf, ThemeUtils.getThemeDrawable(resId), null);
    }

    /* renamed from: i */
    public final void m36392i() {
        setContentView(this.binding.getRoot());
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            Intrinsics.checkNotNull(attributes, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams");
            attributes.width = -2;
            attributes.height = -2;
            setCancelable(false);
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
    }

    public final void setAutoDismiss(boolean z) {
        this.autoDismiss = z;
    }

    public final void setIconDrawableRes(int i) {
        this.iconDrawableRes = i;
    }

    public final void setLeftButtonColorRes(int i) {
        this.leftButtonColorRes = i;
    }

    public final void setLeftButtonDrawableRes(int i) {
        this.leftButtonDrawableRes = i;
    }

    public final void setLeftButtonTitleRes(int i) {
        this.leftButtonTitleRes = i;
    }

    public final void setMask(float f) {
        this.mask = f;
    }

    public final void setMessageText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.messageText = str;
    }

    public final void setMessageTextRes(int i) {
        this.messageTextRes = i;
    }

    public final void setOnCloseButtonClick(@NotNull Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onCloseButtonClick = function0;
    }

    public final void setOnLeftButtonClick(@NotNull Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onLeftButtonClick = function0;
    }

    public final void setOnRightButtonClick(@NotNull Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onRightButtonClick = function0;
    }

    public final void setRightButtonColorRes(int i) {
        this.rightButtonColorRes = i;
    }

    public final void setRightButtonDrawableRes(int i) {
        this.rightButtonDrawableRes = i;
    }

    public final void setRightButtonTitleRes(int i) {
        this.rightButtonTitleRes = i;
    }

    public final void setShowCloseButton(boolean z) {
        this.showCloseButton = z;
    }

    public final void setShowIcon(boolean z) {
        this.showIcon = z;
    }

    public final void setShowTitle(boolean z) {
        this.showTitle = z;
    }

    public final void setShowTitleIconView(boolean z) {
        this.showTitleIconView = z;
    }

    public final void setTitleColorRes(int i) {
        this.titleColorRes = i;
    }

    public final void setTitleIconDrawableRes(int i) {
        this.titleIconDrawableRes = i;
    }

    public final void setTitleTextRes(int i) {
        this.titleTextRes = i;
    }

    @Override // android.app.Dialog
    public void show() {
        TintTextView tintTextView = this.binding.titleText;
        ResManager resManager = ResManager.INSTANCE;
        tintTextView.setText(resManager.getStringSafely(this.titleTextRes));
        this.binding.titleText.setTextColor(ThemeUtils.getColorById(this.titleColorRes));
        if (this.messageText.length() > 0) {
            this.binding.messageText.setText(this.messageText);
        } else {
            this.binding.messageText.setText(resManager.getStringSafely(this.messageTextRes));
        }
        this.binding.optionButtonLeft.setText(resManager.getStringSafely(this.leftButtonTitleRes));
        this.binding.optionButtonRight.setText(resManager.getStringSafely(this.rightButtonTitleRes));
        this.binding.optionButtonLeft.setTextColor(ThemeUtils.getColorById(this.leftButtonColorRes));
        this.binding.optionButtonRight.setTextColor(ThemeUtils.getColorById(this.rightButtonColorRes));
        this.binding.image.setImageDrawable(resManager.getDrawable(this.iconDrawableRes));
        this.binding.titleIconView.setImageDrawable(resManager.getDrawable(this.titleIconDrawableRes));
        this.binding.optionButtonLeft.setBackground(m36391h(this.leftButtonDrawableRes));
        this.binding.optionButtonRight.setBackground(m36391h(this.rightButtonDrawableRes));
        ViewKt.setViewVisibleOrGone(this.binding.titleText, this.showTitle);
        ViewKt.setViewVisibleOrGone(this.binding.closeButton, this.showCloseButton);
        ViewKt.setViewVisibleOrGone(this.binding.image, this.showIcon);
        ViewKt.setViewVisibleOrGone(this.binding.titleIconView, this.showTitleIconView);
        Window window = getWindow();
        if (window != null) {
            window.setDimAmount(this.mask);
        }
        super.show();
    }
}
