package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.gson.JsonObject;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.TapeFillStyle;
import com.onyx.android.sdk.note.common.shape.pen.TapeShape;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction;
import com.onyx.android.sdk.universal.editor.action.tape.ClearAllPagesTapeShapeAction;
import com.onyx.android.sdk.universal.editor.action.tape.ClearCurrentPageTapeShapeAction;
import com.onyx.android.sdk.universal.editor.data.TapePropertyOption;
import com.onyx.android.sdk.universal.editor.events.note.ChangePenArgsEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeSubShapeTypeEvent;
import com.onyx.android.sdk.universal.editor.events.note.ShowTapeShapeOverlayEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.PopupTapePenBinding;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.adapter.GridItemDecoration;
import com.onyx.galaxy.note.editor.view.adapter.TapeFillStyleAdapter;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.TapePenPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Action;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010/\u001a\u00020.\u0012\u0006\u00101\u001a\u000200\u0012\u0006\u00103\u001a\u000202\u0012\u0006\u00105\u001a\u000204\u0012\u0006\u00107\u001a\u000206¢\u0006\u0004\b8\u00109J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u000eH\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002J\b\u0010\u0018\u001a\u00020\u0004H\u0002R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u001b\u001a\u0004\b!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u001b\u001a\u0004\b&\u0010'R!\u0010-\u001a\b\u0012\u0004\u0012\u00020*0)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u001b\u001a\u0004\b+\u0010,¨\u0006<²\u0006\u0012\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00060:8\nX\u008a\u0084\u0002"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;", "popup", "", "onShowColorPickerPopup", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "W", "H", "Landroidx/recyclerview/widget/RecyclerView;", "rvTapeStyle", "U", "N", "", "color", "b0", "a0", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "tapeType", "E", "L", "Y", "X", "F", "Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;", "x", "Lkotlin/Lazy;", "K", "()Lcom/onyx/android/sdk/universal/editor/data/TapePropertyOption;", "tapePropertyOption", "Lcom/onyx/galaxy/note/databinding/PopupTapePenBinding;", "y", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupTapePenBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/TapeFillStyleAdapter;", "z", "J", "()Lcom/onyx/galaxy/note/editor/view/adapter/TapeFillStyleAdapter;", "tapeFillStyleAdapter", "", "Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;", "I", "()Ljava/util/List;", "tapeFileStyleData", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "viewShapeType", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "penArgsOption", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTapePenPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapePenPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TapePenPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,273:1\n256#2,2:274\n256#2,2:276\n*S KotlinDebug\n*F\n+ 1 TapePenPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/TapePenPopup\n*L\n141#1:274,2\n142#1:276,2\n*E\n"})
/* loaded from: classes9.dex */
public final class TapePenPopup extends BasePenPopup {

    /* renamed from: J, reason: from kotlin metadata */
    @NotNull
    public final Lazy tapeFileStyleData;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public final Lazy tapePropertyOption;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public final Lazy tapeFillStyleAdapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapePenPopup(@NotNull final Context context, @NotNull ShapeToolType viewShapeType, @NotNull EditorBundle editorBundle, @NotNull PenViewModel penViewModel, @NotNull DockType dockType) {
        super(context, viewShapeType, editorBundle, penViewModel, dockType);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(viewShapeType, "viewShapeType");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TapePropertyOption>() { // from class: com.onyx.galaxy.note.editor.view.popup.TapePenPopup$tapePropertyOption$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TapePropertyOption invoke() {
                return TapePenPopup.this.getPenProperty().getTapePropertyOption();
            }
        });
        this.tapePropertyOption = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<PopupTapePenBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.TapePenPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupTapePenBinding invoke() {
                PopupTapePenBinding inflate = PopupTapePenBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<TapeFillStyleAdapter>() { // from class: com.onyx.galaxy.note.editor.view.popup.TapePenPopup$tapeFillStyleAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TapeFillStyleAdapter invoke() {
                return new TapeFillStyleAdapter();
            }
        });
        this.tapeFillStyleAdapter = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends TapeFillStyle>>() { // from class: com.onyx.galaxy.note.editor.view.popup.TapePenPopup$tapeFileStyleData$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends TapeFillStyle> invoke() {
                return TapeFillStyle.INSTANCE.getTapStyleList(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getTapeNameList());
            }
        });
        this.tapeFileStyleData = lazy4;
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setFocusable(true);
        setBackgroundDrawable(null);
        m49641W(getPenArgsOption().get());
        m49639O();
    }

    /* renamed from: G */
    public static final void m49618G(CommonDialog loadingDialog) {
        Intrinsics.checkNotNullParameter(loadingDialog, "$loadingDialog");
        CommonDialog.dismissWithDelay$default(loadingDialog, 0L, 1, null);
    }

    /* renamed from: M */
    public static final JSONObjectOption<PenArgs> m49619M(Lazy<? extends JSONObjectOption<PenArgs>> lazy) {
        return lazy.getValue();
    }

    /* renamed from: P */
    public static final void m49620P(CompoundButton compoundButton, boolean z) {
        TapeShape.INSTANCE.setAllTapeClose(z);
        DocCollectionBundle.INSTANCE.postEvent(new ShowTapeShapeOverlayEvent(z));
    }

    /* renamed from: Q */
    public static final void m49621Q(TapePenPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49631E(0);
    }

    /* renamed from: R */
    public static final void m49622R(TapePenPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49631E(1);
    }

    /* renamed from: S */
    public static final void m49623S(TapePenPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49643Y();
    }

    /* renamed from: T */
    public static final void m49624T(TapePenPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49642X();
    }

    /* renamed from: V */
    public static final void m49625V(final PenArgs penArgs, TapePenPopup this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(penArgs, "$penArgs");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        TapeFillStyle tapeFillStyle = (TapeFillStyle) adapter.getItem(i);
        if (tapeFillStyle == null) {
            return;
        }
        penArgs.setTapeFillStyle(tapeFillStyle.name());
        penArgs.setSubShapeType(TapePropertyOption.INSTANCE.toSubShapeType(this$0.m49636K().getTapeType()));
        this$0.getPenArgsOption().getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.TapePenPopup$initTapeStyleView$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs2) {
                invoke2(penArgs2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable PenArgs penArgs2) {
                if (penArgs2 == null) {
                    return;
                }
                penArgs2.setTapeFillStyle(PenArgs.this.getTapeFillStyle());
            }
        });
        DocCollectionBundle.INSTANCE.postEvent(new ChangePenArgsEvent(penArgs.m72358clone(), false, 2, null));
        this$0.m49635J().updateSelectPosition(i);
        this$0.m49644a0();
    }

    /* renamed from: Z */
    public static final void m49626Z(final TapePenPopup this$0, final int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new CommonDialog.Builder(this$0.getContext()).setTitle(C8045R.string.tip).setWarning(true).setMessage(C10651R.string.clear_current_page_tape_tips).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.TapePenPopup$showClearCurrentPageTapeShapeAlertDialog$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String editText) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editText, "editText");
                RxBaseAction.execute$default(new ClearCurrentPageTapeShapeAction(TapePenPopup.this.getEditorBundle(), i), null, null, null, 7, null);
                TapePenPopup.this.dismiss();
            }
        }).create().show();
    }

    /* renamed from: E */
    public final void m49631E(int tapeType) {
        TapePropertyOption.Companion companion = TapePropertyOption.INSTANCE;
        companion.getTapeTypeOption().put(tapeType);
        DocCollectionBundle.INSTANCE.postEvent(new ChangeSubShapeTypeEvent(companion.toSubShapeType(tapeType)));
        m49644a0();
    }

    /* renamed from: F */
    public final void m49632F() {
        final CommonDialog createLoadingDialog = CommonDialog.INSTANCE.createLoadingDialog(getContext(), C8045R.string.removing);
        createLoadingDialog.show();
        new ClearAllPagesTapeShapeAction(getEditorBundle()).build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.i9n
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                TapePenPopup.m49618G(CommonDialog.this);
            }
        }).subscribe();
    }

    /* renamed from: H */
    public final void m49633H() {
        if (getDockType() == DockType.TOP) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 80;
            getBinding().flContentLayout.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: I */
    public final List<TapeFillStyle> m49634I() {
        return (List) this.tapeFileStyleData.getValue();
    }

    /* renamed from: J */
    public final TapeFillStyleAdapter m49635J() {
        return (TapeFillStyleAdapter) this.tapeFillStyleAdapter.getValue();
    }

    /* renamed from: K */
    public final TapePropertyOption m49636K() {
        return (TapePropertyOption) this.tapePropertyOption.getValue();
    }

    /* renamed from: L */
    public final void m49637L() {
        Lazy lazy;
        final PenPropertyBean penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<PenArgs>>() { // from class: com.onyx.galaxy.note.editor.view.popup.TapePenPopup$initAttachStateReportListener$penArgsOption$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final JSONObjectOption<PenArgs> invoke() {
                return PenPropertyBean.this.getPenArgsOption(ShapeToolType.TAPE_PEN.getShapeType());
            }
        });
        final JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_IS_LINEAR_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(m49636K().getTapeType() == 0))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_IS_RECT_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(m49636K().getTapeType() == 1))));
        jsonObject.addProperty(OnyxStatisticConstant.JSON_KEY_IS_SHOW_ALL_TAP, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(m49636K().isShowAllTape()))));
        OnyxStatisticConstant onyxStatisticConstant = OnyxStatisticConstant.INSTANCE;
        jsonObject.addProperty("color", onyxStatisticConstant.rgbaValueFormat(m49619M(lazy).get().getColor()));
        jsonObject.addProperty("thickness", onyxStatisticConstant.thicknessValueFormat(PensizeConvertExtKt.sizeToValue(m49619M(lazy).get().getWidth())));
        getContentView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.TapePenPopup$initAttachStateReportListener$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                StatisticsBundle.INSTANCE.reportShowPopupMenuEvent(TapePenPopup.this.getEditorBundle(), OnyxStatisticConstant.KEY_NOTE_TAPE_DATA, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_TAPE_BTN_DOUBLE_CLICK_SHOW_MENU, OnyxStatisticConstant.EVENT_TYPE_CLICK, jsonObject);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                StatisticsBundle.INSTANCE.reportShowPopupMenuEvent(TapePenPopup.this.getEditorBundle(), OnyxStatisticConstant.KEY_NOTE_TAPE_DATA, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_TAPE_BTN_DOUBLE_CLICK_CLOSE_MENU, OnyxStatisticConstant.EVENT_TYPE_CLICK, jsonObject);
            }
        });
    }

    /* renamed from: N */
    public final void m49638N() {
        boolean supportClearPage = EditorBundleKt.getUiFeature(getEditorBundle()).supportClearPage();
        AppCompatTextView tvClearPageTape = getBinding().tvClearPageTape;
        Intrinsics.checkNotNullExpressionValue(tvClearPageTape, "tvClearPageTape");
        tvClearPageTape.setVisibility(supportClearPage ? 0 : 8);
        AppCompatTextView tvClearAllTape = getBinding().tvClearAllTape;
        Intrinsics.checkNotNullExpressionValue(tvClearAllTape, "tvClearAllTape");
        tvClearAllTape.setVisibility(supportClearPage ? 0 : 8);
    }

    /* renamed from: O */
    public final void m49639O() {
        getBinding().switchTapeDisplayAll.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.j9n
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                TapePenPopup.m49620P(compoundButton, z);
            }
        });
        getBinding().tapeLineType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.k9n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TapePenPopup.m49621Q(TapePenPopup.this, view);
            }
        });
        getBinding().tapeRectangleType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.l9n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TapePenPopup.m49622R(TapePenPopup.this, view);
            }
        });
        AppCompatTextView tvClearPageTape = getBinding().tvClearPageTape;
        Intrinsics.checkNotNullExpressionValue(tvClearPageTape, "tvClearPageTape");
        ViewKt.click$default(tvClearPageTape, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m9n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TapePenPopup.m49623S(TapePenPopup.this, view);
            }
        }, 1, null);
        AppCompatTextView tvClearAllTape = getBinding().tvClearAllTape;
        Intrinsics.checkNotNullExpressionValue(tvClearAllTape, "tvClearAllTape");
        ViewKt.click$default(tvClearAllTape, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n9n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TapePenPopup.m49624T(TapePenPopup.this, view);
            }
        }, 1, null);
        m49637L();
    }

    /* renamed from: U */
    public final void m49640U(RecyclerView rvTapeStyle, final PenArgs penArgs) {
        ResManager resManager = ResManager.INSTANCE;
        int integer = resManager.getInteger(C10651R.integer.tape_style_popup_grid_count);
        rvTapeStyle.setLayoutManager(new GridLayoutManager(getContext(), integer, 1, false));
        rvTapeStyle.setNestedScrollingEnabled(false);
        rvTapeStyle.setOverScrollMode(2);
        rvTapeStyle.addItemDecoration(new GridItemDecoration(integer, resManager.getDimens(C7384R.dimen.dp_8), resManager.getDimens(C7384R.dimen.dp_9)));
        rvTapeStyle.setAdapter(m49635J());
        m49635J().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.h9n
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                TapePenPopup.m49625V(PenArgs.this, this, baseQuickAdapter, view, i);
            }
        });
        m49635J().updateFillColor(penArgs.getColor());
        m49635J().submitList(m49634I());
        m49635J().updateSelectPosition(m49634I().indexOf(TapeFillStyle.INSTANCE.fromName(penArgs.getTapeFillStyle())));
    }

    /* renamed from: W */
    public final void m49641W(PenArgs penArgs) {
        ShapeColorPropertyLayout colorLayout = getBinding().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        initColorLayout(colorLayout, new TapePenPopup$initView$1(this));
        StickSeekBarContainer seekBarThickness = getBinding().seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        initStrokeWidthView(seekBarThickness, penArgs);
        TintTextView addToPenBox = getBinding().addToPenBox;
        Intrinsics.checkNotNullExpressionValue(addToPenBox, "addToPenBox");
        initAddToPenBoxView(addToPenBox);
        TintRecycleView rvTapeStyle = getBinding().rvTapeStyle;
        Intrinsics.checkNotNullExpressionValue(rvTapeStyle, "rvTapeStyle");
        m49640U(rvTapeStyle, penArgs);
        m49638N();
        getBinding().switchTapeDisplayAll.setChecked(m49636K().isShowAllTape());
        m49644a0();
        m49645b0(penArgs.getColor());
        m49633H();
    }

    /* renamed from: X */
    public final void m49642X() {
        new CommonDialog.Builder(getContext()).setTitle(C8045R.string.tip).setWarning(true).setMessage(C10651R.string.clear_all_page_tape_tips).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.TapePenPopup$showClearAllPagesTapeShapeAlertDialog$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog dialog, @NotNull String editText) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(editText, "editText");
                TapePenPopup.this.m49632F();
                TapePenPopup.this.dismiss();
            }
        }).create().show();
    }

    /* renamed from: Y */
    public final void m49643Y() {
        List listOf;
        List listOf2;
        final int currentPageIndex = EditorBundleKt.currentPageIndex(getEditorBundle());
        BoxInfo currentVisibleBoxInfo = EditorBundleKt.currentVisibleBoxInfo(getEditorBundle());
        EditorBundle editorBundle = getEditorBundle();
        String id = currentVisibleBoxInfo.getId();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(currentVisibleBoxInfo.getOriginRectFWithMargin());
        listOf2 = CollectionsKt__CollectionsJVMKt.listOf(listOf);
        RxBaseAction.execute$default(new ShowRectHighlightAnimationAction(editorBundle, id, listOf2, 2 * 1000), null, null, null, 7, null);
        getBinding().getRoot().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.o9n
            @Override // java.lang.Runnable
            public final void run() {
                TapePenPopup.m49626Z(TapePenPopup.this, currentPageIndex);
            }
        }, 1000L);
    }

    /* renamed from: a0 */
    public final void m49644a0() {
        int tapeType = m49636K().getTapeType();
        String tapeFillStyle = getPenArgsOption().get().getTapeFillStyle();
        getBinding().tapeLineType.setSelected(tapeType == 0);
        getBinding().tapeRectangleType.setSelected(tapeType == 1);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(getBinding().seekBarThickness, tapeType == 0);
        getBinding().tapeViewLine.setTapeFillStyle(tapeFillStyle);
        getBinding().tapeViewRectangle.setTapeFillStyle(tapeFillStyle);
        getBinding().colorLayout.setShape(getViewShapeType().getShapeType());
    }

    /* renamed from: b0 */
    public final void m49645b0(int color) {
        getBinding().tapeViewLine.setTapeShapeColor(color);
        getBinding().tapeViewRectangle.setTapeShapeColor(color);
        m49635J().updateFillColor(color);
    }

    @NotNull
    public final PopupTapePenBinding getBinding() {
        return (PopupTapePenBinding) this.binding.getValue();
    }

    @Override // com.onyx.galaxy.note.editor.view.popup.BasePenPopup
    public void onShowColorPickerPopup(@NotNull ColorPickPopup popup) {
        Intrinsics.checkNotNullParameter(popup, "popup");
        super.onShowColorPickerPopup(popup);
        popup.setOpaqueColorOnly();
    }
}
