package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.blankj.utilcode.util.ScreenUtils;
import com.chad.library.adapter4.dragswipe.QuickDragAndSwipe;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.common.events.ConfigurationChangedEvent;
import com.onyx.android.sdk.universal.common.events.PopupShowStateEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupShapeToolbarCustomBinding;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.data.ShapeToolbarData;
import com.onyx.galaxy.note.editor.event.ShapeToolbarChangeEvent;
import com.onyx.galaxy.note.editor.event.ToolbarItemDisableEvent;
import com.onyx.galaxy.note.editor.event.ToolbarItemEnableEvent;
import com.onyx.galaxy.note.editor.view.adapter.ToolbarDisabledItemAdapter;
import com.onyx.galaxy.note.editor.view.adapter.ToolbarEnabledItemAdapter;
import com.onyx.galaxy.note.editor.view.popup.ShapeToolbarCustomPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010 \u001a\u00020\u001c\u0012\u0006\u0010:\u001a\u000209¢\u0006\u0004\b;\u0010<J(\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\bH\u0016J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0007J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0010H\u0007J\b\u0010\u0012\u001a\u00020\bH\u0002J\b\u0010\u0013\u001a\u00020\bH\u0002J\b\u0010\u0006\u001a\u00020\bH\u0002J\b\u0010\u0014\u001a\u00020\bH\u0002J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\b\u0010\u0018\u001a\u00020\bH\u0002J\b\u0010\u0007\u001a\u00020\bH\u0002J\b\u0010\u0019\u001a\u00020\bH\u0002J\b\u0010\u001a\u001a\u00020\bH\u0002J\b\u0010\u001b\u001a\u00020\bH\u0002R\u0017\u0010 \u001a\u00020\u001c8\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001b\u0010&\u001a\u00020!8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u001b\u0010+\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010#\u001a\u0004\b)\u0010*R\u001b\u00100\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010#\u001a\u0004\b.\u0010/R\u0016\u00102\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u00101R\u0014\u00103\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u00101R\u0014\u00106\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u00105¨\u0006="}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Landroid/view/View;", "parent", "", NotificationCompat.WearableExtender.f5060z, "x", "y", "", "showAtLocation", "dismiss", "Lcom/onyx/galaxy/note/editor/event/ToolbarItemDisableEvent;", NotificationCompat.CATEGORY_EVENT, "onToolbarItemDisableEvent", "Lcom/onyx/galaxy/note/editor/event/ToolbarItemEnableEvent;", "onToolbarItemEnableEvent", "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;", "onConfigurationChangedEvent", "p", "q", "v", "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;", "toolbarData", "w", "B", "u", "A", "z", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;", "r", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;", "s", C4921e.f26528e, "()Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;", "toolbarEnabledItemAdapter", "Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarDisabledItemAdapter;", "t", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarDisabledItemAdapter;", "toolbarDisabledItemAdapter", "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;", "shapeToolbarData", "oldToolbarData", "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;", "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;", "quickDragAndSwipe", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeToolbarCustomPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolbarCustomPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n1603#2,9:243\n1855#2:252\n1856#2:254\n1612#2:255\n766#2:256\n857#2,2:257\n1603#2,9:259\n1855#2:268\n1856#2:270\n1612#2:271\n1#3:253\n1#3:269\n*S KotlinDebug\n*F\n+ 1 ShapeToolbarCustomPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup\n*L\n195#1:243,9\n195#1:252\n195#1:254\n195#1:255\n195#1:256\n195#1:257,2\n196#1:259,9\n196#1:268\n196#1:270\n196#1:271\n195#1:253\n196#1:269\n*E\n"})
/* loaded from: classes9.dex */
public final class ShapeToolbarCustomPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy toolbarEnabledItemAdapter;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy toolbarDisabledItemAdapter;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public ShapeToolbarData shapeToolbarData;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final ShapeToolbarData oldToolbarData;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final QuickDragAndSwipe quickDragAndSwipe;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapeToolbarCustomPopup(@NotNull final Context context, @NotNull EditorBundle editorBundle, @NotNull DockType dockType) {
        super(context, dockType);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.editorBundle = editorBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupShapeToolbarCustomBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.ShapeToolbarCustomPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupShapeToolbarCustomBinding invoke() {
                PopupShapeToolbarCustomBinding inflate = PopupShapeToolbarCustomBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ToolbarEnabledItemAdapter>() { // from class: com.onyx.galaxy.note.editor.view.popup.ShapeToolbarCustomPopup$toolbarEnabledItemAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ToolbarEnabledItemAdapter invoke() {
                return new ToolbarEnabledItemAdapter(ShapeToolbarCustomPopup.this.getEditorBundle());
            }
        });
        this.toolbarEnabledItemAdapter = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ToolbarDisabledItemAdapter>() { // from class: com.onyx.galaxy.note.editor.view.popup.ShapeToolbarCustomPopup$toolbarDisabledItemAdapter$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ToolbarDisabledItemAdapter invoke() {
                return new ToolbarDisabledItemAdapter(ShapeToolbarCustomPopup.this.getEditorBundle());
            }
        });
        this.toolbarDisabledItemAdapter = lazy3;
        this.shapeToolbarData = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getShapeToolbarData();
        this.oldToolbarData = new ShapeToolbarData();
        this.quickDragAndSwipe = new QuickDragAndSwipe().setDragMoveFlags(3);
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(false);
        setFocusable(false);
        GlobalBundle.INSTANCE.postEvent(new PopupShowStateEvent(true));
        setMask(true, new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.ShapeToolbarCustomPopup.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ShapeToolbarCustomPopup.this.m49497v();
            }
        });
        m49496u();
        m49495q();
        m49494p();
        m49491B();
    }

    /* renamed from: r */
    public static final void m49487r(ShapeToolbarCustomPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49497v();
    }

    /* renamed from: s */
    public static final void m49488s(ShapeToolbarCustomPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49499x();
        this$0.dismiss();
    }

    /* renamed from: t */
    public static final void m49489t(ShapeToolbarCustomPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m49500y();
    }

    /* renamed from: A */
    public final void m49490A() {
        List list;
        List list2;
        List<String> enabledList = this.shapeToolbarData.getEnabledList();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = enabledList.iterator();
        while (it2.hasNext()) {
            ShapeToolType safetyValueOf = ShapeToolType.INSTANCE.safetyValueOf((String) it2.next());
            if (safetyValueOf != null) {
                arrayList.add(safetyValueOf);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((ShapeToolType) obj) != ShapeToolType.CUSTOM) {
                arrayList2.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList2);
        List<String> disabledList = this.shapeToolbarData.getDisabledList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<T> it3 = disabledList.iterator();
        while (it3.hasNext()) {
            ShapeToolType safetyValueOf2 = ShapeToolType.INSTANCE.safetyValueOf((String) it3.next());
            if (safetyValueOf2 != null) {
                arrayList3.add(safetyValueOf2);
            }
        }
        list2 = CollectionsKt___CollectionsKt.toList(arrayList3);
        m49493o().submitList(list);
        m49492n().submitList(list2);
        m49498w(this.shapeToolbarData);
        m49491B();
    }

    /* renamed from: B */
    public final void m49491B() {
        boolean areEqual = Intrinsics.areEqual(ShapeToolbarData.INSTANCE.getDEFAULT_SHAPE_TOOLBAR_DATA(), this.shapeToolbarData);
        getBinding().tvResetConfig.setEnabled(!areEqual);
        if (areEqual) {
            getBinding().tvResetConfig.setAlpha(ResManager.INSTANCE.getFloat(C10651R.dimen.half_alpha));
        } else {
            getBinding().tvResetConfig.setAlpha(ResManager.INSTANCE.getFloat(C10651R.dimen.max_alpha));
        }
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        GlobalBundle globalBundle = GlobalBundle.INSTANCE;
        globalBundle.postEvent(new PopupShowStateEvent(false));
        EditorBundleKt.unregister(this.editorBundle, this);
        globalBundle.unregister(this);
    }

    @NotNull
    public final PopupShapeToolbarCustomBinding getBinding() {
        return (PopupShapeToolbarCustomBinding) this.binding.getValue();
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: n */
    public final ToolbarDisabledItemAdapter m49492n() {
        return (ToolbarDisabledItemAdapter) this.toolbarDisabledItemAdapter.getValue();
    }

    /* renamed from: o */
    public final ToolbarEnabledItemAdapter m49493o() {
        return (ToolbarEnabledItemAdapter) this.toolbarEnabledItemAdapter.getValue();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onConfigurationChangedEvent(@NotNull ConfigurationChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m49501z();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onToolbarItemDisableEvent(@NotNull ToolbarItemDisableEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.shapeToolbarData.disableTool(event.getShapeToolType())) {
            m49490A();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onToolbarItemEnableEvent(@NotNull ToolbarItemEnableEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.shapeToolbarData.enableTool(event.getShapeToolType())) {
            m49490A();
        }
    }

    /* renamed from: p */
    public final void m49494p() {
        this.oldToolbarData.getEnabledList().addAll(this.shapeToolbarData.getEnabledList());
        this.oldToolbarData.getDisabledList().addAll(this.shapeToolbarData.getDisabledList());
    }

    /* renamed from: q */
    public final void m49495q() {
        getBinding().tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kmm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShapeToolbarCustomPopup.m49487r(ShapeToolbarCustomPopup.this, view);
            }
        });
        getBinding().tvApply.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lmm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShapeToolbarCustomPopup.m49488s(ShapeToolbarCustomPopup.this, view);
            }
        });
        TintTextView tvResetConfig = getBinding().tvResetConfig;
        Intrinsics.checkNotNullExpressionValue(tvResetConfig, "tvResetConfig");
        ViewKt.click$default(tvResetConfig, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mmm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShapeToolbarCustomPopup.m49489t(ShapeToolbarCustomPopup.this, view);
            }
        }, 1, null);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void showAtLocation(@NotNull View parent, int gravity, int x, int y) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        super.showAtLocation(parent, gravity, x, y);
        EditorBundleKt.register(this.editorBundle, this);
        GlobalBundle.INSTANCE.register(this);
    }

    /* renamed from: u */
    public final void m49496u() {
        m49501z();
        getBinding().enabledList.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        getBinding().enabledList.setAdapter(m49493o());
        getBinding().disabledList.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        getBinding().disabledList.setNestedScrollingEnabled(false);
        getBinding().disabledList.setAdapter(m49492n());
        ShapeToolbarCustomPopup$initView$listener$1 shapeToolbarCustomPopup$initView$listener$1 = new ShapeToolbarCustomPopup$initView$listener$1(ResManager.INSTANCE.getDimension(C7384R.dimen.dp_12), r0.getInteger(C10651R.integer.list_item_drag_duration), this);
        QuickDragAndSwipe quickDragAndSwipe = this.quickDragAndSwipe;
        TintRecycleView enabledList = getBinding().enabledList;
        Intrinsics.checkNotNullExpressionValue(enabledList, "enabledList");
        quickDragAndSwipe.attachToRecyclerView(enabledList).setDataCallback(m49493o()).setItemDragListener(shapeToolbarCustomPopup$initView$listener$1);
        m49490A();
    }

    /* renamed from: v */
    public final void m49497v() {
        m49498w(this.oldToolbarData);
        dismiss();
    }

    /* renamed from: w */
    public final void m49498w(ShapeToolbarData toolbarData) {
        NoteConfigManager.INSTANCE.getNoteEditConfigInfo().saveShapeToolbarData(toolbarData);
        EditorBundleKt.postEvent(this.editorBundle, new ShapeToolbarChangeEvent());
        m49491B();
    }

    /* renamed from: x */
    public final void m49499x() {
        StatisticsBundle.INSTANCE.reportCustomSettingPopupMenuEvent(this.editorBundle, OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_CUSTOM_SETTING_BTN_DOUBLE_CLICK_APPLY_MENU, OnyxStatisticConstant.EVENT_TYPE_CLICK);
    }

    /* renamed from: y */
    public final void m49500y() {
        this.shapeToolbarData.resetConfig();
        m49490A();
    }

    /* renamed from: z */
    public final void m49501z() {
        int coerceAtMost;
        float appScreenWidth = ScreenUtils.getAppScreenWidth();
        ResManager resManager = ResManager.INSTANCE;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost((int) (appScreenWidth * resManager.getFraction(C10651R.fraction.toolbar_custom_popup_width_percent)), resManager.getDimens(C7384R.dimen.dp_528));
        TintLinearLayout llLayout = getBinding().llLayout;
        Intrinsics.checkNotNullExpressionValue(llLayout, "llLayout");
        com.onyx.android.sdk.base.extension.ViewKt.setLayoutWidth(llLayout, coerceAtMost);
        TintLinearLayout llLayout2 = getBinding().llLayout;
        Intrinsics.checkNotNullExpressionValue(llLayout2, "llLayout");
        com.onyx.android.sdk.base.extension.ViewKt.setLayoutHeight(llLayout2, Integer.valueOf((int) (resManager.getScreenHeight() * resManager.getFraction(C10651R.fraction.toolbar_custom_popup_height_percent))));
        TintRecycleView enabledList = getBinding().enabledList;
        Intrinsics.checkNotNullExpressionValue(enabledList, "enabledList");
        com.onyx.android.sdk.base.extension.ViewKt.setLayoutHeight(enabledList, Integer.valueOf((int) (resManager.getScreenHeight() * resManager.getFraction(C10651R.fraction.toolbar_custom_popup_list_height_percent))));
    }
}
