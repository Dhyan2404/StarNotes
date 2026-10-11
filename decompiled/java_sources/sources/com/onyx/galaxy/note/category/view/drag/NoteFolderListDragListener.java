package com.onyx.galaxy.note.category.view.drag;

import android.annotation.SuppressLint;
import android.content.ClipDescription;
import android.view.DragEvent;
import android.view.View;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.SortData;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.utils.OrderListUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.DeleteSortAction;
import com.onyx.galaxy.note.category.action.MoveNoteAction;
import com.onyx.galaxy.note.category.action.SaveSortAction;
import com.onyx.galaxy.note.category.action.UpdateNoteExpandStatusAction;
import com.onyx.galaxy.note.category.view.adapter.NoteListAdapter;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000b\u0018\u0000 *2\u00020\u0001:\u0001*B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001d¢\u0006\u0004\b(\u0010)J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J \u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002J \u0010\u000f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0018\u0010\u0010\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0003J$\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u00142\u0006\u0010\u0011\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00162\u0006\u0010\n\u001a\u00020\u0016H\u0002J\u0018\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u001a\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u001b\u001a\u00020\u0006H\u0002R\u0014\u0010\u001f\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b!\u0010#R\u001b\u0010&\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\"\u001a\u0004\b%\u0010#R\u001b\u0010'\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\"\u001a\u0004\b\u0005\u0010#¨\u0006+"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener;", "Landroid/view/View$OnDragListener;", "Landroid/view/View;", "itemView", "Landroid/view/DragEvent;", "e", "", "onDrag", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "originNoteModel", "targetNoteModel", "", "dragState", "", C6999h.f39688c, "i", "j", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "", "moveNotes", "Lio/reactivex/rxjava3/core/Observable;", "b", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "note", C6998g.f39679a, "a", "c", "resetAlpha", C4921e.f26537n, "Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;", "Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;", "adapter", "", C6997f.f39671c, "Lkotlin/Lazy;", "()F", "dragItemAlpha", "d", "afterPercent", "beforePercent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteFolderListDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteFolderListDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,313:1\n1549#2:314\n1620#2,3:315\n1549#2:318\n1620#2,3:319\n350#2,7:322\n256#3,2:329\n256#3,2:331\n256#3,2:333\n256#3,2:335\n256#3,2:337\n256#3,2:339\n*S KotlinDebug\n*F\n+ 1 NoteFolderListDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener\n*L\n196#1:314\n196#1:315,3\n248#1:318\n248#1:319,3\n258#1:322,7\n295#1:329,2\n297#1:331,2\n299#1:333,2\n305#1:335,2\n306#1:337,2\n307#1:339,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteFolderListDragListener implements View.OnDragListener {

    /* renamed from: i */
    @NotNull
    public static final String f55601i = "NoteFolderListDragListener";

    /* renamed from: j */
    public static final int f55602j = 1;

    /* renamed from: k */
    public static final int f55603k = 2;

    /* renamed from: l */
    public static final int f55604l = 3;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final NoteListAdapter adapter;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy dragItemAlpha;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy afterPercent;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy beforePercent;

    /* renamed from: com.onyx.galaxy.note.category.view.drag.NoteFolderListDragListener$a */
    /* loaded from: classes9.dex */
    public static final class C11462a<T, R> implements Function {

        /* renamed from: e */
        public static final C11462a<T, R> f55609e = new C11462a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull DeleteSortAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.view.drag.NoteFolderListDragListener$b */
    /* loaded from: classes9.dex */
    public static final class C11463b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<NoteModelBean> f55611f;

        public C11463b(List<NoteModelBean> list) {
            this.f55611f = list;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m44595a(boolean z) {
            return NoteFolderListDragListener.this.m44584b(z, this.f55611f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m44595a(((Boolean) obj).booleanValue());
        }
    }

    @SourceDebugExtension({"SMAP\nNoteFolderListDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteFolderListDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$moveIn$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,313:1\n350#2,7:314\n*S KotlinDebug\n*F\n+ 1 NoteFolderListDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderListDragListener$moveIn$2\n*L\n223#1:314,7\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.view.drag.NoteFolderListDragListener$c */
    /* loaded from: classes9.dex */
    public static final class C11464c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TreeNode<NoteModelBean> f55613f;

        /* renamed from: g */
        public final /* synthetic */ NoteModelBean f55614g;

        public C11464c(TreeNode<NoteModelBean> treeNode, NoteModelBean noteModelBean) {
            this.f55613f = treeNode;
            this.f55614g = noteModelBean;
        }

        /* renamed from: a */
        public final void m44596a(boolean z) {
            List listOf;
            if (!z) {
                ToastUtils.INSTANCE.show(C10651R.string.move_folder_note_conflicted, true);
                return;
            }
            List<NoteModelBean> items = NoteFolderListDragListener.this.adapter.getItems();
            NoteModelBean noteModelBean = this.f55614g;
            Iterator<NoteModelBean> it2 = items.iterator();
            int i = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i = -1;
                    break;
                } else if (Intrinsics.areEqual(it2.next().getUniqueId(), noteModelBean.getUniqueId())) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != -1) {
                NoteFolderListDragListener.this.adapter.removeAt(i);
            }
            listOf = CollectionsKt__CollectionsJVMKt.listOf(this.f55613f.getData().getUniqueId());
            RxBaseAction.execute$default(new UpdateNoteExpandStatusAction(listOf, 1), null, null, null, 7, null);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44596a(((Boolean) obj).booleanValue());
        }
    }

    public NoteFolderListDragListener(@NotNull NoteListAdapter adapter) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.adapter = adapter;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderListDragListener$dragItemAlpha$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_item_alpha, 1, 1));
            }
        });
        this.dragItemAlpha = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderListDragListener$afterPercent$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_after_percent, 1, 1));
            }
        });
        this.afterPercent = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderListDragListener$beforePercent$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_before_percent, 1, 1));
            }
        });
        this.beforePercent = lazy3;
    }

    /* renamed from: l */
    public static /* synthetic */ void m44582l(NoteFolderListDragListener noteFolderListDragListener, View view, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        noteFolderListDragListener.m44593k(view, z);
    }

    /* renamed from: a */
    public final boolean m44583a(SyncNoteModel originNoteModel, final SyncNoteModel targetNoteModel) {
        if (!targetNoteModel.isLibrary()) {
            return false;
        }
        if (originNoteModel.isDocument()) {
            return true;
        }
        NoteTreeBundle noteTreeBundle = NoteTreeBundle.INSTANCE;
        TreeNode<NoteModelBean> findNode = noteTreeBundle.getFolderRootNote().findNode(originNoteModel.getUniqueId());
        TreeNode<NoteModelBean> findNode2 = noteTreeBundle.getFolderRootNote().findNode(targetNoteModel.getUniqueId());
        if (findNode == null || findNode2 == null) {
            return false;
        }
        return findNode.canAdopt(findNode2, 7) && !(findNode.findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderListDragListener$checkCanDragIn$isAncestors$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getId(), SyncNoteModel.this.getUniqueId()));
            }
        }) != null) && findNode.canAdopt(findNode2, 6);
    }

    /* renamed from: b */
    public final Observable<Boolean> m44584b(boolean result, List<NoteModelBean> moveNotes) {
        int collectionSizeOrDefault;
        List<String> mutableList;
        if (!result) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNull(just);
            return just;
        }
        SortData sortData = new SortData();
        String uniqueId = NoteTreeBundle.INSTANCE.activeFilterInfo().getUniqueId();
        sortData.setFilterId(uniqueId);
        sortData.setSubFilterId(uniqueId);
        List<NoteModelBean> list = moveNotes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteModelBean) it2.next()).getUniqueId());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        sortData.setContentIds(mutableList);
        Observable map = new DeleteSortAction(sortData).build().map(C11462a.f55609e);
        Intrinsics.checkNotNull(map);
        return map;
    }

    /* renamed from: c */
    public final void m44585c(View itemView, int dragState) {
        View findViewById = itemView.findViewById(C10651R.id.v_drag_in);
        if (findViewById != null) {
            findViewById.setVisibility(dragState == 2 ? 0 : 8);
        }
        View findViewById2 = itemView.findViewById(C10651R.id.v_drag_bottom);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        findViewById2.setVisibility(dragState == 3 ? 0 : 8);
        View findViewById3 = itemView.findViewById(C10651R.id.v_drag_top);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        findViewById3.setVisibility(dragState == 1 ? 0 : 8);
        itemView.invalidate();
    }

    /* renamed from: d */
    public final float m44586d() {
        return ((Number) this.afterPercent.getValue()).floatValue();
    }

    /* renamed from: e */
    public final float m44587e() {
        return ((Number) this.beforePercent.getValue()).floatValue();
    }

    /* renamed from: f */
    public final float m44588f() {
        return ((Number) this.dragItemAlpha.getValue()).floatValue();
    }

    /* renamed from: g */
    public final int m44589g(SyncNoteModel note) {
        Iterator<NoteModelBean> it2 = this.adapter.getItems().iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(it2.next().getUniqueId(), note.getUniqueId())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: h */
    public final void m44590h(NoteModelBean originNoteModel, NoteModelBean targetNoteModel, int dragState) {
        if (dragState == 2) {
            m44592j(targetNoteModel, originNoteModel);
        } else {
            m44591i(originNoteModel, targetNoteModel, dragState);
        }
    }

    /* renamed from: i */
    public final void m44591i(NoteModelBean originNoteModel, NoteModelBean targetNoteModel, int dragState) {
        int lastIndex;
        List mutableList;
        Map mapOf;
        int collectionSizeOrDefault;
        int m44589g = m44589g(originNoteModel);
        int m44589g2 = m44589g(targetNoteModel);
        if (m44589g < 0 || m44589g2 < 0) {
            return;
        }
        if (m44589g + 1 == m44589g2 && dragState == 1) {
            return;
        }
        if (m44589g - 1 == m44589g2 && dragState == 3) {
            return;
        }
        NoteModelBean item = this.adapter.getItem(m44589g);
        Intrinsics.checkNotNull(item);
        NoteModelBean noteModelBean = item;
        originNoteModel.getSortModel().setOrderIndex(-1.0f);
        targetNoteModel.getSortModel().setOrderIndex(-1.0f);
        this.adapter.removeAt(m44589g);
        int m44589g3 = m44589g(targetNoteModel);
        if (dragState == 1) {
            this.adapter.add(m44589g3, noteModelBean);
        } else {
            int i = m44589g3 + 1;
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this.adapter.getItems());
            if (i > lastIndex) {
                this.adapter.add(noteModelBean);
            } else {
                this.adapter.add(i, noteModelBean);
            }
        }
        OrderListUtils orderListUtils = OrderListUtils.INSTANCE;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.adapter.getItems());
        List reorderIndex = orderListUtils.reorderIndex(mutableList, new Function1<NoteModelBean, Float>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderListDragListener$move$reorderList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull NoteModelBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Float.valueOf(it2.getSortModel().getOrderIndex());
            }
        }, new Function2<NoteModelBean, Float, Unit>() { // from class: com.onyx.galaxy.note.category.view.drag.NoteFolderListDragListener$move$reorderList$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(NoteModelBean noteModelBean2, Float f) {
                invoke(noteModelBean2, f.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull NoteModelBean node, float f) {
                Intrinsics.checkNotNullParameter(node, "node");
                node.getSortModel().setOrderIndex(f);
            }
        });
        NoteListAdapter noteListAdapter = this.adapter;
        int itemCount = noteListAdapter.getItemCount();
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m61535to("pay_load_key_refresh_view", f55601i));
        noteListAdapter.notifyItemRangeChanged(0, itemCount, mapOf);
        List list = reorderIndex;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteModelBean) it2.next()).getSortModel());
        }
        new SaveSortAction(arrayList).build().subscribe();
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: j */
    public final void m44592j(NoteModelBean targetNoteModel, NoteModelBean originNoteModel) {
        List mutableListOf;
        TreeNode<NoteModelBean> findNode = NoteTreeBundle.INSTANCE.getFolderRootNote().findNode(targetNoteModel.getUniqueId());
        if (findNode != null) {
            originNoteModel.getSortModel().setOrderIndex(-1.0f);
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(originNoteModel);
            new MoveNoteAction(mutableListOf, findNode).build().flatMap(new C11463b(mutableListOf)).subscribe(new C11464c(findNode, originNoteModel));
        } else {
            LogUtils.eTag(f55601i, "handleDropFromFolder not found targetTreeNode,id:" + targetNoteModel.getUniqueId());
        }
    }

    /* renamed from: k */
    public final void m44593k(View itemView, boolean resetAlpha) {
        View findViewById = itemView.findViewById(C10651R.id.v_drag_in);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        View findViewById2 = itemView.findViewById(C10651R.id.v_drag_bottom);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        findViewById2.setVisibility(8);
        View findViewById3 = itemView.findViewById(C10651R.id.v_drag_top);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        findViewById3.setVisibility(8);
        if (resetAlpha) {
            itemView.setAlpha(m44588f());
        }
        itemView.invalidate();
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(@NotNull View itemView, @NotNull DragEvent e) {
        float height;
        float height2;
        float y;
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(e, "e");
        if (e.getAction() == 4) {
            m44582l(this, itemView, false, 2, null);
            return true;
        }
        ClipDescription clipDescription = e.getClipDescription();
        if (!Intrinsics.areEqual(clipDescription != null ? clipDescription.getLabel() : null, NoteListAdapter.TAG)) {
            return false;
        }
        Object localState = e.getLocalState();
        Intrinsics.checkNotNull(localState, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.bean.NoteModelBean");
        NoteModelBean noteModelBean = (NoteModelBean) localState;
        Object tag = itemView.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.bean.NoteModelBean");
        NoteModelBean noteModelBean2 = (NoteModelBean) tag;
        boolean m44583a = m44583a(noteModelBean, noteModelBean2);
        if (this.adapter.getDisplayType() == 1) {
            height = itemView.getWidth() * m44586d();
            height2 = itemView.getWidth() * m44587e();
            y = e.getX();
        } else {
            height = itemView.getHeight() * m44586d();
            height2 = itemView.getHeight() * m44587e();
            y = e.getY();
        }
        int action = e.getAction();
        if (action == 1) {
            return !Intrinsics.areEqual(noteModelBean.getUniqueId(), noteModelBean2.getUniqueId());
        }
        int i = 3;
        if (action == 2) {
            if (y <= height2) {
                m44585c(itemView, 1);
            } else if (y >= height) {
                m44585c(itemView, 3);
            } else if (m44583a) {
                m44585c(itemView, 2);
            } else {
                m44582l(this, itemView, false, 2, null);
            }
            return true;
        }
        if (action != 3) {
            if (action != 5) {
                if (action != 6) {
                    return false;
                }
                m44582l(this, itemView, false, 2, null);
            }
            return true;
        }
        if (y <= height2) {
            i = 1;
        } else if (y < height) {
            i = 2;
        }
        if (this.adapter.getSortBy() == SortBy.Manual || i == 2) {
            m44590h(noteModelBean, noteModelBean2, i);
            m44593k(itemView, true);
            return true;
        }
        ToastUtils.INSTANCE.show(C10651R.string.note_sort_enable_custom, true);
        m44593k(itemView, true);
        return true;
    }
}
