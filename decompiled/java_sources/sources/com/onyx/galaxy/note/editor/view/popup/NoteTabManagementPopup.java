package com.onyx.galaxy.note.editor.view.popup;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.util.ItemClickUtilsKt;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.RecyclerViewKt;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.common.view.MaxHeightFrameLayout;
import com.onyx.galaxy.note.databinding.ItemNoteTabManagementBinding;
import com.onyx.galaxy.note.databinding.PopupTabManagmentBinding;
import com.onyx.galaxy.note.editor.view.NoteTabLayout;
import com.onyx.galaxy.note.editor.view.popup.NoteTabManagementPopup;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0003789B)\u0012\u0006\u00104\u001a\u000203\u0012\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\f0 \u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u001d¢\u0006\u0004\b5\u00106J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016J\u0014\u0010\u000e\u001a\u00020\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u0010\u0010\u0010\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\fJ\u0012\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\u0018\u0010\u001c\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0002R\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00020\f0 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010$R\u001b\u0010*\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010'\u001a\u0004\b(\u0010)R\u0018\u0010-\u001a\u00060+R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010,R\u0018\u0010/\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101¨\u0006:"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setNoteTabListener", "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;", "setDragListener", "Landroid/view/View;", "view", "setContentView", "", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "list", "submitList", "item", "setSelectedItem", Constants.ELEMNAME_ANCHOR_STRING, "showAsDropDown", "B", "u", "x", "", "E", "G", "s", "Landroid/view/ViewGroup;", "parent", "r", "", "eventId", "F", "", "q", "Ljava/util/List;", "tabList", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "noteId", "Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;", "Lkotlin/Lazy;", "t", "()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;", "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;", "tabAdapter", "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;", "tabListener", "v", "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;", "dragListenerDelegateListener", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V", "DragListenerDelegateListener", "a", "TabManageListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class NoteTabManagementPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public List<NoteTabData> tabList;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public String noteId;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final C12426a tabAdapter;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public TabManageListener tabListener;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public DragListenerDelegateListener dragListenerDelegateListener;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;", "", "onDragData", "", "dragEvent", "Landroid/view/DragEvent;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface DragListenerDelegateListener {
        boolean onDragData(@NotNull DragEvent dragEvent);
    }

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;", "Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;", "onCloseTab", "", "tab", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface TabManageListener extends NoteTabLayout.TabListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void closedOtherTab(@NotNull TabManageListener tabManageListener, @NotNull List<NoteTabData> closedTabs) {
                Intrinsics.checkNotNullParameter(closedTabs, "closedTabs");
                NoteTabLayout.TabListener.DefaultImpls.closedOtherTab(tabManageListener, closedTabs);
            }

            public static void onCloseTab(@NotNull TabManageListener tabManageListener, @Nullable NoteTabData noteTabData, @NotNull NoteTabData prepareOpenTab) {
                Intrinsics.checkNotNullParameter(prepareOpenTab, "prepareOpenTab");
                NoteTabLayout.TabListener.DefaultImpls.onCloseTab(tabManageListener, noteTabData, prepareOpenTab);
            }
        }

        void onCloseTab(@NotNull NoteTabData tab);
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.popup.NoteTabManagementPopup$a */
    /* loaded from: classes9.dex */
    public final class C12426a extends BaseQuickAdapter<NoteTabData, DataBindingHolder<ItemNoteTabManagementBinding>> {

        /* renamed from: r */
        @Nullable
        public NoteTabData f60355r;

        public C12426a() {
            super(null, 1, null);
        }

        @Nullable
        /* renamed from: l */
        public final NoteTabData m49110l() {
            return this.f60355r;
        }

        /* renamed from: m */
        public final void m49111m(@Nullable NoteTabData noteTabData) {
            this.f60355r = noteTabData;
            notifyDataSetChanged();
        }

        /* renamed from: n */
        public final void m49112n(@Nullable NoteTabData noteTabData) {
            this.f60355r = noteTabData;
        }

        @Override // com.chad.library.adapter4.BaseQuickAdapter
        public void onBindViewHolder(@NotNull DataBindingHolder<ItemNoteTabManagementBinding> holder, int i, @Nullable NoteTabData noteTabData) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            if (noteTabData == null) {
                return;
            }
            holder.getBinding().setModel(noteTabData);
            View root = holder.getBinding().getRoot();
            String uniqueId = noteTabData.getUniqueId();
            NoteTabData noteTabData2 = this.f60355r;
            root.setSelected(Intrinsics.areEqual(uniqueId, noteTabData2 != null ? noteTabData2.getUniqueId() : null));
            holder.getBinding().executePendingBindings();
        }

        @Override // com.chad.library.adapter4.BaseQuickAdapter
        @NotNull
        public DataBindingHolder<ItemNoteTabManagementBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(parent, "parent");
            ItemNoteTabManagementBinding inflate = ItemNoteTabManagementBinding.inflate(LayoutInflater.from(context), parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
            return new DataBindingHolder<>(inflate);
        }
    }

    public /* synthetic */ NoteTabManagementPopup(Context context, List list, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, list, (i & 4) != 0 ? null : str);
    }

    /* renamed from: A */
    public static final boolean m49087A(NoteTabManagementPopup this$0, BaseQuickAdapter it2, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Intrinsics.checkNotNullParameter(view, "view");
        NoteTabData noteTabData = (NoteTabData) it2.getItem(i);
        if (noteTabData == null) {
            return false;
        }
        return this$0.m49102E(noteTabData, view);
    }

    /* renamed from: C */
    public static final boolean m49088C(NoteTabManagementPopup this$0, View view, DragEvent dragEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FrameLayout flContentWrapper = this$0.m49107t().flContentWrapper;
        Intrinsics.checkNotNullExpressionValue(flContentWrapper, "flContentWrapper");
        if (ViewKt.globalVisibleRectF(flContentWrapper).contains(dragEvent.getX(), dragEvent.getY())) {
            return true;
        }
        DragListenerDelegateListener dragListenerDelegateListener = this$0.dragListenerDelegateListener;
        if (dragListenerDelegateListener == null) {
            return false;
        }
        Intrinsics.checkNotNull(dragEvent);
        return dragListenerDelegateListener.onDragData(dragEvent);
    }

    /* renamed from: D */
    public static final void m49089D(NoteTabManagementPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: v */
    public static final void m49097v(NoteTabManagementPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TabManageListener tabManageListener = this$0.tabListener;
        if (tabManageListener != null) {
            tabManageListener.onCloseOtherTab();
        }
        this$0.dismiss();
        this$0.m49103F(OnyxStatisticConstant.ID_CLICK_NOTE_TAB_CONFIRM);
    }

    /* renamed from: w */
    public static final void m49098w(NoteTabManagementPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NoteConfigManager.INSTANCE.getNoteEditConfigInfo().toggleTabShowOption();
        TabManageListener tabManageListener = this$0.tabListener;
        if (tabManageListener != null) {
            tabManageListener.onToggleTabVisibility();
        }
        this$0.dismiss();
        this$0.m49103F(OnyxStatisticConstant.ID_CLICK_NOTE_TAB_CANCEL);
    }

    /* renamed from: y */
    public static final void m49099y(NoteTabManagementPopup this$0, BaseQuickAdapter it2, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        NoteTabData noteTabData = (NoteTabData) it2.getItem(i);
        if (noteTabData == null) {
            return;
        }
        NoteTabData m49110l = this$0.tabAdapter.m49110l();
        this$0.tabAdapter.m49111m(noteTabData);
        TabManageListener tabManageListener = this$0.tabListener;
        if (tabManageListener != null) {
            tabManageListener.onSelectedChanged(m49110l, noteTabData);
        }
    }

    /* renamed from: z */
    public static final void m49100z(NoteTabManagementPopup this$0, BaseQuickAdapter it2, View v, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Intrinsics.checkNotNullParameter(v, "v");
        NoteTabData noteTabData = (NoteTabData) it2.getItem(i);
        if (noteTabData == null) {
            return;
        }
        this$0.m49104G(noteTabData, v);
    }

    /* renamed from: B */
    public final void m49101B() {
        View root = m49107t().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setWidth(-1);
        setHeight(-1);
        setBackgroundDrawable(null);
        setFocusable(true);
        m49108u();
        m49109x();
        m49107t().flContainer.setOnDragListener(new View.OnDragListener() { // from class: com.sunia.HTREnginev2.m2k
            @Override // android.view.View.OnDragListener
            public final boolean onDrag(View view, DragEvent dragEvent) {
                boolean m49088C;
                m49088C = NoteTabManagementPopup.m49088C(NoteTabManagementPopup.this, view, dragEvent);
                return m49088C;
            }
        });
        m49107t().flContainer.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n2k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTabManagementPopup.m49089D(NoteTabManagementPopup.this, view);
            }
        });
    }

    /* renamed from: E */
    public final boolean m49102E(NoteTabData item, View view) {
        Intent intent = new Intent();
        intent.putExtra(EditorConstants.ARGS_DOC_ID, item.getUniqueId());
        ClipData clipData = new ClipData("dragTab", new String[]{FileExtensionUtils.DEFAULT_MIMETYPE_TEXT}, new ClipData.Item(intent));
        ViewParent parent = view.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        View m49105r = m49105r(item, (ViewGroup) parent);
        m49105r.measure(View.MeasureSpec.makeMeasureSpec(view.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getHeight(), 1073741824));
        m49105r.layout(0, 0, view.getWidth(), view.getHeight());
        ViewCompat.startDragAndDrop(view, clipData, new View.DragShadowBuilder(m49105r), EditorConstants.LOCAL_STATE_START_SPLIT_SCREEN, 0);
        return true;
    }

    /* renamed from: F */
    public final void m49103F(String eventId) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String str = this.noteId;
        if (str == null) {
            str = "";
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_ID, str);
        StatisticsBundle.INSTANCE.postEvent(new OnyxStatisticEvent(eventId, linkedHashMap));
    }

    /* renamed from: G */
    public final void m49104G(NoteTabData item, View view) {
        new NoteTabOptionsPopup(getContext(), item).setTabListener(new TabManageListener() { // from class: com.onyx.galaxy.note.editor.view.popup.NoteTabManagementPopup$showMoreOption$1
            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void closedOtherTab(@NotNull List<NoteTabData> list) {
                NoteTabManagementPopup.TabManageListener.DefaultImpls.closedOtherTab(this, list);
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onCloseLastTab(@Nullable NoteTabData closedTab) {
                NoteTabManagementPopup.TabManageListener tabManageListener;
                tabManageListener = NoteTabManagementPopup.this.tabListener;
                if (tabManageListener != null) {
                    tabManageListener.onCloseLastTab(closedTab);
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onCloseOtherTab() {
                NoteTabManagementPopup.TabManageListener tabManageListener;
                tabManageListener = NoteTabManagementPopup.this.tabListener;
                if (tabManageListener != null) {
                    tabManageListener.onCloseOtherTab();
                }
                NoteTabManagementPopup.this.m49106s();
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onCloseTab(@Nullable NoteTabData noteTabData, @NotNull NoteTabData noteTabData2) {
                NoteTabManagementPopup.TabManageListener.DefaultImpls.onCloseTab(this, noteTabData, noteTabData2);
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onSelectedChanged(@Nullable NoteTabData oldTab, @NotNull NoteTabData newTab) {
                NoteTabManagementPopup.TabManageListener tabManageListener;
                Intrinsics.checkNotNullParameter(newTab, "newTab");
                tabManageListener = NoteTabManagementPopup.this.tabListener;
                if (tabManageListener != null) {
                    tabManageListener.onSelectedChanged(oldTab, newTab);
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onTabVisibilityChanged(int visibility) {
                NoteTabManagementPopup.TabManageListener tabManageListener;
                tabManageListener = NoteTabManagementPopup.this.tabListener;
                if (tabManageListener != null) {
                    tabManageListener.onTabVisibilityChanged(visibility);
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.NoteTabLayout.TabListener
            public void onToggleTabVisibility() {
                NoteTabManagementPopup.TabManageListener tabManageListener;
                tabManageListener = NoteTabManagementPopup.this.tabListener;
                if (tabManageListener != null) {
                    tabManageListener.onToggleTabVisibility();
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.popup.NoteTabManagementPopup.TabManageListener
            public void onCloseTab(@NotNull NoteTabData tab) {
                NoteTabManagementPopup.TabManageListener tabManageListener;
                Intrinsics.checkNotNullParameter(tab, "tab");
                tabManageListener = NoteTabManagementPopup.this.tabListener;
                if (tabManageListener != null) {
                    tabManageListener.onCloseTab(tab);
                }
                NoteTabManagementPopup.this.m49106s();
            }
        }).showAsDropDown(view, 0, 0, 0);
    }

    /* renamed from: r */
    public final View m49105r(NoteTabData item, ViewGroup parent) {
        ItemNoteTabManagementBinding inflate = ItemNoteTabManagementBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        inflate.setModel(item);
        inflate.executePendingBindings();
        inflate.more.setVisibility(8);
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    /* renamed from: s */
    public final void m49106s() {
        if (this.tabList.size() <= 1) {
            dismiss();
        }
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void setContentView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.setContentView(view);
    }

    public final void setDragListener(@Nullable DragListenerDelegateListener listener) {
        this.dragListenerDelegateListener = listener;
    }

    public final void setNoteTabListener(@NotNull TabManageListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.tabListener = listener;
    }

    public final void setSelectedItem(@Nullable final NoteTabData item) {
        this.tabAdapter.m49111m(item);
        ViewKt.postSelf(m49107t().listview, new Function1<TintRecycleView, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.NoteTabManagementPopup$setSelectedItem$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TintRecycleView tintRecycleView) {
                invoke2(tintRecycleView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TintRecycleView it2) {
                NoteTabManagementPopup.C12426a c12426a;
                int indexOf;
                Intrinsics.checkNotNullParameter(it2, "it");
                c12426a = NoteTabManagementPopup.this.tabAdapter;
                indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends NoteTabData>) ((List<? extends Object>) c12426a.getItems()), item);
                it2.scrollToPosition(indexOf);
            }
        });
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(@Nullable View anchor) {
        setAnimationStyle(anchor != null ? ViewExtKt.isLayoutDirectionRtl(anchor) : false ? C10651R.style.popupWindowLeftAnimation : C10651R.style.popupWindowRightAnimation);
        super.showAsDropDown(anchor);
        if (anchor != null) {
            m49107t().flContentWrapper.setTranslationY((anchor.getBottom() - m49107t().flContentWrapper.getTop()) - m49107t().flContentWrapper.getTranslationY());
        }
    }

    public final void submitList(@NotNull List<NoteTabData> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        this.tabList = arrayList;
        CollectionKt.safeAddAll(arrayList, list);
        this.tabAdapter.submitList(this.tabList);
    }

    /* renamed from: t */
    public final PopupTabManagmentBinding m49107t() {
        return (PopupTabManagmentBinding) this.binding.getValue();
    }

    /* renamed from: u */
    public final void m49108u() {
        m49107t().toggleTab.setText(NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getTabShowOption().get() ? C10651R.string.hide_note_tab : C10651R.string.show_note_tab);
        m49107t().closeTab.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o2k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTabManagementPopup.m49097v(NoteTabManagementPopup.this, view);
            }
        });
        m49107t().toggleTab.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.p2k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoteTabManagementPopup.m49098w(NoteTabManagementPopup.this, view);
            }
        });
        ViewKt.setViewVisibleOrGone(m49107t().llTabsOperations, this.tabList.size() > 1);
    }

    /* renamed from: x */
    public final void m49109x() {
        MaxHeightFrameLayout maxHeightFrameLayout = m49107t().listViewContainer;
        ResManager resManager = ResManager.INSTANCE;
        maxHeightFrameLayout.setMaxHeight(resManager.getDimension(C7384R.dimen.dp_316));
        this.tabAdapter.submitList(this.tabList);
        ItemClickUtilsKt.setOnDebouncedItemClick$default(this.tabAdapter, 0L, new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.j2k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteTabManagementPopup.m49099y(NoteTabManagementPopup.this, baseQuickAdapter, view, i);
            }
        }, 1, null);
        ItemClickUtilsKt.addOnDebouncedChildClick$default(this.tabAdapter, C10651R.id.more, 0L, new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.sunia.HTREnginev2.k2k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NoteTabManagementPopup.m49100z(NoteTabManagementPopup.this, baseQuickAdapter, view, i);
            }
        }, 2, null);
        this.tabAdapter.setOnItemLongClickListener(new BaseQuickAdapter.OnItemLongClickListener() { // from class: com.sunia.HTREnginev2.l2k
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemLongClickListener
            public final boolean onLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                boolean m49087A;
                m49087A = NoteTabManagementPopup.m49087A(NoteTabManagementPopup.this, baseQuickAdapter, view, i);
                return m49087A;
            }
        });
        m49107t().listview.setLayoutManager(new LinearLayoutManager(getContext()));
        m49107t().listview.setAdapter(this.tabAdapter);
        TintRecycleView listview = m49107t().listview;
        Intrinsics.checkNotNullExpressionValue(listview, "listview");
        RecyclerViewKt.addMaterialItemDecoration$default(listview, getContext(), 1, resManager.getDimens(C7384R.dimen.dp_8), false, 8, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteTabManagementPopup(@NotNull final Context context, @NotNull List<NoteTabData> tabList, @Nullable String str) {
        super(context, null, 2, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tabList, "tabList");
        this.tabList = tabList;
        this.noteId = str;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupTabManagmentBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.NoteTabManagementPopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupTabManagmentBinding invoke() {
                return PopupTabManagmentBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        this.tabAdapter = new C12426a();
        m49101B();
        m49103F(OnyxStatisticConstant.ID_VIEW_NOTE_TAB_POPUP);
    }
}
