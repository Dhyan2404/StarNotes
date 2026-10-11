package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.LoginAccountChanged;
import com.onyx.android.sdk.data.account.event.VipRoleChanged;
import com.onyx.android.sdk.data.utils.JSONListOption;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.note.common.utils.PenUtils;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.data.EraserPropertyOption;
import com.onyx.android.sdk.universal.editor.events.app.ClearCurrentPageEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeEraseTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeEraserWidthEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.CheckLoginStateAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.statistics.EraserPopupMenuEventBean;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupEraserBinding;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.event.EraserPopupDismissEvent;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.EraserPopup;
import com.onyx.galaxy.note.editor.view.popup.TipsPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.member.action.OpenMemberChargeAction;
import com.onyx.galaxy.note.member.data.FeatureChargeArgs;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.Range;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 O2\u00020\u0001:\u0001OB'\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u0010+\u001a\u00020$\u0012\u0006\u00103\u001a\u00020,\u0012\u0006\u0010L\u001a\u00020K¢\u0006\u0004\bM\u0010NJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\tH\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\u000e\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u000bJ\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dH\u0007J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020 H\u0007J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\"H\u0007R\"\u0010+\u001a\u00020$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u00103\u001a\u00020,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001b\u00109\u001a\u0002048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108R\u001d\u0010@\u001a\b\u0012\u0004\u0012\u00020;0:8\u0006¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?R\u001a\u0010D\u001a\b\u0012\u0004\u0012\u00020\t0A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010G¨\u0006P"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "R", "Q", "A", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "B", "U", "", "elementType", "", "add", "y", "eraserType", "Y", "X", "z", "V", "W", "isChecked", "S", "Landroid/view/View;", Constants.ELEMNAME_ANCHOR_STRING, "show", "dismiss", "isShowing", "Lcom/onyx/galaxy/note/common/statistics/EraserPopupMenuEventBean;", "makeReportEvent", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;", NotificationCompat.CATEGORY_EVENT, "reportEvent", "Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;", "onVipRoleChanged", "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;", "onLoginAccountChanged", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "r", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "getPenViewModel", "()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "setPenViewModel", "(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V", "penViewModel", "Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;", "s", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupEraserBinding;", "binding", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "t", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "getPenArgsOption", "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "penArgsOption", "Lcom/onyx/android/sdk/data/utils/JSONListOption;", "u", "Lcom/onyx/android/sdk/data/utils/JSONListOption;", "eraserElementsOnlyOption", "", "v", "F", "popupHeight", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEraserPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraserPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/EraserPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,354:1\n256#2,2:355\n256#2,2:357\n256#2,2:359\n256#2,2:361\n*S KotlinDebug\n*F\n+ 1 EraserPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/EraserPopup\n*L\n104#1:355,2\n251#1:357,2\n252#1:359,2\n153#1:361,2\n*E\n"})
/* loaded from: classes9.dex */
public final class EraserPopup extends BasePopupWindow {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public PenViewModel penViewModel;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final JSONObjectOption<PenArgs> penArgsOption;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final JSONListOption<Integer> eraserElementsOnlyOption;

    /* renamed from: v, reason: from kotlin metadata */
    public float popupHeight;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;", "", "", "eraserType", "", "eraserTypeChange", "", "a", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final boolean m48743a() {
            return NoteConfigManager.INSTANCE.getNoteEditConfigInfo().ensureSelectShapeType() == ShapeToolType.ERASER;
        }

        public final void eraserTypeChange(int eraserType) {
            EraserPropertyOption.INSTANCE.getEraserTypeOption().put(eraserType);
            DocCollectionBundle.INSTANCE.postEvent(new ChangeEraseTypeEvent(eraserType, m48743a()));
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EraserPopup(@NotNull final Context context, @NotNull EditorBundle editorBundle, @NotNull PenViewModel penViewModel, @NotNull DockType dockType) {
        super(context, dockType);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.editorBundle = editorBundle;
        this.penViewModel = penViewModel;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupEraserBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.EraserPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupEraserBinding invoke() {
                PopupEraserBinding inflate = PopupEraserBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        this.penArgsOption = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getPenArgsOption(1000);
        this.eraserElementsOnlyOption = EraserPropertyOption.INSTANCE.getEraserElementsOnlyOption();
        this.popupHeight = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_570);
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setFocusable(true);
        setBackgroundDrawable(null);
        m48734R();
        m48732C();
        m48731B();
    }

    /* renamed from: D */
    public static final void m48702D(EraserPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48742z();
        this$0.m48736U();
    }

    /* renamed from: E */
    public static final void m48703E(EraserPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48740Y(1);
    }

    /* renamed from: F */
    public static final void m48704F(EraserPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48737V();
    }

    /* renamed from: G */
    public static final void m48705G(EraserPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48738W();
    }

    /* renamed from: H */
    public static final void m48706H() {
        GlobalBundle.INSTANCE.postEvent(new EraserPopupDismissEvent());
    }

    /* renamed from: I */
    public static final void m48707I(EraserPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48740Y(0);
    }

    /* renamed from: J */
    public static final void m48708J(EraserPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48740Y(2);
    }

    /* renamed from: K */
    public static final void m48709K(EraserPopup this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EraserPropertyOption eraserPropertyOption = EraserPropertyOption.INSTANCE;
        eraserPropertyOption.getPressureSwitchOption().put(z);
        StickSeekBarContainer seekBarPressure = this$0.getBinding().seekBarPressure;
        Intrinsics.checkNotNullExpressionValue(seekBarPressure, "seekBarPressure");
        seekBarPressure.setVisibility(z ? 0 : 8);
        this$0.m48739X(eraserPropertyOption.getEraserTypeOption().get());
    }

    /* renamed from: L */
    public static final void m48710L(EraserPopup this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48735S(z);
    }

    /* renamed from: M */
    public static final void m48711M(EraserPopup this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48741y(15, z);
    }

    /* renamed from: N */
    public static final void m48712N(EraserPopup this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48741y(39, z);
    }

    /* renamed from: O */
    public static final void m48713O(EraserPopup this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EraserPropertyOption.INSTANCE.getEraserAllContainsSwitchOption().put(z);
        this$0.m48740Y(2);
    }

    /* renamed from: P */
    public static final void m48714P(CompoundButton compoundButton, boolean z) {
        EraserPropertyOption.INSTANCE.getEraserAutoCancelSwitchOption().put(z);
    }

    /* renamed from: T */
    public static final void m48715T(EraserPopup this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FeatureChargeArgs featureChargeArgs = new FeatureChargeArgs();
        featureChargeArgs.setFunctionFrom(OnyxStatisticConstant.TRIGGER_NOTEEDITOR_ERASER_PARAM_SCRIBBLETO_ERASE);
        RxBaseAction.execute$default(new OpenMemberChargeAction(featureChargeArgs).setActivityContext(this$0.getContext()), null, null, null, 7, null);
    }

    /* renamed from: A */
    public final void m48730A() {
        if (getDockType() == DockType.TOP) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 80;
            getBinding().flContentLayout.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: B */
    public final void m48731B() {
        getContentView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.EraserPopup$initAttachStateReportListener$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                StatisticsBundle.INSTANCE.reportEraserPopupMenuEvent(EraserPopup.this.makeReportEvent(true));
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                StatisticsBundle.INSTANCE.reportEraserPopupMenuEvent(EraserPopup.this.makeReportEvent(false));
            }
        });
    }

    /* renamed from: C */
    public final void m48732C() {
        getBinding().tvClearPage.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.crf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EraserPopup.m48702D(EraserPopup.this, view);
            }
        });
        getBinding().pixelEraser.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.krf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EraserPopup.m48703E(EraserPopup.this, view);
            }
        });
        getBinding().strokeEraser.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lrf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EraserPopup.m48707I(EraserPopup.this, view);
            }
        });
        getBinding().selectEraser.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mrf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EraserPopup.m48708J(EraserPopup.this, view);
            }
        });
        getBinding().switchPressureEraser.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.nrf
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                EraserPopup.m48709K(EraserPopup.this, compoundButton, z);
            }
        });
        getBinding().scribbleErase.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.orf
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                EraserPopup.m48710L(EraserPopup.this, compoundButton, z);
            }
        });
        getBinding().switchOnlyMarkPen.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.prf
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                EraserPopup.m48711M(EraserPopup.this, compoundButton, z);
            }
        });
        getBinding().switchOnlyTape.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.drf
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                EraserPopup.m48712N(EraserPopup.this, compoundButton, z);
            }
        });
        getBinding().switchAllContains.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.erf
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                EraserPopup.m48713O(EraserPopup.this, compoundButton, z);
            }
        });
        getBinding().switchEraserCancel.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.frf
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                EraserPopup.m48714P(compoundButton, z);
            }
        });
        TintImageView ivEraseCancelGuide = getBinding().ivEraseCancelGuide;
        Intrinsics.checkNotNullExpressionValue(ivEraseCancelGuide, "ivEraseCancelGuide");
        ViewKt.click$default(ivEraseCancelGuide, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hrf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EraserPopup.m48704F(EraserPopup.this, view);
            }
        }, 1, null);
        TintImageView ivScribbleEraseGuide = getBinding().ivScribbleEraseGuide;
        Intrinsics.checkNotNullExpressionValue(ivScribbleEraseGuide, "ivScribbleEraseGuide");
        ViewKt.click$default(ivScribbleEraseGuide, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.irf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EraserPopup.m48705G(EraserPopup.this, view);
            }
        }, 1, null);
        getBinding().seekBarThickness.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.EraserPopup$initListener$13
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                boolean m48743a;
                if (z) {
                    return;
                }
                final float valueToSize = PensizeConvertExtKt.valueToSize(f2);
                EraserPropertyOption.INSTANCE.getEraserWidth().put(valueToSize);
                DocCollectionBundle.INSTANCE.postEvent(new ChangeEraserWidthEvent(valueToSize));
                EraserPopup.this.getPenArgsOption().getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.EraserPopup$initListener$13.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                        invoke2(penArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable PenArgs penArgs) {
                        if (penArgs == null) {
                            return;
                        }
                        penArgs.setWidth(valueToSize);
                    }
                });
                NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().updateSizeList(1000, valueToSize);
                m48743a = EraserPopup.INSTANCE.m48743a();
                if (m48743a) {
                    EraserPopup.this.getPenViewModel().getSize().postValue(Float.valueOf(valueToSize));
                }
            }
        });
        getBinding().seekBarPressure.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.EraserPopup$initListener$14
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                if (z) {
                    return;
                }
                EraserPropertyOption.INSTANCE.getPressure().put(f2);
            }
        });
        setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.jrf
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                EraserPopup.m48706H();
            }
        });
    }

    /* renamed from: Q */
    public final void m48733Q() {
        getBinding().switchOnlyMarkPen.setChecked(this.eraserElementsOnlyOption.contains((JSONListOption<Integer>) 15));
        getBinding().switchOnlyTape.setChecked(this.eraserElementsOnlyOption.contains((JSONListOption<Integer>) 39));
    }

    /* renamed from: R */
    public final void m48734R() {
        EraserPropertyOption eraserPropertyOption = EraserPropertyOption.INSTANCE;
        m48739X(eraserPropertyOption.getEraserTypeOption().get());
        StickSeekBarContainer stickSeekBarContainer = getBinding().seekBarThickness;
        PenUtils penUtils = PenUtils.INSTANCE;
        Range<Float> between = Range.between(Float.valueOf(PensizeConvertExtKt.sizeToValue(penUtils.getMaxStrokeWidth(1000))), Float.valueOf(PensizeConvertExtKt.sizeToValue(penUtils.getMinStrokeWidth(1000))));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        stickSeekBarContainer.setRange(between);
        getBinding().seekBarThickness.setProgressValue(PensizeConvertExtKt.sizeToValue(this.penArgsOption.get().getWidth()));
        getBinding().switchPressureEraser.setChecked(eraserPropertyOption.getPressureSwitchOption().get());
        getBinding().seekBarPressure.setProgressValue(eraserPropertyOption.getPressure().get());
        StickSeekBarContainer seekBarPressure = getBinding().seekBarPressure;
        Intrinsics.checkNotNullExpressionValue(seekBarPressure, "seekBarPressure");
        seekBarPressure.setVisibility(getBinding().switchPressureEraser.isChecked() ? 0 : 8);
        getBinding().scribbleErase.setChecked(eraserPropertyOption.getScribbleEraseSwitchOption().get());
        m48733Q();
        m48730A();
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().tvClearPage, EditorBundleKt.getUiFeature(this.editorBundle).supportClearPage());
        getBinding().switchAllContains.setChecked(eraserPropertyOption.getEraserAllContainsSwitchOption().get());
        getBinding().switchEraserCancel.setChecked(eraserPropertyOption.getEraserAutoCancelSwitchOption().get());
    }

    /* renamed from: S */
    public final void m48735S(boolean isChecked) {
        if (!isChecked || AccountDataBundle.INSTANCE.isVIPPermanent()) {
            EraserPropertyOption.INSTANCE.getScribbleEraseSwitchOption().put(isChecked);
        } else {
            getBinding().scribbleErase.setChecked(false);
            RxjavaKt.doOnNextIfTrue(new CheckLoginStateAction(getContext()).build(), new Consumer() { // from class: com.sunia.HTREnginev2.grf
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    EraserPopup.m48715T(EraserPopup.this, ((Boolean) obj).booleanValue());
                }
            }).subscribe();
        }
    }

    /* renamed from: U */
    public final void m48736U() {
        StatisticsBundle.INSTANCE.reportEvent(this.editorBundle, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_ERASER_CLEAR_PAGE_CLICK, "view", null);
    }

    /* renamed from: V */
    public final void m48737V() {
        Context context = getContext();
        DockType dockType = DockType.TOP;
        String string = ResManager.INSTANCE.getString(C10651R.string.erase_cancel_tips);
        TintImageView ivEraseCancelGuide = getBinding().ivEraseCancelGuide;
        Intrinsics.checkNotNullExpressionValue(ivEraseCancelGuide, "ivEraseCancelGuide");
        TipsPopup tipsPopup = new TipsPopup(new TipsPopup.TipContext(context, dockType, string, ivEraseCancelGuide, null, 0, 48, null));
        TintImageView ivEraseCancelGuide2 = getBinding().ivEraseCancelGuide;
        Intrinsics.checkNotNullExpressionValue(ivEraseCancelGuide2, "ivEraseCancelGuide");
        tipsPopup.show(ivEraseCancelGuide2);
    }

    /* renamed from: W */
    public final void m48738W() {
        Context context = getContext();
        DockType dockType = DockType.TOP;
        String string = ResManager.INSTANCE.getString(C10651R.string.scribble_erase_tips);
        TintImageView ivScribbleEraseGuide = getBinding().ivScribbleEraseGuide;
        Intrinsics.checkNotNullExpressionValue(ivScribbleEraseGuide, "ivScribbleEraseGuide");
        TipsPopup tipsPopup = new TipsPopup(new TipsPopup.TipContext(context, dockType, string, ivScribbleEraseGuide, null, 0, 48, null));
        TintImageView ivScribbleEraseGuide2 = getBinding().ivScribbleEraseGuide;
        Intrinsics.checkNotNullExpressionValue(ivScribbleEraseGuide2, "ivScribbleEraseGuide");
        tipsPopup.show(ivScribbleEraseGuide2);
    }

    /* renamed from: X */
    public final void m48739X(int eraserType) {
        getBinding().pixelEraser.setSelected(eraserType == 1);
        getBinding().strokeEraser.setSelected(eraserType == 0);
        getBinding().selectEraser.setSelected(eraserType == 2);
        StickSeekBarContainer seekBarThickness = getBinding().seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        seekBarThickness.setVisibility(eraserType != 2 ? 0 : 8);
        FrameLayout eraserAllContains = getBinding().eraserAllContains;
        Intrinsics.checkNotNullExpressionValue(eraserAllContains, "eraserAllContains");
        eraserAllContains.setVisibility(eraserType == 2 ? 0 : 8);
        if (EraserPropertyOption.INSTANCE.getEraserAllContainsSwitchOption().get()) {
            getBinding().selectEraser.setImageDrawable(ThemeUtils.getThemeDrawable(C10651R.drawable.ic_eraser_all_contains));
        } else {
            getBinding().selectEraser.setImageDrawable(ThemeUtils.getThemeDrawable(C10651R.drawable.ic_eraser_select));
        }
    }

    /* renamed from: Y */
    public final void m48740Y(int eraserType) {
        INSTANCE.eraserTypeChange(eraserType);
        m48739X(eraserType);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        AccountDataBundle.INSTANCE.unregister(this);
    }

    @NotNull
    public final PopupEraserBinding getBinding() {
        return (PopupEraserBinding) this.binding.getValue();
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final JSONObjectOption<PenArgs> getPenArgsOption() {
        return this.penArgsOption;
    }

    @NotNull
    public final PenViewModel getPenViewModel() {
        return this.penViewModel;
    }

    @NotNull
    public final EraserPopupMenuEventBean makeReportEvent(boolean isShowing) {
        return new EraserPopupMenuEventBean(this.editorBundle, isShowing ? OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_ERASER_BTN_DOUBLE_CLICK_SHOW_MENU : OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_ERASER_BTN_DOUBLE_CLICK_CLOSE_MENU, "view", getBinding().pixelEraser.isSelected(), getBinding().strokeEraser.isSelected(), getBinding().selectEraser.isSelected(), PensizeConvertExtKt.sizeToValue(this.penArgsOption.get().getWidth()), getBinding().switchPressureEraser.isChecked(), getBinding().switchOnlyMarkPen.isChecked(), getBinding().switchOnlyTape.isChecked());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onLoginAccountChanged(@NotNull LoginAccountChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (AccountDataBundle.INSTANCE.isVIPPermanent()) {
            getBinding().scribbleErase.setChecked(true);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onVipRoleChanged(@NotNull VipRoleChanged event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (AccountDataBundle.INSTANCE.isVIPPermanent()) {
            getBinding().scribbleErase.setChecked(true);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void reportEvent(@NotNull ChangeEraseTypeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        StatisticsBundle.INSTANCE.reportEraserPopupMenuEvent(makeReportEvent(isShowing()));
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    public final void setPenViewModel(@NotNull PenViewModel penViewModel) {
        Intrinsics.checkNotNullParameter(penViewModel, "<set-?>");
        this.penViewModel = penViewModel;
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void show(@NotNull View anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        super.show(anchor);
        AccountDataBundle.INSTANCE.register(this);
    }

    /* renamed from: y */
    public final void m48741y(final int elementType, final boolean add) {
        this.eraserElementsOnlyOption.getAndPut(new Function1<ArrayList<Integer>, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.EraserPopup$addEraserElementOnlyType$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ArrayList<Integer> arrayList) {
                invoke2(arrayList);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable ArrayList<Integer> arrayList) {
                if (arrayList == null) {
                    return;
                }
                if (add) {
                    arrayList.clear();
                    arrayList.add(Integer.valueOf(elementType));
                } else {
                    arrayList.remove(Integer.valueOf(elementType));
                }
            }
        });
        m48733Q();
    }

    /* renamed from: z */
    public final void m48742z() {
        if (EditorBundleKt.hasLockedLayer(this.editorBundle)) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.has_locked_layer_tip, false, 2, (Object) null);
        } else {
            EditorBundleKt.postEvent(this.editorBundle, new ClearCurrentPageEvent());
        }
    }
}
