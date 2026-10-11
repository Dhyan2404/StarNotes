package com.onyx.galaxy.note.editor.view.popup;

import android.app.Activity;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.hjq.window.EasyWindow;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringMap;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.layer.LoadNotePageLayersAction;
import com.onyx.android.sdk.universal.editor.action.layer.ToggleNotePageLayerLockAction;
import com.onyx.android.sdk.universal.editor.action.layer.ToggleNotePageLayerVisibilityAction;
import com.onyx.android.sdk.universal.editor.events.app.UndoRemovePageEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.EasyWindowKt;
import com.onyx.galaxy.note.databinding.LayoutToolOperationTipBinding;
import com.onyx.galaxy.note.editor.event.ShowEraserSettingEvent;
import com.onyx.galaxy.note.editor.event.ShowLayerPopupEvent;
import com.onyx.galaxy.note.editor.view.popup.ToolOperationTipPopup;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.utils.Navigator;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010,\u001a\u00020)\u0012\f\u00101\u001a\b\u0012\u0004\u0012\u00020.0-¢\u0006\u0004\bF\u0010GJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\u0005H\u0002J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0005H\u0002J\b\u0010\u0012\u001a\u00020\u0005H\u0002J\b\u0010\u0013\u001a\u00020\u0005H\u0002J\u001a\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00022\b\b\u0002\u0010\u0016\u001a\u00020\u0015H\u0002J\u0006\u0010\u0018\u001a\u00020\u0005J\u0006\u0010\u0019\u001a\u00020\u0005J\u0006\u0010\u001a\u001a\u00020\u0005J\u0006\u0010\u001b\u001a\u00020\u0005J\u0006\u0010\u001c\u001a\u00020\u0005J\u0006\u0010\u001d\u001a\u00020\u0005J\u0006\u0010\u001e\u001a\u00020\u0005J\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u0010 \u001a\u00020\u0005J\u0006\u0010!\u001a\u00020\u0005J\u0014\u0010%\u001a\u00020\u00052\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"J\u0006\u0010&\u001a\u00020\u0005J\u0006\u0010'\u001a\u00020\u0005J\u0006\u0010(\u001a\u00020\u0005R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u001a\u00101\u001a\b\u0012\u0004\u0012\u00020.0-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u001a\u00105\u001a\b\u0012\u0004\u0012\u00020\u0015028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u001b\u0010;\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\u001b\u0010@\u001a\u00020<8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u00108\u001a\u0004\b>\u0010?R\u001f\u0010E\u001a\u0006\u0012\u0002\b\u00030A8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u00108\u001a\u0004\bC\u0010D¨\u0006H"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ToolOperationTipPopup;", "", "", "xOffset", "yOffset", "", C4921e.f26528e, "t", "r", "p", "Landroid/widget/TextView;", "actionButton", "x", "z", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", C4921e.f26537n, "v", GoogleApiAvailabilityLight.f29016b, "F", "duration", "", "directly", "B", "destroy", "dismiss", "showCurrentLayerLocked", "showCurrentLayerHidden", "showNoShapeErasedOnLayer", "showNoShapeSelectedOnLayer", "showTextCanNotErase", "showImageCanNotErase", "showOnlyEraseTape", "showOnlyEraseHighlight", "", "", "pageIdList", "showPageRemovedMsg", "showStylusFunctionInvalid", "showPageRestoredMsg", "updatePositionIf", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lkotlin/Function0;", "Landroid/graphics/Rect;", "b", "Lkotlin/jvm/functions/Function0;", "getEditorContainerRectFunc", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "c", "Lcom/onyx/android/sdk/base/rx/RxFilter;", "popupFilter", "Lcom/onyx/galaxy/note/databinding/LayoutToolOperationTipBinding;", "d", "Lkotlin/Lazy;", "j", "()Lcom/onyx/galaxy/note/databinding/LayoutToolOperationTipBinding;", "binding", "", "e", "l", "()J", "limitPopInterval", "Lcom/hjq/window/EasyWindow;", C6997f.f39671c, "m", "()Lcom/hjq/window/EasyWindow;", "window", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function0;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ToolOperationTipPopup {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Function0<Rect> getEditorContainerRectFunc;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final RxFilter<Boolean> popupFilter;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy limitPopInterval;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy window;

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.ToolOperationTipPopup$a */
    /* loaded from: classes9.dex */
    public static final class C12491a<T> implements Predicate {

        /* renamed from: e */
        public static final C12491a<T> f60660e = new C12491a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull PageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getLayerCount() > 0;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.ToolOperationTipPopup$b */
    /* loaded from: classes9.dex */
    public static final class C12492b<T, R> implements Function {

        /* renamed from: e */
        public static final C12492b<T, R> f60661e = new C12492b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LayerInfo apply(@NotNull PageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LayerInfo layer = it2.getLayer(it2.getCurrentLayerId());
            Intrinsics.checkNotNull(layer);
            return layer;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.ToolOperationTipPopup$c */
    /* loaded from: classes9.dex */
    public static final class C12493c<T> implements Consumer {
        public C12493c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LayerInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(ToolOperationTipPopup.this.editorBundle, new ShowLayerPopupEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.ToolOperationTipPopup$d */
    /* loaded from: classes9.dex */
    public static final class C12494d<T, R> implements Function {
        public C12494d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ToggleNotePageLayerVisibilityAction> apply(@NotNull LayerInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ToggleNotePageLayerVisibilityAction(ToolOperationTipPopup.this.editorBundle, it2).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.ToolOperationTipPopup$e */
    /* loaded from: classes9.dex */
    public static final class C12495e<T> implements Consumer {
        public C12495e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LayerInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(ToolOperationTipPopup.this.editorBundle, new ShowLayerPopupEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.ToolOperationTipPopup$f */
    /* loaded from: classes9.dex */
    public static final class C12496f<T, R> implements Function {
        public C12496f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ToggleNotePageLayerLockAction> apply(@NotNull LayerInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ToggleNotePageLayerLockAction(ToolOperationTipPopup.this.editorBundle, it2).build();
        }
    }

    public ToolOperationTipPopup(@NotNull EditorBundle editorBundle, @NotNull Function0<Rect> getEditorContainerRectFunc) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(getEditorContainerRectFunc, "getEditorContainerRectFunc");
        this.editorBundle = editorBundle;
        this.getEditorContainerRectFunc = getEditorContainerRectFunc;
        this.popupFilter = new RxFilter<>();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LayoutToolOperationTipBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.ToolOperationTipPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutToolOperationTipBinding invoke() {
                return LayoutToolOperationTipBinding.inflate(LayoutInflater.from(EditorBundleKt.activity(ToolOperationTipPopup.this.editorBundle)));
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Long>() { // from class: com.onyx.galaxy.note.editor.view.popup.ToolOperationTipPopup$limitPopInterval$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Long invoke() {
                return Long.valueOf(ResManager.INSTANCE.getLong(C10651R.integer.tool_operation_tip_show_interval));
            }
        });
        this.limitPopInterval = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<EasyWindow<?>>() { // from class: com.onyx.galaxy.note.editor.view.popup.ToolOperationTipPopup$window$2

            /* renamed from: com.onyx.galaxy.note.editor.view.popup.ToolOperationTipPopup$window$2$a */
            /* loaded from: classes9.dex */
            public static final class C12497a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ EasyWindow<?> f60666e;

                public C12497a(EasyWindow<?> easyWindow) {
                    this.f60666e = easyWindow;
                }

                /* renamed from: a */
                public final void m49730a(boolean z) {
                    if (this.f60666e.isShowing() || !z) {
                        return;
                    }
                    this.f60666e.show();
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public /* bridge */ /* synthetic */ void accept(Object obj) {
                    m49730a(((Boolean) obj).booleanValue());
                }
            }

            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EasyWindow<?> invoke() {
                LayoutToolOperationTipBinding m49712j;
                RxFilter rxFilter;
                long m49714l;
                Activity activity = EditorBundleKt.activity(ToolOperationTipPopup.this.editorBundle);
                Intrinsics.checkNotNull(activity);
                m49712j = ToolOperationTipPopup.this.m49712j();
                View root = m49712j.getRoot();
                Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
                EasyWindow<?> createIndicatorWindow = EasyWindowKt.createIndicatorWindow(activity, root, ResManager.INSTANCE.getInteger(C10651R.integer.tool_operation_tip_show_interval));
                ToolOperationTipPopup toolOperationTipPopup = ToolOperationTipPopup.this;
                rxFilter = toolOperationTipPopup.popupFilter;
                m49714l = toolOperationTipPopup.m49714l();
                rxFilter.subscribeThrottleFirst(m49714l, new C12497a(createIndicatorWindow));
                return createIndicatorWindow;
            }
        });
        this.window = lazy3;
    }

    /* renamed from: A */
    public static final void m49691A(ToolOperationTipPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Observable<R> flatMap = this$0.m49713k().doOnNext(new C12495e()).flatMap(new C12496f());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        RxjavaKt.subscribeWithDefault$default(flatMap, null, null, null, 7, null);
        this$0.dismiss();
    }

    /* renamed from: C */
    public static /* synthetic */ void m49692C(ToolOperationTipPopup toolOperationTipPopup, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        toolOperationTipPopup.m49710B(i, z);
    }

    /* renamed from: D */
    public static final void m49693D(ToolOperationTipPopup this$0, List pageIdList, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(pageIdList, "$pageIdList");
        EditorBundleKt.postEvent(this$0.editorBundle, new UndoRemovePageEvent(pageIdList));
        this$0.dismiss();
    }

    /* renamed from: E */
    public static final void m49694E(ToolOperationTipPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49716n();
        this$0.m49719r();
        this$0.m49720t();
        this$0.m49712j().tvTip.setText(C10651R.string.tip_stylus_function_invalid);
        m49692C(this$0, ResManager.INSTANCE.getInteger(C10651R.integer.lasso_tool_operation_tip_duration), false, 2, null);
    }

    /* renamed from: G */
    public static final void m49695G(ToolOperationTipPopup this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49711F();
    }

    /* renamed from: q */
    public static final void m49705q(ToolOperationTipPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GlobalBundle.INSTANCE.postEvent(new ShowEraserSettingEvent());
        this$0.dismiss();
    }

    /* renamed from: s */
    public static final void m49706s(ToolOperationTipPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StringMap stringMap = new StringMap();
        stringMap.put(MessageConst.KEY_TAB_ID, "3");
        Navigator.INSTANCE.navigateToSettings(stringMap);
        this$0.dismiss();
    }

    /* renamed from: u */
    public static final void m49707u(ToolOperationTipPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: w */
    public static final void m49708w(ToolOperationTipPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Observable<R> flatMap = this$0.m49713k().doOnNext(new C12493c()).flatMap(new C12494d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        RxjavaKt.subscribeWithDefault$default(flatMap, null, null, null, 7, null);
        this$0.dismiss();
    }

    /* renamed from: y */
    public static final void m49709y(ToolOperationTipPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GlobalBundle.INSTANCE.postEvent(new ShowLayerPopupEvent());
        this$0.dismiss();
    }

    /* renamed from: B */
    public final void m49710B(int duration, boolean directly) {
        m49711F();
        m49715m().setDuration(duration);
        m49715m().update();
        ThemeUtils.refreshView(m49712j().getRoot());
        if (directly) {
            m49715m().show();
        } else {
            this.popupFilter.onNext(Boolean.TRUE);
        }
    }

    /* renamed from: F */
    public final void m49711F() {
        Rect invoke = this.getEditorContainerRectFunc.invoke();
        m49717o(invoke.centerX(), invoke.top + ResManager.INSTANCE.getDimens(C10651R.dimen.tool_operation_tip_popup_offset_y));
    }

    public final void destroy() {
        this.popupFilter.dispose();
        dismiss();
    }

    public final void dismiss() {
        if (m49715m().isShowing()) {
            m49715m().cancel();
        }
    }

    /* renamed from: j */
    public final LayoutToolOperationTipBinding m49712j() {
        return (LayoutToolOperationTipBinding) this.binding.getValue();
    }

    /* renamed from: k */
    public final Observable<LayerInfo> m49713k() {
        Observable map = new LoadNotePageLayersAction(this.editorBundle).build().filter(C12491a.f60660e).map(C12492b.f60661e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final long m49714l() {
        return ((Number) this.limitPopInterval.getValue()).longValue();
    }

    /* renamed from: m */
    public final EasyWindow<?> m49715m() {
        return (EasyWindow) this.window.getValue();
    }

    /* renamed from: n */
    public final void m49716n() {
        m49712j().tvIgnore.setVisibility(8);
        m49712j().tvAction.setVisibility(8);
        m49712j().tvActionSecond.setVisibility(8);
    }

    /* renamed from: o */
    public final void m49717o(int xOffset, int yOffset) {
        EasyWindow<?> m49715m = m49715m();
        View root = m49712j().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        EasyWindowKt.setXYOffset(m49715m, root, 0, xOffset, yOffset);
    }

    /* renamed from: p */
    public final void m49718p() {
        TintTextView tintTextView = m49712j().tvAction;
        tintTextView.setVisibility(0);
        tintTextView.setText(C10651R.string.tip_change_setting);
        tintTextView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.hjn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolOperationTipPopup.m49705q(ToolOperationTipPopup.this, view);
            }
        });
    }

    /* renamed from: r */
    public final void m49719r() {
        TintTextView tintTextView = m49712j().tvAction;
        tintTextView.setVisibility(0);
        tintTextView.setText(C10651R.string.go_to_setting);
        tintTextView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ojn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolOperationTipPopup.m49706s(ToolOperationTipPopup.this, view);
            }
        });
    }

    public final void showCurrentLayerHidden() {
        m49716n();
        m49712j().tvTip.setText(C10651R.string.tip_current_layer_hidden);
        m49720t();
        m49721v();
        m49692C(this, ResManager.INSTANCE.getInteger(C10651R.integer.lasso_tool_operation_tip_duration), false, 2, null);
    }

    public final void showCurrentLayerLocked() {
        m49716n();
        m49712j().tvTip.setText(C10651R.string.tip_current_layer_locked);
        m49720t();
        m49723z();
        m49692C(this, ResManager.INSTANCE.getInteger(C10651R.integer.lasso_tool_operation_tip_duration), false, 2, null);
    }

    public final void showImageCanNotErase() {
        m49716n();
        m49712j().tvTip.setText(C10651R.string.tip_can_not_erase_image);
        m49692C(this, ResManager.INSTANCE.getInteger(C10651R.integer.erase_tool_operation_tip_duration), false, 2, null);
    }

    public final void showNoShapeErasedOnLayer() {
        m49716n();
        m49712j().tvTip.setText(C10651R.string.tip_can_not_erase_on_current_layer);
        m49720t();
        TintTextView tvAction = m49712j().tvAction;
        Intrinsics.checkNotNullExpressionValue(tvAction, "tvAction");
        m49722x(tvAction);
        m49692C(this, ResManager.INSTANCE.getInteger(C10651R.integer.lasso_tool_operation_tip_duration), false, 2, null);
    }

    public final void showNoShapeSelectedOnLayer() {
        m49716n();
        m49712j().tvTip.setText(C10651R.string.tip_no_shape_on_current_layer);
        m49720t();
        TintTextView tvAction = m49712j().tvAction;
        Intrinsics.checkNotNullExpressionValue(tvAction, "tvAction");
        m49722x(tvAction);
        m49692C(this, ResManager.INSTANCE.getInteger(C10651R.integer.lasso_tool_operation_tip_duration), false, 2, null);
    }

    public final void showOnlyEraseHighlight() {
        m49716n();
        m49718p();
        m49720t();
        TintTextView tvActionSecond = m49712j().tvActionSecond;
        Intrinsics.checkNotNullExpressionValue(tvActionSecond, "tvActionSecond");
        m49722x(tvActionSecond);
        m49712j().tvTip.setText(C10651R.string.tip_can_erase_highlight_only);
        m49692C(this, ResManager.INSTANCE.getInteger(C10651R.integer.lasso_tool_operation_tip_duration), false, 2, null);
    }

    public final void showOnlyEraseTape() {
        m49716n();
        m49718p();
        m49720t();
        TintTextView tvActionSecond = m49712j().tvActionSecond;
        Intrinsics.checkNotNullExpressionValue(tvActionSecond, "tvActionSecond");
        m49722x(tvActionSecond);
        m49712j().tvTip.setText(C10651R.string.tip_can_only_erase_tape);
        m49692C(this, ResManager.INSTANCE.getInteger(C10651R.integer.lasso_tool_operation_tip_duration), false, 2, null);
    }

    public final void showPageRemovedMsg(@NotNull final List<String> pageIdList) {
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        m49716n();
        m49712j().tvTip.setText(C8045R.string.page_removed);
        TintTextView tvAction = m49712j().tvAction;
        Intrinsics.checkNotNullExpressionValue(tvAction, "tvAction");
        m49722x(tvAction);
        TintTextView tintTextView = m49712j().tvAction;
        tintTextView.setVisibility(0);
        tintTextView.setText(C10651R.string.restore);
        tintTextView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ljn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolOperationTipPopup.m49693D(ToolOperationTipPopup.this, pageIdList, view);
            }
        });
        m49710B(ResManager.INSTANCE.getInteger(C10651R.integer.tool_operation_tip_show_interval), true);
    }

    public final void showPageRestoredMsg() {
        m49716n();
        m49712j().tvTip.setText(C8045R.string.removed_page_restore);
        m49710B(ResManager.INSTANCE.getInteger(C10651R.integer.tool_operation_tip_show_interval), true);
    }

    public final void showStylusFunctionInvalid() {
        NoteConfigManager.INSTANCE.stylusFunctionTipsOption().executeIfFirst(new Runnable() { // from class: com.sunia.HTREnginev2.ijn
            @Override // java.lang.Runnable
            public final void run() {
                ToolOperationTipPopup.m49694E(ToolOperationTipPopup.this);
            }
        });
    }

    public final void showTextCanNotErase() {
        m49716n();
        m49712j().tvTip.setText(C10651R.string.tip_can_not_erase_text);
        m49692C(this, ResManager.INSTANCE.getInteger(C10651R.integer.erase_tool_operation_tip_duration), false, 2, null);
    }

    /* renamed from: t */
    public final void m49720t() {
        m49712j().tvIgnore.setText(C10651R.string.tip_ignore);
        m49712j().tvIgnore.setVisibility(0);
        m49712j().tvIgnore.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.jjn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolOperationTipPopup.m49707u(ToolOperationTipPopup.this, view);
            }
        });
    }

    public final void updatePositionIf() {
        View safeDecorView;
        if (!m49715m().isShowing() || (safeDecorView = EasyWindowKt.getSafeDecorView(m49715m())) == null) {
            return;
        }
        safeDecorView.post(new Runnable() { // from class: com.sunia.HTREnginev2.gjn
            @Override // java.lang.Runnable
            public final void run() {
                ToolOperationTipPopup.m49695G(ToolOperationTipPopup.this);
            }
        });
    }

    /* renamed from: v */
    public final void m49721v() {
        TintTextView tintTextView = m49712j().tvAction;
        tintTextView.setVisibility(0);
        tintTextView.setText(C10651R.string.tip_show_layer);
        tintTextView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kjn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolOperationTipPopup.m49708w(ToolOperationTipPopup.this, view);
            }
        });
    }

    /* renamed from: x */
    public final void m49722x(TextView actionButton) {
        actionButton.setVisibility(0);
        actionButton.setText(C10651R.string.tip_switch_layer);
        actionButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.njn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolOperationTipPopup.m49709y(ToolOperationTipPopup.this, view);
            }
        });
    }

    /* renamed from: z */
    public final void m49723z() {
        TintTextView tintTextView = m49712j().tvAction;
        tintTextView.setVisibility(0);
        tintTextView.setText(C10651R.string.tip_unlock_layer);
        tintTextView.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mjn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolOperationTipPopup.m49691A(ToolOperationTipPopup.this, view);
            }
        });
    }
}
