package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.utils.JSONListOption;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.LassoPropertyOption;
import com.onyx.android.sdk.universal.editor.events.note.ChangeSubShapeTypeEvent;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.statistics.LassoPopupMenuEventBean;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupLassoBinding;
import com.onyx.galaxy.note.editor.data.LassoElementType;
import com.onyx.galaxy.note.editor.view.adapter.LassoElementAdapter;
import com.onyx.galaxy.note.editor.view.popup.LassoPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 (2\u00020\u0001:\u0001(B\u001f\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010\u0015\u001a\u00020\u0011\u0012\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0003J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J\b\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0017\u0010\u0015\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\f\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u001a\u001a\u00020\u00168FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001e\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0017\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010 ¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;", NotificationCompat.CATEGORY_EVENT, "", "reportLassoEvent", "", "isShowing", "Lcom/onyx/galaxy/note/common/statistics/LassoPopupMenuEventBean;", "makeReportData", GoogleApiAvailabilityLight.f29016b, "r", "q", "", "lassoType", "s", "t", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupLassoBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;", "m", "()Lcom/onyx/galaxy/note/editor/view/adapter/LassoElementAdapter;", "lassoAdapter", "Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;", "Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;", "lassoProperty", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLassoPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LassoPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LassoPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n1855#2,2:156\n*S KotlinDebug\n*F\n+ 1 LassoPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/LassoPopup\n*L\n121#1:156,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LassoPopup extends BasePopupWindow {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy lassoAdapter;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final LassoPropertyOption lassoProperty;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$Companion;", "", "()V", "onLassoTypeSelected", "", "lassoOption", "Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;", "lassoType", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void onLassoTypeSelected(@NotNull LassoPropertyOption lassoOption, int lassoType) {
            Intrinsics.checkNotNullParameter(lassoOption, "lassoOption");
            LassoPropertyOption.INSTANCE.getLassoTypeOption().put(lassoType);
            DocCollectionBundle.INSTANCE.postEvent(new ChangeSubShapeTypeEvent(lassoType == 0 ? 7 : 1));
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LassoPopup(@NotNull final Context context, @NotNull EditorBundle editorBundle, @NotNull DockType dockType) {
        super(context, dockType);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.editorBundle = editorBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupLassoBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.LassoPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupLassoBinding invoke() {
                PopupLassoBinding inflate = PopupLassoBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<LassoElementAdapter>() { // from class: com.onyx.galaxy.note.editor.view.popup.LassoPopup$lassoAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LassoElementAdapter invoke() {
                return new LassoElementAdapter();
            }
        });
        this.lassoAdapter = lazy2;
        this.lassoProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getLassoProperty();
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setFocusable(true);
        m48903r();
        m48901n();
        m48902q();
    }

    /* renamed from: o */
    public static final void m48898o(LassoPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48904s(0);
    }

    /* renamed from: p */
    public static final void m48899p(LassoPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48904s(2);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    private final void reportLassoEvent(ChangeSubShapeTypeEvent event) {
        StatisticsBundle.INSTANCE.reportShowPopupMenuEvent(this.editorBundle, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASSO_BTN_DOUBLE_CLICK_SHOW_MENU, "view", null);
    }

    @NotNull
    public final PopupLassoBinding getBinding() {
        return (PopupLassoBinding) this.binding.getValue();
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: m */
    public final LassoElementAdapter m48900m() {
        return (LassoElementAdapter) this.lassoAdapter.getValue();
    }

    @NotNull
    public final LassoPopupMenuEventBean makeReportData(boolean isShowing) {
        LassoPopupMenuEventBean lassoPopupMenuEventBean = new LassoPopupMenuEventBean(this.editorBundle, isShowing ? OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASSO_BTN_DOUBLE_CLICK_SHOW_MENU : OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_LASSO_BTN_DOUBLE_CLICK_CLOSE_MENU, isShowing ? "view" : OnyxStatisticConstant.EVENT_TYPE_CLICK, false, false, false, false, false, false, false, false, false, false, 8184, null);
        if (this.lassoProperty.getLassoType() == 0) {
            lassoPopupMenuEventBean.setFreeLasso(true);
            lassoPopupMenuEventBean.setRectLasso(false);
        } else {
            lassoPopupMenuEventBean.setFreeLasso(false);
            lassoPopupMenuEventBean.setRectLasso(true);
        }
        Iterator<T> it2 = m48900m().getSelectList().iterator();
        while (it2.hasNext()) {
            int intValue = ((Number) it2.next()).intValue();
            if (intValue == 1) {
                lassoPopupMenuEventBean.setShape(true);
            } else if (intValue == 5) {
                lassoPopupMenuEventBean.setHandwriting(true);
            } else if (intValue == 19) {
                lassoPopupMenuEventBean.setPic(true);
            } else if (intValue == 33) {
                lassoPopupMenuEventBean.setLink(true);
            } else if (intValue == 39) {
                lassoPopupMenuEventBean.setTape(true);
            } else if (intValue == 45) {
                lassoPopupMenuEventBean.setTag(true);
            } else if (intValue == 15) {
                lassoPopupMenuEventBean.setHighLighter(true);
            } else if (intValue == 16) {
                lassoPopupMenuEventBean.setTextBox(true);
            }
        }
        return lassoPopupMenuEventBean;
    }

    /* renamed from: n */
    public final void m48901n() {
        getBinding().lassoContainer.freeLassoType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.fvi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LassoPopup.m48898o(LassoPopup.this, view);
            }
        });
        getBinding().lassoContainer.rectangleLassoType.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.gvi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LassoPopup.m48899p(LassoPopup.this, view);
            }
        });
    }

    /* renamed from: q */
    public final void m48902q() {
        getContentView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.LassoPopup$initReportListener$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                StatisticsBundle.INSTANCE.reportLassoPopupMenuEvent(LassoPopup.this.makeReportData(true));
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                StatisticsBundle.INSTANCE.reportLassoPopupMenuEvent(LassoPopup.this.makeReportData(false));
            }
        });
    }

    /* renamed from: r */
    public final void m48903r() {
        List list;
        m48905t(this.lassoProperty.getLassoType());
        getBinding().lassoContainer.lassoElementList.setLayoutManager(new LinearLayoutManager(getContext()));
        getBinding().lassoContainer.lassoElementList.setAdapter(m48900m());
        m48900m().initSelectList((List) this.lassoProperty.getLassoElementsOption().get());
        LassoElementAdapter m48900m = m48900m();
        list = ArraysKt___ArraysKt.toList(LassoElementType.values());
        m48900m.submitList(list);
        m48900m().setClickCallback(new Function1<LassoElementType, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.LassoPopup$initView$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LassoElementType lassoElementType) {
                invoke2(lassoElementType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull LassoElementType item) {
                LassoElementAdapter m48900m2;
                LassoPropertyOption lassoPropertyOption;
                LassoElementAdapter m48900m3;
                Intrinsics.checkNotNullParameter(item, "item");
                m48900m2 = LassoPopup.this.m48900m();
                m48900m2.selectChange(item);
                lassoPropertyOption = LassoPopup.this.lassoProperty;
                JSONListOption<Integer> lassoElementsOption = lassoPropertyOption.getLassoElementsOption();
                m48900m3 = LassoPopup.this.m48900m();
                lassoElementsOption.put(TypeExtKt.toIntList(m48900m3.getSelectList()));
            }
        });
    }

    /* renamed from: s */
    public final void m48904s(int lassoType) {
        INSTANCE.onLassoTypeSelected(this.lassoProperty, lassoType);
        m48905t(lassoType);
    }

    /* renamed from: t */
    public final void m48905t(int lassoType) {
        getBinding().lassoContainer.freeLassoType.setSelected(lassoType == 0);
        getBinding().lassoContainer.rectangleLassoType.setSelected(lassoType == 2);
    }
}
