package com.onyx.galaxy.note.editor.view.popup;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.ViewModelProvider;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.DataBindingKt;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.StringMap;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.ActivationStateChangedEvent;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.MessageTemplateKt;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.hwr.service.manager.HWRActivationManager;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.extension.ShapeKt;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.note.common.text.layout.TextShapeSegmenter;
import com.onyx.android.sdk.p039ui.LayoutParamRes;
import com.onyx.android.sdk.p039ui.PopupDragHandler;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.OutsideTouchedEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.fonts.LoadFontTypefaceAction;
import com.onyx.android.sdk.universal.editor.data.InkBeautifyArgs;
import com.onyx.android.sdk.universal.editor.data.InkBeautifyConvertType;
import com.onyx.android.sdk.universal.editor.events.app.ActivityPausedEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideSelectionButtonEvent;
import com.onyx.android.sdk.universal.editor.events.note.HideSelectionMenuEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.event.OrientationChangedEvent;
import com.onyx.galaxy.note.common.data.NavigationType;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupInkBeautifyBinding;
import com.onyx.galaxy.note.editor.event.InkBeautifyDoneEvent;
import com.onyx.galaxy.note.editor.event.InkBeautifyShapeInitializedEvent;
import com.onyx.galaxy.note.editor.event.InkFontConvertedEvent;
import com.onyx.galaxy.note.editor.event.InkFontFetchedEvent;
import com.onyx.galaxy.note.editor.event.InkFontLoadedEvent;
import com.onyx.galaxy.note.editor.event.InkFontSelectedEvent;
import com.onyx.galaxy.note.editor.event.InkTimerUpdatedEvent;
import com.onyx.galaxy.note.editor.view.popup.InkBeautifyPopup;
import com.onyx.galaxy.note.editor.viewmodel.InkBeautifyViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.Navigator;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010+\u001a\u00020(¢\u0006\u0004\b8\u00109J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J \u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002J\b\u0010\u000f\u001a\u00020\u0005H\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0005H\u0002J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\b\u0010\u001a\u001a\u00020\u0005H\u0002J\b\u0010\u001b\u001a\u00020\u0005H\u0002J\b\u0010\u001c\u001a\u00020\u0005H\u0014J\b\u0010\u001d\u001a\u00020\u0005H\u0014J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u001eH\u0007J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020 H\u0007J\u0010\u0010#\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\"H\u0007J\u0010\u0010%\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020$H\u0007J\u0010\u0010'\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020&H\u0007R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0014\u00107\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106¨\u0006:"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "", "w", "K", "H", "P", "", gon.f71257J, "charSpacing", "lineSpacing", "M", "x", "", NotificationCompat.CATEGORY_EVENT, "v", "y", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "model", "N", "", "path", "L", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "u", "onShow", "onDismiss", "Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;", "onActivationStateChangedEvent", "Lcom/onyx/android/sdk/universal/common/events/OutsideTouchedEvent;", "onActivityTouchedEvent", "Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;", "onOrientationChanged", "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityPausedEvent;", "onActivityPausedEvent", "Lcom/onyx/galaxy/note/editor/event/InkBeautifyShapeInitializedEvent;", "onInkBeautifyShapeInitializedEvent", "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;", "q", "Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;", "args", "Lcom/onyx/galaxy/note/databinding/PopupInkBeautifyBinding;", "r", "Lcom/onyx/galaxy/note/databinding/PopupInkBeautifyBinding;", "binding", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "s", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "inkBeautifyTypesetEnableOption", "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;", "t", "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;", "viewModel", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nInkBeautifyPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup\n+ 2 DataBinding.kt\ncom/onyx/android/sdk/base/extension/DataBindingKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,308:1\n64#2:309\n1603#3,9:310\n1855#3:319\n1856#3:321\n1612#3:322\n1#4:320\n*S KotlinDebug\n*F\n+ 1 InkBeautifyPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup\n*L\n72#1:309\n297#1:310,9\n297#1:319\n297#1:321\n297#1:322\n297#1:320\n*E\n"})
/* loaded from: classes9.dex */
public final class InkBeautifyPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final InkBeautifyArgs args;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final PopupInkBeautifyBinding binding;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public BooleanOption inkBeautifyTypesetEnableOption;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final InkBeautifyViewModel viewModel;

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.InkBeautifyPopup$a */
    /* loaded from: classes9.dex */
    public static final class C12387a<T> implements Consumer {
        public C12387a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadFontTypefaceAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InkBeautifyPopup.this.binding.fontPreviewText.setTypeface(it2.getTypeface());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InkBeautifyPopup(@NotNull InkBeautifyArgs args) {
        super(args.getActivityContext(), null, 2, null);
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
        PopupInkBeautifyBinding inflate = PopupInkBeautifyBinding.inflate(args.getActivityContext().getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.inkBeautifyTypesetEnableOption = NoteConfigManager.INSTANCE.getEnableInkBeautifyTypesetOption();
        this.viewModel = (InkBeautifyViewModel) new ViewModelProvider(args.getActivityContext()).get(InkBeautifyViewModel.class);
        setOutsideTouchable(false);
        setFocusable(false);
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
    }

    /* renamed from: A */
    public static final void m48793A(InkBeautifyPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.viewModel.cancelInkBeautify();
    }

    /* renamed from: B */
    public static final void m48794B(InkBeautifyPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.viewModel.saveInkBeautify();
    }

    /* renamed from: C */
    public static final void m48795C(InkBeautifyPopup this$0, View view) {
        WindowLocation windowLocation;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InkBeautifyHelpPopup inkBeautifyHelpPopup = new InkBeautifyHelpPopup(this$0.args.getActivityContext());
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        TintImageView hintButton = this$0.binding.hintButton;
        Intrinsics.checkNotNullExpressionValue(hintButton, "hintButton");
        windowLocation = popupLocator.getWindowLocation((PopupLocator) inkBeautifyHelpPopup, hintButton, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_CENTER, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.BOTTOM_CENTER, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
        PopupLocator.show$default(popupLocator, inkBeautifyHelpPopup, windowLocation, null, 2, null);
    }

    /* renamed from: D */
    public static final void m48796D(InkBeautifyPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48820u();
    }

    /* renamed from: E */
    public static final void m48797E(InkBeautifyPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48820u();
    }

    /* renamed from: F */
    public static final void m48798F(InkBeautifyPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48820u();
    }

    /* renamed from: G */
    public static final void m48799G(InkBeautifyPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48820u();
    }

    /* renamed from: I */
    public static final void m48800I(InkBeautifyPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.viewModel.getTypesetViewModel().updateParamExpand(!this$0.viewModel.getTypesetViewModel().getParamExpand());
        this$0.m48819P();
    }

    /* renamed from: J */
    public static final void m48801J(InkBeautifyPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.viewModel.restoreDefaultTypeset();
        this$0.m48819P();
    }

    /* renamed from: z */
    public static final void m48812z(InkBeautifyPopup this$0, View view) {
        WindowLocation windowLocation;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InkBeautifyArgs args = this$0.viewModel.getArgs();
        if (args == null) {
            return;
        }
        LayoutParamRes layoutParamRes = new LayoutParamRes();
        layoutParamRes.setPopupWidthRes(C7384R.dimen.dp_258);
        InkFontListPopup inkFontListPopup = new InkFontListPopup(args.getActivityContext(), layoutParamRes);
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        TintLinearLayout fontSelectorLayout = this$0.binding.fontSelectorLayout;
        Intrinsics.checkNotNullExpressionValue(fontSelectorLayout, "fontSelectorLayout");
        windowLocation = popupLocator.getWindowLocation((PopupLocator) inkFontListPopup, fontSelectorLayout, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : null, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : null, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
        PopupLocator.show$default(popupLocator, inkFontListPopup, windowLocation, null, 2, null);
    }

    /* renamed from: H */
    public final void m48813H() {
        TintLinearLayout moreParamLayout = this.binding.moreParamLayout;
        Intrinsics.checkNotNullExpressionValue(moreParamLayout, "moreParamLayout");
        ViewKt.click$default(moreParamLayout, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InkBeautifyPopup.m48800I(InkBeautifyPopup.this, view);
            }
        }, 1, null);
        this.binding.typesetBinding.fontSizeSeekbar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkBeautifyPopup$initTypesetLayout$2
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                InkBeautifyViewModel inkBeautifyViewModel;
                InkBeautifyViewModel inkBeautifyViewModel2;
                Boolean valueOf = Boolean.valueOf(z);
                if (!valueOf.booleanValue()) {
                    valueOf = null;
                }
                if (valueOf != null) {
                    valueOf.booleanValue();
                    inkBeautifyViewModel = InkBeautifyPopup.this.viewModel;
                    inkBeautifyViewModel.getTypesetViewModel().updateFontSize((int) f2);
                    inkBeautifyViewModel2 = InkBeautifyPopup.this.viewModel;
                    inkBeautifyViewModel2.updateTypesetParams();
                    InkBeautifyPopup.this.m48819P();
                }
            }
        });
        this.binding.typesetBinding.charSpacingSeekbar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkBeautifyPopup$initTypesetLayout$3
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                InkBeautifyViewModel inkBeautifyViewModel;
                InkBeautifyViewModel inkBeautifyViewModel2;
                Boolean valueOf = Boolean.valueOf(z);
                if (!valueOf.booleanValue()) {
                    valueOf = null;
                }
                if (valueOf != null) {
                    valueOf.booleanValue();
                    inkBeautifyViewModel = InkBeautifyPopup.this.viewModel;
                    inkBeautifyViewModel.getTypesetViewModel().updateCharSpacing(f2 / 100);
                    inkBeautifyViewModel2 = InkBeautifyPopup.this.viewModel;
                    inkBeautifyViewModel2.updateTypesetParams();
                    InkBeautifyPopup.this.m48819P();
                }
            }
        });
        this.binding.typesetBinding.lineSpacingSeekbar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkBeautifyPopup$initTypesetLayout$4
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                InkBeautifyViewModel inkBeautifyViewModel;
                InkBeautifyViewModel inkBeautifyViewModel2;
                Boolean valueOf = Boolean.valueOf(z);
                if (!valueOf.booleanValue()) {
                    valueOf = null;
                }
                if (valueOf != null) {
                    valueOf.booleanValue();
                    inkBeautifyViewModel = InkBeautifyPopup.this.viewModel;
                    inkBeautifyViewModel.getTypesetViewModel().updateLineSpacing(f2);
                    inkBeautifyViewModel2 = InkBeautifyPopup.this.viewModel;
                    inkBeautifyViewModel2.updateTypesetParams();
                    InkBeautifyPopup.this.m48819P();
                }
            }
        });
        TintTextView restoreButton = this.binding.typesetBinding.restoreButton;
        Intrinsics.checkNotNullExpressionValue(restoreButton, "restoreButton");
        ViewKt.click$default(restoreButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InkBeautifyPopup.m48801J(InkBeautifyPopup.this, view);
            }
        }, 1, null);
        m48819P();
    }

    /* renamed from: K */
    public final void m48814K() {
        this.viewModel.setArgs(this.args);
        this.viewModel.setConvertType(InkBeautifyConvertType.SELECTION_CONVERT);
        DataBindingKt.observeOnce(this.viewModel.getEvent(), this, new InkBeautifyPopup$initViewModel$1(this));
        this.viewModel.loadFromLocal();
        this.viewModel.fetchFromCloud();
        this.viewModel.startFontParamsFilter();
    }

    /* renamed from: L */
    public final void m48815L(String path) {
        new LoadFontTypefaceAction(path).build().doOnNext(new C12387a()).subscribe();
    }

    /* renamed from: M */
    public final void m48816M(float fontSize, float charSpacing, float lineSpacing) {
        float coerceIn;
        float coerceIn2;
        float coerceIn3;
        this.viewModel.setFontParamInitialized(true);
        ResManager resManager = ResManager.INSTANCE;
        float f = resManager.getFloat(C10651R.fraction.ink_font_size_min);
        float f2 = resManager.getFloat(C10651R.fraction.ink_font_size_max);
        float f3 = 100;
        float f4 = resManager.getFloat(C10651R.fraction.ink_char_spacing_min) / f3;
        float f5 = resManager.getFloat(C10651R.fraction.ink_char_spacing_max) / f3;
        float f6 = resManager.getFloat(C10651R.fraction.ink_line_spacing_min);
        float f7 = resManager.getFloat(C10651R.fraction.ink_line_spacing_max);
        coerceIn = RangesKt___RangesKt.coerceIn(fontSize, f, f2);
        coerceIn2 = RangesKt___RangesKt.coerceIn(charSpacing, f4, f5);
        coerceIn3 = RangesKt___RangesKt.coerceIn(lineSpacing, f6, f7);
        this.viewModel.getTypesetViewModel().setDefaultTypeset(coerceIn, coerceIn2, coerceIn3);
        m48819P();
    }

    /* renamed from: N */
    public final void m48817N(FontModel model) {
        GlideExt glideExt = GlideExt.INSTANCE;
        TintImageView fontTitleThumbnail = this.binding.fontTitleThumbnail;
        Intrinsics.checkNotNullExpressionValue(fontTitleThumbnail, "fontTitleThumbnail");
        FontModelExt fontModelExt = FontModelExt.INSTANCE;
        GlideExt.loadOrFallback$default(glideExt, fontTitleThumbnail, fontModelExt.getCachedInkTitleThumbnailFile(model), model.getInkTitleThumbnail(), null, 4, null);
        boolean isDownloaded = fontModelExt.isDownloaded(model);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(this.binding.fontPreviewText, isDownloaded);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(this.binding.fontContentThumbnail, !isDownloaded);
        if (isDownloaded) {
            m48815L(FontModelExt.getSavePath$default(fontModelExt, model, null, 1, null));
            return;
        }
        TintImageView fontContentThumbnail = this.binding.fontContentThumbnail;
        Intrinsics.checkNotNullExpressionValue(fontContentThumbnail, "fontContentThumbnail");
        GlideExt.loadOrFallback$default(glideExt, fontContentThumbnail, fontModelExt.getCachedInkContentThumbnailFile(model), model.getInkContentThumbnail(), null, 4, null);
    }

    /* renamed from: O */
    public final void m48818O() {
        boolean isTrialPeriod = HWRActivationManager.INSTANCE.isTrialPeriod(HWREngineManager.INSTANCE.getEngineByFunction(FunctionKey.INK_BEAUTIFY));
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(this.binding.remainTimeLayout, isTrialPeriod);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(this.binding.activateVipButton, isTrialPeriod);
        if (!isTrialPeriod) {
            this.viewModel.stopTimer();
        } else {
            this.viewModel.startTimer();
            this.viewModel.loadTrialTime();
        }
    }

    /* renamed from: P */
    public final void m48819P() {
        boolean z = this.inkBeautifyTypesetEnableOption.get();
        boolean paramExpand = this.viewModel.getTypesetViewModel().getParamExpand();
        this.binding.moreParamIcon.setImageResource(paramExpand ? C10651R.drawable.ic_beautify_more_collapse : C10651R.drawable.ic_beautify_more_expand);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(this.binding.moreParamLayout, z);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(this.binding.typesetBinding.typesetLayout, paramExpand && z);
        this.binding.typesetBinding.fontSizeSeekbar.setProgressValue(this.viewModel.getTypesetViewModel().getCom.sunia.HTREnginev2.gon.J java.lang.String());
        this.binding.typesetBinding.charSpacingSeekbar.setProgressValue(this.viewModel.getTypesetViewModel().getCharSpacing() * 100);
        this.binding.typesetBinding.lineSpacingSeekbar.setProgressValue(this.viewModel.getTypesetViewModel().getLineSpacing());
        this.binding.typesetBinding.fontSizeSeekbar.setProgressValuePrefix(this.viewModel.getTypesetViewModel().getFontSizeSuffix());
        this.binding.typesetBinding.charSpacingSeekbar.setProgressValuePrefix(this.viewModel.getTypesetViewModel().getFontCharSpacing());
        this.binding.typesetBinding.lineSpacingSeekbar.setProgressValuePrefix(this.viewModel.getTypesetViewModel().getFontLineSpacing());
        this.binding.typesetBinding.restoreButton.setEnabled(!this.viewModel.getTypesetViewModel().isDefaultTypeset());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivationStateChangedEvent(@NotNull ActivationStateChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m48818O();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivityPausedEvent(@NotNull ActivityPausedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        dismiss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onActivityTouchedEvent(@NotNull OutsideTouchedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        dismiss();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onDismiss() {
        this.viewModel.clear();
        EditorBundleKt.unregister(this.args.getEditorBundle(), this);
        GlobalBundle.INSTANCE.unregister(this);
        AccountDataBundle.INSTANCE.unregister(this);
        super.onDismiss();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInkBeautifyShapeInitializedEvent(@NotNull InkBeautifyShapeInitializedEvent event) {
        Float f;
        Intrinsics.checkNotNullParameter(event, "event");
        List<Shape> shapes = event.getShapes();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = shapes.iterator();
        while (true) {
            f = null;
            if (!it2.hasNext()) {
                break;
            }
            Shape shape = (Shape) it2.next();
            HWRTextShape hWRTextShape = shape instanceof HWRTextShape ? (HWRTextShape) shape : null;
            if (hWRTextShape != null) {
                arrayList.add(hWRTextShape);
            }
        }
        List<List<List<HWRTextShape>>> segmentLines = new TextShapeSegmenter().segmentLines(arrayList);
        Iterator it3 = arrayList.iterator();
        if (it3.hasNext()) {
            float px2pt = DimenUtils.INSTANCE.px2pt(ResManager.INSTANCE.getAppContext(), ShapeKt.getRealTextSize((HWRTextShape) it3.next()));
            while (it3.hasNext()) {
                px2pt = Math.max(px2pt, DimenUtils.INSTANCE.px2pt(ResManager.INSTANCE.getAppContext(), ShapeKt.getRealTextSize((HWRTextShape) it3.next())));
            }
            f = Float.valueOf(px2pt);
        }
        float floatValue = f != null ? f.floatValue() : ResManager.INSTANCE.getFloat(C10651R.fraction.ink_font_size_default);
        ShapeTypesetArgs calculateEstimatedCharAndLineSpacing = TextShapeSegmenter.INSTANCE.calculateEstimatedCharAndLineSpacing(segmentLines);
        Float charSpacing = calculateEstimatedCharAndLineSpacing.getCharSpacing();
        float floatValue2 = charSpacing != null ? charSpacing.floatValue() : ResManager.INSTANCE.getFloat(C10651R.fraction.ink_char_spacing_default);
        Float lineSpacing = calculateEstimatedCharAndLineSpacing.getLineSpacing();
        m48816M(floatValue, floatValue2, lineSpacing != null ? lineSpacing.floatValue() : ResManager.INSTANCE.getFloat(C10651R.fraction.ink_line_spacing_default));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onOrientationChanged(@NotNull OrientationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        dismiss();
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        m48824y();
        m48814K();
        m48813H();
        m48823x();
        m48818O();
        m48822w(this.args.getOriginShapes());
        EditorBundleKt.register(this.args.getEditorBundle(), this);
        GlobalBundle.INSTANCE.register(this);
        AccountDataBundle.INSTANCE.register(this);
    }

    /* renamed from: u */
    public final void m48820u() {
        StringMap stringMap = new StringMap();
        stringMap.put(MessageTemplateKt.KEY_STATISTIC_TYPE, OnyxStatisticConstant.TRIGGER_INK_BEAUTIFY_FROM_CONVERT_POPUP);
        Navigator.navigate$default(Navigator.INSTANCE, NavigationType.MEMBER_CHARGE, stringMap, null, 4, null);
    }

    /* renamed from: v */
    public final void m48821v(Object event) {
        if (event instanceof InkFontLoadedEvent) {
            FontModel selectPrimaryFont = this.viewModel.selectPrimaryFont(((InkFontLoadedEvent) event).getModels());
            if (selectPrimaryFont == null) {
                return;
            }
            if (this.viewModel.getSelectedFont().getUniqueId().length() > 0) {
                return;
            }
            this.viewModel.selectFont(selectPrimaryFont);
            return;
        }
        if (event instanceof InkFontFetchedEvent) {
            this.viewModel.loadFromLocal();
            return;
        }
        if (event instanceof InkFontSelectedEvent) {
            InkFontSelectedEvent inkFontSelectedEvent = (InkFontSelectedEvent) event;
            m48817N(inkFontSelectedEvent.getModel());
            this.viewModel.applyInkFont(inkFontSelectedEvent.getModel());
        } else if (event instanceof InkTimerUpdatedEvent) {
            this.binding.remainTimeText2.setText(((InkTimerUpdatedEvent) event).getLeftTimeString());
        } else {
            if ((event instanceof InkFontConvertedEvent) || !(event instanceof InkBeautifyDoneEvent)) {
                return;
            }
            dismiss();
        }
    }

    /* renamed from: w */
    public final void m48822w(List<? extends Shape> shapes) {
        EditorBundleKt.postEvent(this.args.getEditorBundle(), new HideSelectionMenuEvent());
        EditorBundleKt.postEvent(this.args.getEditorBundle(), new HideSelectionButtonEvent(shapes));
    }

    /* renamed from: x */
    public final void m48823x() {
        ConstraintLayout titleLayout = this.binding.titleLayout;
        Intrinsics.checkNotNullExpressionValue(titleLayout, "titleLayout");
        new PopupDragHandler(this, titleLayout, null, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkBeautifyPopup$initDragHandler$1
            {
                super(0);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                InkBeautifyViewModel inkBeautifyViewModel;
                inkBeautifyViewModel = InkBeautifyPopup.this.viewModel;
                inkBeautifyViewModel.setDragged(true);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }, 4, null).initialize();
    }

    /* renamed from: y */
    public final void m48824y() {
        TintLinearLayout fontSelectorLayout = this.binding.fontSelectorLayout;
        Intrinsics.checkNotNullExpressionValue(fontSelectorLayout, "fontSelectorLayout");
        ViewKt.click$default(fontSelectorLayout, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InkBeautifyPopup.m48812z(InkBeautifyPopup.this, view);
            }
        }, 1, null);
        TintTextView cancelButton = this.binding.cancelButton;
        Intrinsics.checkNotNullExpressionValue(cancelButton, "cancelButton");
        ViewKt.click$default(cancelButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.iki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InkBeautifyPopup.m48793A(InkBeautifyPopup.this, view);
            }
        }, 1, null);
        TintTextView okButton = this.binding.okButton;
        Intrinsics.checkNotNullExpressionValue(okButton, "okButton");
        ViewKt.click$default(okButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InkBeautifyPopup.m48794B(InkBeautifyPopup.this, view);
            }
        }, 1, null);
        TintImageView hintButton = this.binding.hintButton;
        Intrinsics.checkNotNullExpressionValue(hintButton, "hintButton");
        ViewKt.click$default(hintButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InkBeautifyPopup.m48795C(InkBeautifyPopup.this, view);
            }
        }, 1, null);
        ImageView remainTimeIcon = this.binding.remainTimeIcon;
        Intrinsics.checkNotNullExpressionValue(remainTimeIcon, "remainTimeIcon");
        ViewKt.click$default(remainTimeIcon, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InkBeautifyPopup.m48796D(InkBeautifyPopup.this, view);
            }
        }, 1, null);
        TextView remainTimeText1 = this.binding.remainTimeText1;
        Intrinsics.checkNotNullExpressionValue(remainTimeText1, "remainTimeText1");
        ViewKt.click$default(remainTimeText1, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InkBeautifyPopup.m48797E(InkBeautifyPopup.this, view);
            }
        }, 1, null);
        TextView remainTimeText2 = this.binding.remainTimeText2;
        Intrinsics.checkNotNullExpressionValue(remainTimeText2, "remainTimeText2");
        ViewKt.click$default(remainTimeText2, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.nki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InkBeautifyPopup.m48798F(InkBeautifyPopup.this, view);
            }
        }, 1, null);
        TintTextView activateVipButton = this.binding.activateVipButton;
        Intrinsics.checkNotNullExpressionValue(activateVipButton, "activateVipButton");
        ViewKt.click$default(activateVipButton, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.oki
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InkBeautifyPopup.m48799G(InkBeautifyPopup.this, view);
            }
        }, 1, null);
    }
}
