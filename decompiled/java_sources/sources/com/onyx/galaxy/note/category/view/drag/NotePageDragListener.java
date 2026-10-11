package com.onyx.galaxy.note.category.view.drag;

import android.annotation.SuppressLint;
import android.content.ClipDescription;
import android.view.DragEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.SortBy;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.SortData;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.DeleteSortAction;
import com.onyx.galaxy.note.category.action.MoveNoteAction;
import com.onyx.galaxy.note.category.action.UpdateNoteExpandStatusAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.NotePageBean;
import com.onyx.galaxy.note.category.event.DragNotePageEvent;
import com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter;
import com.onyx.galaxy.note.category.view.drag.NotePageDragListener;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
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
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 22\u00020\u0001:\u00012B\u000f\u0012\u0006\u0010$\u001a\u00020\"¢\u0006\u0004\b0\u00101J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J0\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0002J \u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\rH\u0002J \u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\rH\u0002J \u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\rH\u0002J\u0018\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0003J$\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u001b2\u0006\u0010\u0018\u001a\u00020\u00062\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0019H\u0002J\u0018\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u001dH\u0002J\u0018\u0010\u0005\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\rH\u0002J\u001a\u0010 \u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u001f\u001a\u00020\u0006H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010#R\u001b\u0010)\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u001b\u0010+\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010&\u001a\u0004\b%\u0010(R\u001b\u0010-\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010&\u001a\u0004\b*\u0010(R\u001b\u0010/\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010&\u001a\u0004\b,\u0010.¨\u00063"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;", "Landroid/view/View$OnDragListener;", "Landroid/view/View;", "itemView", "Landroid/view/DragEvent;", "e", "", "onDrag", "canDragIn", "", "beforeThreshold", "afterThreshold", "currLocal", "", "j", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "originNoteModel", "targetNoteModel", "dragState", "", C4921e.f26537n, "l", GoogleApiAvailabilityLight.f29016b, "m", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "", "moveNotes", "Lio/reactivex/rxjava3/core/Observable;", "d", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "c", "resetAlpha", "r", "q", "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;", "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;", "adapter", C6997f.f39671c, "Lkotlin/Lazy;", "i", "()F", "dragItemAlpha", C6998g.f39679a, "afterPercent", C6999h.f39688c, "beforePercent", "()I", "dragInterval", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotePageDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NotePageDragListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,320:1\n1549#2:321\n1620#2,3:322\n256#3,2:325\n256#3,2:327\n256#3,2:329\n256#3,2:331\n256#3,2:333\n256#3,2:335\n*S KotlinDebug\n*F\n+ 1 NotePageDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NotePageDragListener\n*L\n254#1:321\n254#1:322,3\n296#1:325,2\n297#1:327,2\n298#1:329,2\n303#1:331,2\n304#1:333,2\n305#1:335,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NotePageDragListener implements View.OnDragListener {
    public static final int DRAG_AFTER = 3;
    public static final int DRAG_BEFORE = 1;
    public static final int DRAG_IN = 2;
    public static final int DRAG_INVALID = -1;

    /* renamed from: j */
    @NotNull
    public static final String f55633j = "NotePageDragListener";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final NotePageListAdapter adapter;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy dragItemAlpha;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy afterPercent;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy beforePercent;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy dragInterval;

    /* renamed from: com.onyx.galaxy.note.category.view.drag.NotePageDragListener$a */
    /* loaded from: classes9.dex */
    public static final class C11466a<T, R> implements Function {

        /* renamed from: e */
        public static final C11466a<T, R> f55639e = new C11466a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull DeleteSortAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.view.drag.NotePageDragListener$b */
    /* loaded from: classes9.dex */
    public static final class C11467b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<NoteModelBean> f55641f;

        public C11467b(List<NoteModelBean> list) {
            this.f55641f = list;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m44638a(boolean z) {
            return NotePageDragListener.this.m44624d(z, this.f55641f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m44638a(((Boolean) obj).booleanValue());
        }
    }

    @SourceDebugExtension({"SMAP\nNotePageDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NotePageDragListener$moveIn$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,320:1\n350#2,7:321\n*S KotlinDebug\n*F\n+ 1 NotePageDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NotePageDragListener$moveIn$2\n*L\n230#1:321,7\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.view.drag.NotePageDragListener$c */
    /* loaded from: classes9.dex */
    public static final class C11468c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ TreeNode<NoteModelBean> f55643f;

        /* renamed from: g */
        public final /* synthetic */ NoteModelBean f55644g;

        public C11468c(TreeNode<NoteModelBean> treeNode, NoteModelBean noteModelBean) {
            this.f55643f = treeNode;
            this.f55644g = noteModelBean;
        }

        /* renamed from: a */
        public final void m44639a(boolean z) {
            List listOf;
            if (!z) {
                ToastUtils.INSTANCE.show(C10651R.string.move_folder_note_conflicted, true);
                return;
            }
            List<NotePageBean> items = NotePageDragListener.this.adapter.getItems();
            NoteModelBean noteModelBean = this.f55644g;
            Iterator<NotePageBean> it2 = items.iterator();
            int i = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i = -1;
                    break;
                }
                NoteModelBean noteModelBean2 = it2.next().getNoteModelBean();
                Intrinsics.checkNotNull(noteModelBean2);
                if (Intrinsics.areEqual(noteModelBean2.getUniqueId(), noteModelBean.getUniqueId())) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != -1) {
                NotePageDragListener.this.adapter.removeAt(i);
            }
            listOf = CollectionsKt__CollectionsJVMKt.listOf(this.f55643f.getData().getUniqueId());
            RxBaseAction.execute$default(new UpdateNoteExpandStatusAction(listOf, 1), null, null, null, 7, null);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44639a(((Boolean) obj).booleanValue());
        }
    }

    public NotePageDragListener(@NotNull NotePageListAdapter adapter) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.adapter = adapter;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.view.drag.NotePageDragListener$dragItemAlpha$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_item_alpha, 1, 1));
            }
        });
        this.dragItemAlpha = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.view.drag.NotePageDragListener$afterPercent$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_after_percent, 1, 1));
            }
        });
        this.afterPercent = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.view.drag.NotePageDragListener$beforePercent$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getResources().getFraction(C10651R.fraction.config_drag_before_percent, 1, 1));
            }
        });
        this.beforePercent = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.galaxy.note.category.view.drag.NotePageDragListener$dragInterval$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getResources().getInteger(C10651R.integer.drag_note_move_interval));
            }
        });
        this.dragInterval = lazy4;
    }

    /* renamed from: o */
    public static final void m44620o(NotePageDragListener this$0, final NoteModelBean originNoteModel, final NoteModelBean targetNoteModel, final int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(originNoteModel, "$originNoteModel");
        Intrinsics.checkNotNullParameter(targetNoteModel, "$targetNoteModel");
        RecyclerView.ItemAnimator itemAnimator = this$0.adapter.getRecyclerView().getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.isRunning(new RecyclerView.ItemAnimator.ItemAnimatorFinishedListener() { // from class: com.sunia.HTREnginev2.a0k
                @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.ItemAnimatorFinishedListener
                public final void onAnimationsFinished() {
                    NotePageDragListener.m44621p(NoteModelBean.this, targetNoteModel, i);
                }
            });
        }
    }

    /* renamed from: p */
    public static final void m44621p(NoteModelBean originNoteModel, NoteModelBean targetNoteModel, int i) {
        Intrinsics.checkNotNullParameter(originNoteModel, "$originNoteModel");
        Intrinsics.checkNotNullParameter(targetNoteModel, "$targetNoteModel");
        DocCollectionBundle.INSTANCE.postEvent(new DragNotePageEvent(originNoteModel.getUniqueId(), targetNoteModel.getUniqueId(), i));
    }

    /* renamed from: s */
    public static /* synthetic */ void m44622s(NotePageDragListener notePageDragListener, View view, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        notePageDragListener.m44636r(view, z);
    }

    /* renamed from: c */
    public final boolean m44623c(SyncNoteModel originNoteModel, final SyncNoteModel targetNoteModel) {
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
        return findNode.canAdopt(findNode2, 7) && !(findNode.findNode(new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.view.drag.NotePageDragListener$checkCanDragIn$isAncestors$1
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

    /* renamed from: d */
    public final Observable<Boolean> m44624d(boolean result, List<NoteModelBean> moveNotes) {
        int collectionSizeOrDefault;
        List<String> mutableList;
        if (!result) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNull(just);
            return just;
        }
        SortData sortData = new SortData();
        sortData.setFilterId(NoteTreeBundle.INSTANCE.activeFilterInfo().getUniqueId());
        sortData.setSubFilterId(String.valueOf(this.adapter.getSelectType().ordinal()));
        List<NoteModelBean> list = moveNotes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteModelBean) it2.next()).getUniqueId());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        sortData.setContentIds(mutableList);
        Observable map = new DeleteSortAction(sortData).build().map(C11466a.f55639e);
        Intrinsics.checkNotNull(map);
        return map;
    }

    /* renamed from: e */
    public final void m44625e(View itemView, int dragState) {
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

    /* renamed from: f */
    public final float m44626f() {
        return ((Number) this.afterPercent.getValue()).floatValue();
    }

    /* renamed from: g */
    public final float m44627g() {
        return ((Number) this.beforePercent.getValue()).floatValue();
    }

    /* renamed from: h */
    public final int m44628h() {
        return ((Number) this.dragInterval.getValue()).intValue();
    }

    /* renamed from: i */
    public final float m44629i() {
        return ((Number) this.dragItemAlpha.getValue()).floatValue();
    }

    /* renamed from: j */
    public final int m44630j(View itemView, boolean canDragIn, float beforeThreshold, float afterThreshold, float currLocal) {
        boolean isLayoutDirectionRtl = ViewExtKt.isLayoutDirectionRtl(itemView);
        if (currLocal <= beforeThreshold) {
            if (isLayoutDirectionRtl && this.adapter.getDisplayType() == 1) {
                return 3;
            }
        } else {
            if (currLocal < afterThreshold) {
                return canDragIn ? 2 : -1;
            }
            if (!isLayoutDirectionRtl || this.adapter.getDisplayType() != 1) {
                return 3;
            }
        }
        return 1;
    }

    /* renamed from: k */
    public final void m44631k(NoteModelBean originNoteModel, NoteModelBean targetNoteModel, int dragState) {
        if (dragState == 2) {
            return;
        }
        m44634n(originNoteModel, targetNoteModel, dragState);
    }

    /* renamed from: l */
    public final void m44632l(NoteModelBean originNoteModel, NoteModelBean targetNoteModel, int dragState) {
        boolean isLibrary = targetNoteModel.isLibrary();
        if (isLibrary || dragState != 2) {
            if (isLibrary && dragState == 2) {
                m44633m(originNoteModel, targetNoteModel);
            } else {
                m44634n(originNoteModel, targetNoteModel, dragState);
            }
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: m */
    public final void m44633m(NoteModelBean originNoteModel, NoteModelBean targetNoteModel) {
        List mutableListOf;
        TreeNode<NoteModelBean> findNode = NoteTreeBundle.INSTANCE.getFolderRootNote().findNode(targetNoteModel.getUniqueId());
        if (findNode != null) {
            originNoteModel.getSortModel().setOrderIndex(-1.0f);
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(originNoteModel);
            new MoveNoteAction(mutableListOf, findNode).build().flatMap(new C11467b(mutableListOf)).subscribe(new C11468c(findNode, originNoteModel));
        } else {
            LogUtils.eTag(f55633j, "handleDropFromFolder not found targetTreeNode,id:" + targetNoteModel.getUniqueId());
        }
    }

    /* renamed from: n */
    public final void m44634n(final NoteModelBean originNoteModel, final NoteModelBean targetNoteModel, final int dragState) {
        this.adapter.move(originNoteModel.getUniqueId(), targetNoteModel.getUniqueId(), dragState);
        this.adapter.getRecyclerView().postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.b0k
            @Override // java.lang.Runnable
            public final void run() {
                NotePageDragListener.m44620o(NotePageDragListener.this, originNoteModel, targetNoteModel, dragState);
            }
        }, m44628h());
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(@NotNull View itemView, @NotNull DragEvent e) {
        float height;
        float height2;
        float y;
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(e, "e");
        if (e.getAction() == 4) {
            m44636r(itemView, true);
            return true;
        }
        ClipDescription clipDescription = e.getClipDescription();
        if (!Intrinsics.areEqual(clipDescription != null ? clipDescription.getLabel() : null, NotePageListAdapter.TAG)) {
            return false;
        }
        Object localState = e.getLocalState();
        Intrinsics.checkNotNull(localState, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.bean.NoteModelBean");
        NoteModelBean noteModelBean = (NoteModelBean) localState;
        Object tag = itemView.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.bean.NoteModelBean");
        NoteModelBean noteModelBean2 = (NoteModelBean) tag;
        boolean m44623c = m44623c(noteModelBean, noteModelBean2);
        boolean z = noteModelBean.isDocument() && noteModelBean2.isDocument();
        if (this.adapter.getDisplayType() == 1) {
            height = itemView.getWidth() * m44626f();
            height2 = itemView.getWidth() * m44627g();
            y = e.getX();
        } else {
            height = itemView.getHeight() * m44626f();
            height2 = itemView.getHeight() * m44627g();
            y = e.getY();
        }
        float f = y;
        float f2 = height;
        if (ViewExtKt.isLayoutDirectionRtl(itemView)) {
            this.adapter.getDisplayType();
        }
        int action = e.getAction();
        if (action == 1) {
            return !Intrinsics.areEqual(noteModelBean.getUniqueId(), noteModelBean2.getUniqueId());
        }
        if (action == 2) {
            int m44630j = m44630j(itemView, m44623c, height2, f2, f);
            if (m44630j == -1) {
                m44622s(this, itemView, false, 2, null);
            } else {
                m44625e(itemView, m44630j);
            }
            return true;
        }
        if (action != 3) {
            if (action != 5) {
                if (action != 6) {
                    return false;
                }
                m44622s(this, itemView, false, 2, null);
            }
            return true;
        }
        int m44630j2 = m44630j(itemView, true, height2, f2, f);
        if (this.adapter.getSortBy() != SortBy.Manual && m44630j2 != 2) {
            ToastUtils.INSTANCE.show(C10651R.string.note_sort_enable_custom, true);
            m44636r(itemView, true);
            return true;
        }
        if (z) {
            m44631k(noteModelBean, noteModelBean2, m44630j2);
        } else {
            m44632l(noteModelBean, noteModelBean2, m44630j2);
        }
        m44636r(itemView, true);
        m44635q(noteModelBean);
        return true;
    }

    /* renamed from: q */
    public final void m44635q(NoteModelBean originNoteModel) {
        Map<String, ? extends Object> mutableMapOf;
        if (originNoteModel.isDocument()) {
            mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(OnyxStatisticConstant.KEY_TRIGGER_FROM, Integer.valueOf(NoteTreeBundle.INSTANCE.activeFilterInfo().getType())));
            StatisticsBundle.INSTANCE.reportEvent(OnyxStatisticConstant.ID_HOME_PAGE_NOTE_LIST_ITEM_DRAG, mutableMapOf);
        }
    }

    /* renamed from: r */
    public final void m44636r(View itemView, boolean resetAlpha) {
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
            itemView.setAlpha(m44629i());
        }
        itemView.invalidate();
    }
}
