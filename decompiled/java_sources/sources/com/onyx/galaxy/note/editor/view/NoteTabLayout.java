package com.onyx.galaxy.note.editor.view;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.divider.MaterialDividerItemDecoration;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ListExtKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.SaveNoteTabListAction;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.ItemNoteTabDragBinding;
import com.onyx.galaxy.note.databinding.LayoutNoteTabBinding;
import com.onyx.galaxy.note.editor.view.NoteTabLayout;
import com.onyx.galaxy.note.editor.view.adapter.NoteTabAdapter;
import com.onyx.galaxy.note.editor.view.popup.NoteTabManagementPopup;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001OB\u001d\b\u0016\u0012\u0006\u0010H\u001a\u00020G\u0012\n\b\u0002\u0010J\u001a\u0004\u0018\u00010I¢\u0006\u0004\bK\u0010LB'\b\u0017\u0012\u0006\u0010H\u001a\u00020G\u0012\n\b\u0002\u0010J\u001a\u0004\u0018\u00010I\u0012\b\b\u0002\u0010M\u001a\u00020\r¢\u0006\u0004\bK\u0010NJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u000e\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001bJ\u0014\u0010\u001f\u001a\u00020\u00022\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00050\u001dJ\u0006\u0010 \u001a\u00020\u0002J\u0006\u0010!\u001a\u00020\u0002J\u0010\u0010#\u001a\u00020\u00022\b\u0010\"\u001a\u0004\u0018\u00010\u0005J\b\u0010$\u001a\u0004\u0018\u00010\u0005J\u000e\u0010#\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u0012J\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00050\u001dJ(\u0010+\u001a\u00020\u00022\u0006\u0010'\u001a\u00020\r2\u0006\u0010(\u001a\u00020\r2\u0006\u0010)\u001a\u00020\r2\u0006\u0010*\u001a\u00020\rH\u0014J\u0018\u0010.\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\rH\u0014J\u000e\u00100\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u0005J\u000e\u00101\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007J\u000e\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u00020\tR\u0016\u00106\u001a\u0002048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010F¨\u0006P"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;", "Landroid/widget/FrameLayout;", "", "q", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "selectedItem", "Landroid/view/View;", "view", "", "l", "p", "m", "", "pos", C4921e.f26537n, "e", C4921e.f26528e, "", "eventId", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "editorBundleManager", "setEditorBundleManager", "Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setNoteTabListener", "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;", "setDragListener", "", "list", "setDataList", "notifyDataSetChanged", "freshView", "item", "setSelectedItem", "getSelectedItem", Transition.f10629M0, "getDataList", "w", C6999h.f39688c, "oldw", "oldh", "onSizeChanged", "changedView", "visibility", "onVisibilityChanged", "tabData", "closeTab", "showManagementPopup", "isGuideShowing", "showGuideDivider", "Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;", "Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;", "adapter", "Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;", "tabListener", "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;", "dragListenerDelegateListener", "i", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "selectedDragItem", "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;", "j", "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;", "noteTabManagementPopup", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "TabListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteTabLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTabLayout.kt\ncom/onyx/galaxy/note/editor/view/NoteTabLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,422:1\n350#2,7:423\n*S KotlinDebug\n*F\n+ 1 NoteTabLayout.kt\ncom/onyx/galaxy/note/editor/view/NoteTabLayout\n*L\n344#1:423,7\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteTabLayout extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    public LayoutNoteTabBinding binding;

    /* renamed from: f, reason: from kotlin metadata */
    public NoteTabAdapter adapter;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public TabListener tabListener;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public NoteTabManagementPopup.DragListenerDelegateListener dragListenerDelegateListener;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public NoteTabData selectedDragItem;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public NoteTabManagementPopup noteTabManagementPopup;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public EditorBundleManager editorBundleManager;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u0006H&J\b\u0010\t\u001a\u00020\u0003H&J\u001a\u0010\n\u001a\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u0006H&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H&J\b\u0010\u0012\u001a\u00020\u0003H&¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;", "", "closedOtherTab", "", "closedTabs", "", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "onCloseLastTab", "closedTab", "onCloseOtherTab", "onCloseTab", "prepareOpenTab", "onSelectedChanged", "oldTab", "newTab", "onTabVisibilityChanged", "visibility", "", "onToggleTabVisibility", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface TabListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void closedOtherTab(@NotNull TabListener tabListener, @NotNull List<NoteTabData> closedTabs) {
                Intrinsics.checkNotNullParameter(closedTabs, "closedTabs");
            }

            public static void onCloseTab(@NotNull TabListener tabListener, @Nullable NoteTabData noteTabData, @NotNull NoteTabData prepareOpenTab) {
                Intrinsics.checkNotNullParameter(prepareOpenTab, "prepareOpenTab");
            }
        }

        void closedOtherTab(@NotNull List<NoteTabData> closedTabs);

        void onCloseLastTab(@Nullable NoteTabData closedTab);

        void onCloseOtherTab();

        void onCloseTab(@Nullable NoteTabData closedTab, @NotNull NoteTabData prepareOpenTab);

        void onSelectedChanged(@Nullable NoteTabData oldTab, @NotNull NoteTabData newTab);

        void onTabVisibilityChanged(int visibility);

        void onToggleTabVisibility();
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.NoteTabLayout$a */
    /* loaded from: classes9.dex */
    public static final class C12253a<T> implements Consumer {
        public C12253a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NoteTabData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteTabLayout.this.setDataList(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTabLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        m47411g();
    }

    /* renamed from: f */
    public static final void m47406f(NoteTabLayout this$0, List items) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(items, "$items");
        TabListener tabListener = this$0.tabListener;
        if (tabListener != null) {
            tabListener.closedOtherTab(items);
        }
    }

    /* renamed from: h */
    public static final void m47407h(NoteTabLayout this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        NoteTabAdapter noteTabAdapter = this$0.adapter;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        NoteTabData item = noteTabAdapter.getItem(i);
        if (item == null) {
            return;
        }
        this$0.m47412k(i, item);
    }

    /* renamed from: i */
    public static final void m47408i(NoteTabLayout this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        NoteTabAdapter noteTabAdapter = this$0.adapter;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        NoteTabData item = noteTabAdapter.getItem(i);
        if (item == null) {
            return;
        }
        this$0.m47414m(item);
    }

    /* renamed from: j */
    public static final boolean m47409j(NoteTabLayout this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        NoteTabAdapter noteTabAdapter = this$0.adapter;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        NoteTabData item = noteTabAdapter.getItem(i);
        if (item == null) {
            return false;
        }
        return this$0.m47413l(item, view);
    }

    public final void closeTab(@NotNull NoteTabData tabData) {
        Intrinsics.checkNotNullParameter(tabData, "tabData");
        NoteTabAdapter noteTabAdapter = this.adapter;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        Iterator<NoteTabData> it2 = noteTabAdapter.getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(it2.next().getUniqueId(), tabData.getUniqueId())) {
                break;
            } else {
                i++;
            }
        }
        m47412k(i, tabData);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
    
        r0 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r0);
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m47410e() {
        /*
            r5 = this;
            com.onyx.android.sdk.universal.editor.view.EditorBundleManager r0 = r5.editorBundleManager
            if (r0 == 0) goto L12
            java.util.List r0 = r0.getOpenDocIds()
            if (r0 == 0) goto L12
            java.util.Collection r0 = (java.util.Collection) r0
            java.util.List r0 = kotlin.collections.CollectionsKt.toMutableList(r0)
            if (r0 != 0) goto L17
        L12:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L17:
            r1 = r0
            java.util.Collection r1 = (java.util.Collection) r1
            com.onyx.galaxy.note.editor.view.adapter.NoteTabAdapter r2 = r5.adapter
            java.lang.String r3 = "adapter"
            r4 = 0
            if (r2 != 0) goto L25
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            r2 = r4
        L25:
            com.onyx.android.sdk.replicator.note.db.model.NoteTabData r2 = r2.getSelectedItem()
            if (r2 == 0) goto L30
            java.lang.String r2 = r2.getUniqueId()
            goto L31
        L30:
            r2 = r4
        L31:
            com.onyx.android.sdk.base.extension.CollectionKt.safeAdd(r1, r2)
            com.onyx.galaxy.note.editor.view.adapter.NoteTabAdapter r1 = r5.adapter
            if (r1 != 0) goto L3c
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            goto L3d
        L3c:
            r4 = r1
        L3d:
            java.util.List r1 = r4.getItems()
            java.util.Collection r1 = (java.util.Collection) r1
            java.util.List r1 = kotlin.collections.CollectionsKt.toMutableList(r1)
            r2 = r1
            java.util.Collection r2 = (java.util.Collection) r2
            com.onyx.galaxy.note.editor.view.NoteTabLayout$closeOtherTab$1 r3 = new com.onyx.galaxy.note.editor.view.NoteTabLayout$closeOtherTab$1
            r3.<init>()
            r0 = 0
            com.onyx.android.sdk.base.extension.CollectionKt.removeIf(r2, r0, r3)
            com.onyx.galaxy.note.category.action.CloseNoteTabListAction r0 = new com.onyx.galaxy.note.category.action.CloseNoteTabListAction
            r0.<init>(r1)
            io.reactivex.rxjava3.core.Observable r0 = r0.build()
            com.onyx.galaxy.note.editor.view.NoteTabLayout$a r2 = new com.onyx.galaxy.note.editor.view.NoteTabLayout$a
            r2.<init>()
            io.reactivex.rxjava3.core.Observable r0 = r0.doOnNext(r2)
            com.sunia.HTREnginev2.i2k r2 = new com.sunia.HTREnginev2.i2k
            r2.<init>()
            io.reactivex.rxjava3.core.Observable r5 = r0.doOnComplete(r2)
            r5.subscribe()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.NoteTabLayout.m47410e():void");
    }

    public final void freshView() {
        LayoutNoteTabBinding layoutNoteTabBinding = this.binding;
        NoteTabAdapter noteTabAdapter = null;
        if (layoutNoteTabBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutNoteTabBinding = null;
        }
        RecyclerView recyclerView = layoutNoteTabBinding.recyclerView;
        NoteTabAdapter noteTabAdapter2 = this.adapter;
        if (noteTabAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            noteTabAdapter = noteTabAdapter2;
        }
        recyclerView.setAdapter(noteTabAdapter);
    }

    /* renamed from: g */
    public final void m47411g() {
        ViewKt.setViewVisibleOrGone(this, NoteConfigManager.INSTANCE.getNoteEditConfigInfo().isTabOptionShow());
        LayoutNoteTabBinding inflate = LayoutNoteTabBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        NoteTabAdapter noteTabAdapter = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.tabTotal.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.e2k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTabLayout.this.showManagementPopup(view);
            }
        });
        NoteTabAdapter noteTabAdapter2 = new NoteTabAdapter();
        this.adapter = noteTabAdapter2;
        noteTabAdapter2.addOnItemChildClickListener(C10651R.id.close, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.f2k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteTabLayout.m47407h(NoteTabLayout.this, baseQuickAdapter, view, i);
            }
        });
        NoteTabAdapter noteTabAdapter3 = this.adapter;
        if (noteTabAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter3 = null;
        }
        noteTabAdapter3.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.g2k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteTabLayout.m47408i(NoteTabLayout.this, baseQuickAdapter, view, i);
            }
        });
        NoteTabAdapter noteTabAdapter4 = this.adapter;
        if (noteTabAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter4 = null;
        }
        noteTabAdapter4.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() { // from class: com.sunia.HTREnginev2.h2k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemLongClickListener
            public final boolean onLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m47409j;
                m47409j = NoteTabLayout.m47409j(NoteTabLayout.this, baseQuickAdapter, view, i);
                return m47409j;
            }
        });
        LayoutNoteTabBinding layoutNoteTabBinding = this.binding;
        if (layoutNoteTabBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutNoteTabBinding = null;
        }
        RecyclerView recyclerView = layoutNoteTabBinding.recyclerView;
        MaterialDividerItemDecoration materialDividerItemDecoration = new MaterialDividerItemDecoration(getContext(), 0);
        materialDividerItemDecoration.setDividerColor(0);
        materialDividerItemDecoration.setDividerThickness(ResManager.INSTANCE.getDimensionPixelSize(C7384R.dimen.dp_0));
        recyclerView.addItemDecoration(materialDividerItemDecoration);
        LayoutNoteTabBinding layoutNoteTabBinding2 = this.binding;
        if (layoutNoteTabBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutNoteTabBinding2 = null;
        }
        layoutNoteTabBinding2.recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        LayoutNoteTabBinding layoutNoteTabBinding3 = this.binding;
        if (layoutNoteTabBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutNoteTabBinding3 = null;
        }
        RecyclerView recyclerView2 = layoutNoteTabBinding3.recyclerView;
        NoteTabAdapter noteTabAdapter5 = this.adapter;
        if (noteTabAdapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            noteTabAdapter = noteTabAdapter5;
        }
        recyclerView2.setAdapter(noteTabAdapter);
        m47417p();
    }

    @NotNull
    public final List<NoteTabData> getDataList() {
        NoteTabAdapter noteTabAdapter = this.adapter;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        return noteTabAdapter.getItems();
    }

    @Nullable
    public final NoteTabData getSelectedItem() {
        NoteTabAdapter noteTabAdapter = this.adapter;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        return noteTabAdapter.getSelectedItem();
    }

    /* renamed from: k */
    public final void m47412k(int pos, NoteTabData selectedItem) {
        if (pos < 0) {
            return;
        }
        NoteTabAdapter noteTabAdapter = this.adapter;
        NoteTabAdapter noteTabAdapter2 = null;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        noteTabAdapter.removeItem(pos, selectedItem);
        NoteTabAdapter noteTabAdapter3 = this.adapter;
        if (noteTabAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter3 = null;
        }
        if (noteTabAdapter3.getItems().isEmpty()) {
            m47416o();
            TabListener tabListener = this.tabListener;
            if (tabListener != null) {
                tabListener.onCloseLastTab(selectedItem);
                return;
            }
            return;
        }
        NoteTabAdapter noteTabAdapter4 = this.adapter;
        if (noteTabAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter4 = null;
        }
        NoteTabData selectedItem2 = noteTabAdapter4.getSelectedItem();
        if (selectedItem2 == null) {
            return;
        }
        TabListener tabListener2 = this.tabListener;
        if (tabListener2 != null) {
            tabListener2.onCloseTab(selectedItem, selectedItem2);
        }
        NoteTabAdapter noteTabAdapter5 = this.adapter;
        if (noteTabAdapter5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            noteTabAdapter2 = noteTabAdapter5;
        }
        noteTabAdapter2.notifyDataSetChanged();
        m47418q();
        m47416o();
    }

    /* renamed from: l */
    public final boolean m47413l(NoteTabData selectedItem, View view) {
        this.selectedDragItem = selectedItem;
        Intent intent = new Intent();
        intent.putExtra(EditorConstants.ARGS_DOC_ID, selectedItem.getUniqueId());
        ClipData clipData = new ClipData("dragTab", new String[]{FileExtensionUtils.DEFAULT_MIMETYPE_TEXT}, new ClipData.Item(intent));
        LayoutInflater from = LayoutInflater.from(getContext());
        ViewParent parent = view.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        ItemNoteTabDragBinding inflate = ItemNoteTabDragBinding.inflate(from, (ViewGroup) parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        inflate.setModel(selectedItem);
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(view.getWidth(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(view.getHeight(), 1073741824);
        inflate.title.setText(selectedItem.getTitle());
        root.measure(makeMeasureSpec, makeMeasureSpec2);
        root.layout(0, 0, view.getWidth(), view.getHeight());
        ViewCompat.startDragAndDrop(view, clipData, new View.DragShadowBuilder(root), EditorConstants.LOCAL_STATE_START_SPLIT_SCREEN, 0);
        return true;
    }

    /* renamed from: m */
    public final void m47414m(NoteTabData selectedItem) {
        NoteTabAdapter noteTabAdapter = this.adapter;
        NoteTabAdapter noteTabAdapter2 = null;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        NoteTabData selectedItem2 = noteTabAdapter.getSelectedItem();
        NoteTabAdapter noteTabAdapter3 = this.adapter;
        if (noteTabAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            noteTabAdapter2 = noteTabAdapter3;
        }
        noteTabAdapter2.setSelectedItem(selectedItem);
        TabListener tabListener = this.tabListener;
        if (tabListener != null) {
            tabListener.onSelectedChanged(selectedItem2, selectedItem);
        }
    }

    /* renamed from: n */
    public final void m47415n(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        NoteTabAdapter noteTabAdapter = this.adapter;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        NoteTabData selectedItem = noteTabAdapter.getSelectedItem();
        String uniqueId = selectedItem != null ? selectedItem.getUniqueId() : null;
        if (uniqueId == null) {
            uniqueId = "";
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, uniqueId);
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    public final void notifyDataSetChanged() {
        NoteTabAdapter noteTabAdapter = this.adapter;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        noteTabAdapter.notifyDataSetChanged();
    }

    /* renamed from: o */
    public final void m47416o() {
        NoteTabAdapter noteTabAdapter = this.adapter;
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        RxBaseAction.execute$default(new SaveNoteTabListAction(noteTabAdapter.getItems(), false, 2, defaultConstructorMarker), null, null, null, 7, null);
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        NoteTabAdapter noteTabAdapter = this.adapter;
        LayoutNoteTabBinding layoutNoteTabBinding = null;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        LayoutNoteTabBinding layoutNoteTabBinding2 = this.binding;
        if (layoutNoteTabBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutNoteTabBinding = layoutNoteTabBinding2;
        }
        noteTabAdapter.setListWidth(layoutNoteTabBinding.recyclerView.getMeasuredWidth());
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NotNull View changedView, int visibility) {
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        super.onVisibilityChanged(changedView, visibility);
        TabListener tabListener = this.tabListener;
        if (tabListener != null) {
            tabListener.onTabVisibilityChanged(getVisibility());
        }
    }

    /* renamed from: p */
    public final void m47417p() {
        LayoutNoteTabBinding layoutNoteTabBinding = this.binding;
        if (layoutNoteTabBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutNoteTabBinding = null;
        }
        layoutNoteTabBinding.recyclerView.setOnDragListener(new View.OnDragListener() { // from class: com.onyx.galaxy.note.editor.view.NoteTabLayout$setDragListener$1

            /* renamed from: e, reason: from kotlin metadata */
            public boolean tabItemPositionChanged;

            /* renamed from: f, reason: from kotlin metadata */
            public float lastX;

            /* renamed from: g, reason: from kotlin metadata */
            public final int moveDistanceThreshold = ResManager.INSTANCE.getDimens(C10651R.dimen.doc_tab_drag_move_distance_threshold);

            /* renamed from: a */
            public final int m47420a(int position) {
                LayoutNoteTabBinding layoutNoteTabBinding2;
                layoutNoteTabBinding2 = NoteTabLayout.this.binding;
                if (layoutNoteTabBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutNoteTabBinding2 = null;
                }
                RecyclerView recyclerView = layoutNoteTabBinding2.recyclerView;
                Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
                int childCount = recyclerView.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    if (recyclerView.getChildViewHolder(recyclerView.getChildAt(i)).getBindingAdapterPosition() == position) {
                        return i;
                    }
                }
                return -1;
            }

            /* renamed from: b */
            public final DragHitTestResult m47421b(DragEvent event) {
                LayoutNoteTabBinding layoutNoteTabBinding2;
                layoutNoteTabBinding2 = NoteTabLayout.this.binding;
                if (layoutNoteTabBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutNoteTabBinding2 = null;
                }
                RecyclerView recyclerView = layoutNoteTabBinding2.recyclerView;
                Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
                int childCount = recyclerView.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = recyclerView.getChildAt(i);
                    RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(childAt);
                    Rect rect = new Rect();
                    childAt.getHitRect(rect);
                    if (rect.contains((int) event.getX(), (int) event.getY())) {
                        return new DragHitTestResult(childViewHolder.getBindingAdapterPosition(), i, rect);
                    }
                }
                return new DragHitTestResult(-1, -1, null, 4, null);
            }

            /* renamed from: c */
            public final void m47422c(int selectedPosition, DragEvent event) {
                LayoutNoteTabBinding layoutNoteTabBinding2;
                DragHitTestResult m47421b;
                int position;
                NoteTabAdapter noteTabAdapter;
                NoteTabAdapter noteTabAdapter2;
                NoteTabAdapter noteTabAdapter3;
                NoteTabAdapter noteTabAdapter4;
                NoteTabAdapter noteTabAdapter5;
                layoutNoteTabBinding2 = NoteTabLayout.this.binding;
                NoteTabAdapter noteTabAdapter6 = null;
                if (layoutNoteTabBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutNoteTabBinding2 = null;
                }
                RecyclerView.ItemAnimator itemAnimator = layoutNoteTabBinding2.recyclerView.getItemAnimator();
                if (!(itemAnimator != null ? itemAnimator.isRunning() : false) && Math.abs(event.getX() - this.lastX) >= this.moveDistanceThreshold && (position = (m47421b = m47421b(event)).getPosition()) >= 0 && selectedPosition != position) {
                    int m47420a = m47420a(selectedPosition);
                    this.lastX = event.getX();
                    Debug.INSTANCE.m32037d("NoteTabLayout, oldPosition = " + selectedPosition + ", newPosition = " + position + ", x = " + event.getX());
                    if (selectedPosition < position) {
                        int i = selectedPosition;
                        while (i < position) {
                            noteTabAdapter5 = NoteTabLayout.this.adapter;
                            if (noteTabAdapter5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                noteTabAdapter5 = null;
                            }
                            int i2 = i + 1;
                            ListExtKt.swap(noteTabAdapter5.getItems(), i, i2);
                            i = i2;
                        }
                    } else {
                        int i3 = position + 1;
                        if (i3 <= selectedPosition) {
                            int i4 = selectedPosition;
                            while (true) {
                                noteTabAdapter = NoteTabLayout.this.adapter;
                                if (noteTabAdapter == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                    noteTabAdapter = null;
                                }
                                ListExtKt.swap(noteTabAdapter.getItems(), i4, i4 - 1);
                                if (i4 == i3) {
                                    break;
                                } else {
                                    i4--;
                                }
                            }
                        }
                    }
                    noteTabAdapter2 = NoteTabLayout.this.adapter;
                    if (noteTabAdapter2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        noteTabAdapter2 = null;
                    }
                    if (CollectionKt.isOutOfRange(noteTabAdapter2.getItems(), selectedPosition)) {
                        return;
                    }
                    noteTabAdapter3 = NoteTabLayout.this.adapter;
                    if (noteTabAdapter3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        noteTabAdapter3 = null;
                    }
                    if (CollectionKt.isOutOfRange(noteTabAdapter3.getItems(), position)) {
                        return;
                    }
                    noteTabAdapter4 = NoteTabLayout.this.adapter;
                    if (noteTabAdapter4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    } else {
                        noteTabAdapter6 = noteTabAdapter4;
                    }
                    noteTabAdapter6.notifyItemMoved(selectedPosition, position);
                    m47423d(m47420a, m47421b);
                    this.tabItemPositionChanged = true;
                }
            }

            /* renamed from: d */
            public final void m47423d(int viewIndexByOldPosition, DragHitTestResult hitTestResult) {
                LayoutNoteTabBinding layoutNoteTabBinding2;
                LayoutNoteTabBinding layoutNoteTabBinding3;
                LayoutNoteTabBinding layoutNoteTabBinding4;
                LayoutNoteTabBinding layoutNoteTabBinding5 = null;
                if (viewIndexByOldPosition == 0) {
                    layoutNoteTabBinding4 = NoteTabLayout.this.binding;
                    if (layoutNoteTabBinding4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        layoutNoteTabBinding5 = layoutNoteTabBinding4;
                    }
                    layoutNoteTabBinding5.recyclerView.scrollBy(-hitTestResult.getHitRect().width(), 0);
                    return;
                }
                layoutNoteTabBinding2 = NoteTabLayout.this.binding;
                if (layoutNoteTabBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutNoteTabBinding2 = null;
                }
                int childCount = layoutNoteTabBinding2.recyclerView.getChildCount();
                if (hitTestResult.getViewIndex() == 0 || hitTestResult.getViewIndex() == childCount - 1) {
                    layoutNoteTabBinding3 = NoteTabLayout.this.binding;
                    if (layoutNoteTabBinding3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        layoutNoteTabBinding5 = layoutNoteTabBinding3;
                    }
                    layoutNoteTabBinding5.recyclerView.scrollToPosition(hitTestResult.getPosition());
                }
            }

            /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
            
                r4 = r3.f59343h.selectedDragItem;
             */
            @Override // android.view.View.OnDragListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onDrag(@org.jetbrains.annotations.NotNull android.view.View r4, @org.jetbrains.annotations.NotNull android.view.DragEvent r5) {
                /*
                    r3 = this;
                    java.lang.String r0 = "v"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                    java.lang.String r4 = "event"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r4)
                    boolean r4 = com.onyx.android.sdk.universal.editor.config.EditorConstantsKt.isStarSplitScreenEvent(r5)
                    r0 = 0
                    if (r4 != 0) goto L12
                    return r0
                L12:
                    com.onyx.galaxy.note.editor.view.NoteTabLayout r4 = com.onyx.galaxy.note.editor.view.NoteTabLayout.this
                    com.onyx.android.sdk.replicator.note.db.model.NoteTabData r4 = com.onyx.galaxy.note.editor.view.NoteTabLayout.access$getSelectedDragItem$p(r4)
                    if (r4 != 0) goto L1b
                    return r0
                L1b:
                    com.onyx.galaxy.note.editor.view.NoteTabLayout r1 = com.onyx.galaxy.note.editor.view.NoteTabLayout.this
                    com.onyx.galaxy.note.editor.view.adapter.NoteTabAdapter r1 = com.onyx.galaxy.note.editor.view.NoteTabLayout.access$getAdapter$p(r1)
                    if (r1 != 0) goto L29
                    java.lang.String r1 = "adapter"
                    kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)
                    r1 = 0
                L29:
                    java.util.List r1 = r1.getItems()
                    int r4 = r1.indexOf(r4)
                    int r1 = r5.getAction()
                    r2 = 2
                    if (r1 == r2) goto L48
                    r4 = 4
                    if (r1 == r4) goto L3c
                    goto L4b
                L3c:
                    boolean r4 = r3.tabItemPositionChanged
                    if (r4 == 0) goto L4b
                    com.onyx.galaxy.note.editor.view.NoteTabLayout r4 = com.onyx.galaxy.note.editor.view.NoteTabLayout.this
                    com.onyx.galaxy.note.editor.view.NoteTabLayout.access$saveTabList(r4)
                    r3.tabItemPositionChanged = r0
                    goto L4b
                L48:
                    r3.m47422c(r4, r5)
                L4b:
                    r3 = 1
                    return r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.NoteTabLayout$setDragListener$1.onDrag(android.view.View, android.view.DragEvent):boolean");
            }
        });
    }

    /* renamed from: q */
    public final void m47418q() {
        LayoutNoteTabBinding layoutNoteTabBinding = this.binding;
        NoteTabAdapter noteTabAdapter = null;
        if (layoutNoteTabBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutNoteTabBinding = null;
        }
        TintTextView tintTextView = layoutNoteTabBinding.tabTotal;
        NoteTabAdapter noteTabAdapter2 = this.adapter;
        if (noteTabAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            noteTabAdapter = noteTabAdapter2;
        }
        tintTextView.setText(String.valueOf(noteTabAdapter.getItemCount()));
    }

    public final void setDataList(@NotNull List<NoteTabData> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        NoteTabAdapter noteTabAdapter = this.adapter;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        noteTabAdapter.submitList(list);
        m47418q();
    }

    public final void setDragListener(@NotNull NoteTabManagementPopup.DragListenerDelegateListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.dragListenerDelegateListener = listener;
    }

    public final void setEditorBundleManager(@NotNull EditorBundleManager editorBundleManager) {
        Intrinsics.checkNotNullParameter(editorBundleManager, "editorBundleManager");
        this.editorBundleManager = editorBundleManager;
    }

    public final void setNoteTabListener(@NotNull TabListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.tabListener = listener;
    }

    public final void setSelectedItem(@Nullable NoteTabData item) {
        NoteTabAdapter noteTabAdapter = this.adapter;
        NoteTabAdapter noteTabAdapter2 = null;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        noteTabAdapter.setSelectedItem(item);
        NoteTabManagementPopup noteTabManagementPopup = this.noteTabManagementPopup;
        if (noteTabManagementPopup != null) {
            NoteTabAdapter noteTabAdapter3 = this.adapter;
            if (noteTabAdapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                noteTabAdapter2 = noteTabAdapter3;
            }
            noteTabManagementPopup.setSelectedItem(noteTabAdapter2.getSelectedItem());
        }
    }

    public final void showGuideDivider(boolean isGuideShowing) {
        NoteTabAdapter noteTabAdapter = this.adapter;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        noteTabAdapter.setShowGuideDivider(isGuideShowing);
    }

    public final void showManagementPopup(@NotNull View view) {
        List mutableList;
        Intrinsics.checkNotNullParameter(view, "view");
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        NoteTabAdapter noteTabAdapter = this.adapter;
        NoteTabAdapter noteTabAdapter2 = null;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) noteTabAdapter.getItems());
        NoteTabAdapter noteTabAdapter3 = this.adapter;
        if (noteTabAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter3 = null;
        }
        NoteTabData selectedItem = noteTabAdapter3.getSelectedItem();
        final NoteTabManagementPopup noteTabManagementPopup = new NoteTabManagementPopup(context, mutableList, selectedItem != null ? selectedItem.getUniqueId() : null);
        this.noteTabManagementPopup = noteTabManagementPopup;
        NoteTabAdapter noteTabAdapter4 = this.adapter;
        if (noteTabAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            noteTabAdapter2 = noteTabAdapter4;
        }
        noteTabManagementPopup.setSelectedItem(noteTabAdapter2.getSelectedItem());
        noteTabManagementPopup.setDragListener(this.dragListenerDelegateListener);
        noteTabManagementPopup.setNoteTabListener(new NoteTabManagementPopup.TabManageListener() { // from class: com.onyx.galaxy.note.editor.view.NoteTabLayout$showManagementPopup$1$1
            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void closedOtherTab(@NotNull List<NoteTabData> list) {
                NoteTabManagementPopup.TabManageListener.DefaultImpls.closedOtherTab(this, list);
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onCloseLastTab(@Nullable NoteTabData closedTab) {
                if (closedTab != null) {
                    NoteTabLayout.this.closeTab(closedTab);
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onCloseOtherTab() {
                NoteTabLayout.this.m47410e();
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onCloseTab(@Nullable NoteTabData noteTabData, @NotNull NoteTabData noteTabData2) {
                NoteTabManagementPopup.TabManageListener.DefaultImpls.onCloseTab(this, noteTabData, noteTabData2);
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onSelectedChanged(@Nullable NoteTabData oldTab, @NotNull NoteTabData newTab) {
                Intrinsics.checkNotNullParameter(newTab, "newTab");
                NoteTabLayout.this.m47414m(newTab);
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onTabVisibilityChanged(int visibility) {
                NoteTabLayout.TabListener tabListener;
                tabListener = NoteTabLayout.this.tabListener;
                if (tabListener != null) {
                    tabListener.onTabVisibilityChanged(visibility);
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onToggleTabVisibility() {
                NoteTabLayout.TabListener tabListener;
                tabListener = NoteTabLayout.this.tabListener;
                if (tabListener != null) {
                    tabListener.onToggleTabVisibility();
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NoteTabManagementPopup.TabManageListener
            public void onCloseTab(@NotNull NoteTabData tab) {
                NoteTabAdapter noteTabAdapter5;
                NoteTabAdapter noteTabAdapter6;
                Intrinsics.checkNotNullParameter(tab, "tab");
                NoteTabLayout.this.closeTab(tab);
                NoteTabManagementPopup noteTabManagementPopup2 = noteTabManagementPopup;
                noteTabAdapter5 = NoteTabLayout.this.adapter;
                NoteTabAdapter noteTabAdapter7 = null;
                if (noteTabAdapter5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    noteTabAdapter5 = null;
                }
                noteTabManagementPopup2.submitList(noteTabAdapter5.getItems());
                NoteTabManagementPopup noteTabManagementPopup3 = noteTabManagementPopup;
                noteTabAdapter6 = NoteTabLayout.this.adapter;
                if (noteTabAdapter6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                } else {
                    noteTabAdapter7 = noteTabAdapter6;
                }
                noteTabManagementPopup3.setSelectedItem(noteTabAdapter7.getSelectedItem());
            }
        });
        noteTabManagementPopup.showAsDropDown(view);
        m47415n(OnyxStatisticConstant.ID_CLICK_NOTE_TAB);
    }

    public /* synthetic */ NoteTabLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    public final void setSelectedItem(@NotNull String itemId) {
        Intrinsics.checkNotNullParameter(itemId, "itemId");
        NoteTabAdapter noteTabAdapter = this.adapter;
        NoteTabAdapter noteTabAdapter2 = null;
        if (noteTabAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            noteTabAdapter = null;
        }
        noteTabAdapter.setSelectedItem(itemId);
        NoteTabManagementPopup noteTabManagementPopup = this.noteTabManagementPopup;
        if (noteTabManagementPopup != null) {
            NoteTabAdapter noteTabAdapter3 = this.adapter;
            if (noteTabAdapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                noteTabAdapter2 = noteTabAdapter3;
            }
            noteTabManagementPopup.setSelectedItem(noteTabAdapter2.getSelectedItem());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"SetJavaScriptEnabled"})
    public NoteTabLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        m47411g();
    }

    public /* synthetic */ NoteTabLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
