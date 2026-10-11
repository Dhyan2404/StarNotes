package com.onyx.galaxy.note.category.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.android.sdk.replicator.note.bean.SortData;
import com.onyx.android.sdk.replicator.note.p035db.SortProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SortModel;
import com.onyx.android.sdk.replicator.note.utils.OrderListUtils;
import com.onyx.galaxy.note.category.action.LoadNoteSortDataAction;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0002R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;", CouchFieldKey.KEY_PROVIDER, GoogleApiAvailabilityLight.f29016b, "noteModelBeanList", "", C4921e.f26528e, C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "Lcom/onyx/android/sdk/replicator/note/bean/SortData;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/bean/SortData;", "sortData", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadNoteSortDataAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteSortDataAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteSortDataAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n1855#2,2:63\n1855#2,2:65\n766#2:67\n857#2,2:68\n766#2:70\n857#2,2:71\n1549#2:73\n1620#2,3:74\n*S KotlinDebug\n*F\n+ 1 LoadNoteSortDataAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteSortDataAction\n*L\n26#1:63,2\n29#1:65,2\n44#1:67\n44#1:68,2\n45#1:70\n45#1:71,2\n60#1:73\n60#1:74,3\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadNoteSortDataAction extends BaseNoteManagementAction<NoteModelBeanList> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final NoteModelBeanList noteModelBeanList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final SortData sortData;

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteSortDataAction$a */
    /* loaded from: classes9.dex */
    public static final class C10881a<T, R> implements Function {
        public C10881a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteModelBeanList apply(@NotNull SortProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadNoteSortDataAction.this.m42351n(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteSortDataAction$b */
    /* loaded from: classes9.dex */
    public static final class C10882b<T> implements Consumer {
        public C10882b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadNoteSortDataAction.this.m42352o(it2);
        }
    }

    public LoadNoteSortDataAction(@NotNull NoteModelBeanList noteModelBeanList, @NotNull SortData sortData) {
        Intrinsics.checkNotNullParameter(noteModelBeanList, "noteModelBeanList");
        Intrinsics.checkNotNullParameter(sortData, "sortData");
        this.noteModelBeanList = noteModelBeanList;
        this.sortData = sortData;
    }

    /* renamed from: p */
    public static final int m42349p(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: q */
    public static final int m42350q(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<NoteModelBeanList> create() {
        Observable<NoteModelBeanList> doOnNext = createSortProviderObservable().map(new C10881a()).doOnNext(new C10882b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: n */
    public final NoteModelBeanList m42351n(SortProvider provider) {
        List<SortModel> loadSortList = provider.loadSortList(this.sortData.toCBQueryArgs());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (SortModel sortModel : loadSortList) {
            linkedHashMap.put(sortModel.getContentId(), sortModel);
        }
        for (NoteModelBean noteModelBean : this.noteModelBeanList) {
            SortModel sortModel2 = new SortModel();
            sortModel2.setContentId(noteModelBean.getUniqueId());
            sortModel2.setFilterId(this.sortData.getFilterId());
            sortModel2.setSubFilterId(this.sortData.getSubFilterId());
            SortModel sortModel3 = (SortModel) linkedHashMap.get(noteModelBean.getUniqueId());
            sortModel2.setOrderIndex(sortModel3 != null ? sortModel3.getOrderIndex() : -1.0f);
            sortModel2.ensureUniqueIdExist();
            noteModelBean.setSortModel(sortModel2);
        }
        return this.noteModelBeanList;
    }

    /* renamed from: o */
    public final void m42352o(NoteModelBeanList noteModelBeanList) {
        List mutableList;
        List mutableList2;
        int collectionSizeOrDefault;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<NoteModelBean> it2 = noteModelBeanList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            NoteModelBean next = it2.next();
            if (!(next.getSortModel().getOrderIndex() == -1.0f)) {
                arrayList2.add(next);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        ArrayList arrayList3 = new ArrayList();
        for (NoteModelBean noteModelBean : noteModelBeanList) {
            if (noteModelBean.getSortModel().getOrderIndex() == -1.0f) {
                arrayList3.add(noteModelBean);
            }
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList3);
        final LoadNoteSortDataAction$updateOrder$1 loadNoteSortDataAction$updateOrder$1 = new Function2<NoteModelBean, NoteModelBean, Integer>() { // from class: com.onyx.galaxy.note.category.action.LoadNoteSortDataAction$updateOrder$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(NoteModelBean noteModelBean2, NoteModelBean noteModelBean3) {
                return Integer.valueOf(Intrinsics.compare(noteModelBean3.getCreatedAt(), noteModelBean2.getCreatedAt()));
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList2, new Comparator() { // from class: com.sunia.HTREnginev2.zzi
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m42349p;
                m42349p = LoadNoteSortDataAction.m42349p(Function2.this, obj, obj2);
                return m42349p;
            }
        });
        final LoadNoteSortDataAction$updateOrder$2 loadNoteSortDataAction$updateOrder$2 = new Function2<NoteModelBean, NoteModelBean, Integer>() { // from class: com.onyx.galaxy.note.category.action.LoadNoteSortDataAction$updateOrder$2
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(NoteModelBean noteModelBean2, NoteModelBean noteModelBean3) {
                return Integer.valueOf(Float.compare(noteModelBean2.getSortModel().getOrderIndex(), noteModelBean3.getSortModel().getOrderIndex()));
            }
        };
        CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: com.sunia.HTREnginev2.a0j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m42350q;
                m42350q = LoadNoteSortDataAction.m42350q(Function2.this, obj, obj2);
                return m42350q;
            }
        });
        arrayList.addAll(mutableList2);
        arrayList.addAll(mutableList);
        List reorderIndex = OrderListUtils.INSTANCE.reorderIndex(arrayList, new Function1<NoteModelBean, Float>() { // from class: com.onyx.galaxy.note.category.action.LoadNoteSortDataAction$updateOrder$reorderList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull NoteModelBean it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return Float.valueOf(it3.getSortModel().getOrderIndex());
            }
        }, new Function2<NoteModelBean, Float, Unit>() { // from class: com.onyx.galaxy.note.category.action.LoadNoteSortDataAction$updateOrder$reorderList$2
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
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(reorderIndex, 10);
        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault);
        Iterator it3 = reorderIndex.iterator();
        while (it3.hasNext()) {
            arrayList4.add(((NoteModelBean) it3.next()).getSortModel());
        }
        RxBaseAction.execute$default(new SaveSortAction(arrayList4), null, null, null, 7, null);
    }
}
