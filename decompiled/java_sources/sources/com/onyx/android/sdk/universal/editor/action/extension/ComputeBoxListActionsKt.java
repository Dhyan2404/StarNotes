package com.onyx.android.sdk.universal.editor.action.extension;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.doc.TransformShapeContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.FindBoxInfoByNotePageIdRequest;
import com.onyx.android.sdk.universal.editor.request.page.FindBoxInfoListRequest;
import com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest;
import com.onyx.android.sdk.universal.editor.request.page.GetPageBoxInfoRequest;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000Z\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a.\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000b0\n\u001a2\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0001*\u0006\u0012\u0002\b\u00030\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000b\u001a\"\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0011\u001a\u00020\u0012\u001a8\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u00072\u0006\u0010\u0015\u001a\u00020\b\u001a0\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00170\u0001*\u0006\u0012\u0002\b\u00030\u00032\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00140\u00072\u0006\u0010\u0015\u001a\u00020\b\u001a.\u0010\u0019\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u001a0\u0001*\u0006\u0012\u0002\b\u00030\u00032\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e\u001a&\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u000b\u001a(\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00170\u0001*\u0006\u0012\u0002\b\u00030\u00032\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e\u001a(\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00170\u0001*\u0006\u0012\u0002\b\u00030\u00032\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00140\u0007\u001a\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\b0\u0001*\u0006\u0012\u0002\b\u00030\u0003\u001a(\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0001*\u0006\u0012\u0002\b\u00030\u00032\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00140\u0007\u001a4\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0001*\u0006\u0012\u0002\b\u00030\u00032\u0018\u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00070\u001a\u001a4\u0010#\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00070\u001a0\u0001*\u0006\u0012\u0002\b\u00030\u00032\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00140\u0007¨\u0006$"}, m61528d2 = {"findBoxInfoByNotePageId", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "notePageId", "", "findBoxInfoList", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "predicate", "Lkotlin/Function1;", "", "findBoxInfoListWithPageIdList", "notePageIdList", "", "updateToVisibleBox", "findBoxListObservable", "transformShapeContext", "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;", "shapes", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "virtualBoxInfo", "findIntersectsVisibleBoxInfoList", "", "shapeList", "findPageBoxInfoMap", "", "pageIds", "findVisibleBoxInfoByNotePageId", "Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;", "findVisibleBoxInfoList", "pageIdList", "getCurrentPageBoxInfo", "getIntersectsAndVisibleBoxList", "boxShapesMap", "transformToBoxShapesMap", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ComputeBoxListActionsKt {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$a */
    /* loaded from: classes8.dex */
    public static final class C9031a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ FindBoxInfoListRequest f48924e;

        public C9031a(FindBoxInfoListRequest findBoxInfoListRequest) {
            this.f48924e = findBoxInfoListRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final List<BoxInfo> apply(@NotNull FindBoxInfoListRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48924e.getBoxList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$b */
    /* loaded from: classes8.dex */
    public static final class C9032b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ TransformShapeContext f48925e;

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f48926f;

        /* renamed from: g */
        public final /* synthetic */ List<Shape> f48927g;

        /* JADX WARN: Multi-variable type inference failed */
        public C9032b(TransformShapeContext transformShapeContext, BoxInfo boxInfo, List<? extends Shape> list) {
            this.f48925e = transformShapeContext;
            this.f48926f = boxInfo;
            this.f48927g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48925e.setBoxList(it2);
            this.f48925e.setVirtualBoxInfo(this.f48926f);
            this.f48925e.setShapeList(this.f48927g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$c */
    /* loaded from: classes8.dex */
    public static final class C9033c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ TransformShapeContext f48928e;

        public C9033c(TransformShapeContext transformShapeContext) {
            this.f48928e = transformShapeContext;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48928e.setBoxList(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$d */
    /* loaded from: classes8.dex */
    public static final class C9034d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<BoxInfo> f48929e;

        public C9034d(List<BoxInfo> list) {
            this.f48929e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CollectionKt.safeAddAll(this.f48929e, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$e */
    /* loaded from: classes8.dex */
    public static final class C9035e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<BoxInfo> f48930e;

        public C9035e(List<BoxInfo> list) {
            this.f48930e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final List<BoxInfo> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48930e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$f */
    /* loaded from: classes8.dex */
    public static final class C9036f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ GetPageBoxInfoRequest f48931e;

        public C9036f(GetPageBoxInfoRequest getPageBoxInfoRequest) {
            this.f48931e = getPageBoxInfoRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final BoxInfo apply(@NotNull GetPageBoxInfoRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48931e.getBoxInfo();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$g */
    /* loaded from: classes8.dex */
    public static final class C9038g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<?> f48933e;

        /* renamed from: f */
        public final /* synthetic */ List<BoxInfo> f48934f;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$g$a */
        /* loaded from: classes8.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ List<BoxInfo> f48935e;

            public a(List<BoxInfo> list) {
                this.f48935e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a */
            public final void accept(@NotNull List<BoxInfo> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                CollectionKt.addIfNotContains((Collection) this.f48935e, (Collection) it2);
            }
        }

        public C9038g(RxBaseAppAction<?> rxBaseAppAction, List<BoxInfo> list) {
            this.f48933e = rxBaseAppAction;
            this.f48934f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends List<BoxInfo>> apply(@NotNull Map.Entry<BoxInfo, ? extends List<? extends Shape>> entry) {
            Intrinsics.checkNotNullParameter(entry, "entry");
            return ComputeBoxListActionsKt.findIntersectsVisibleBoxInfoList(this.f48933e, entry.getValue(), entry.getKey()).doOnNext(new a(this.f48934f));
        }
    }

    @SourceDebugExtension({"SMAP\nComputeBoxListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$getIntersectsAndVisibleBoxList$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n1655#2,8:174\n*S KotlinDebug\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$getIntersectsAndVisibleBoxList$2\n*L\n137#1:174,8\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$h */
    /* loaded from: classes8.dex */
    public static final class C9039h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<BoxInfo> f48936e;

        public C9039h(List<BoxInfo> list) {
            this.f48936e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final List<BoxInfo> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            List<BoxInfo> list = this.f48936e;
            HashSet hashSet = new HashSet();
            ArrayList arrayList = new ArrayList();
            for (T t : list) {
                if (hashSet.add(((BoxInfo) t).getId())) {
                    arrayList.add(t);
                }
            }
            return arrayList;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$i */
    /* loaded from: classes8.dex */
    public static final class C9040i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAppAction<?> f48937e;

        public C9040i(RxBaseAppAction<?> rxBaseAppAction) {
            this.f48937e = rxBaseAppAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends List<BoxInfo>> apply(@NotNull Map<BoxInfo, ? extends List<? extends Shape>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ComputeBoxListActionsKt.getIntersectsAndVisibleBoxList(this.f48937e, it2);
        }
    }

    @SourceDebugExtension({"SMAP\nComputeBoxListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$getIntersectsAndVisibleBoxList$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n1655#2,8:174\n*S KotlinDebug\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$getIntersectsAndVisibleBoxList$4\n*L\n145#1:174,8\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$j */
    /* loaded from: classes8.dex */
    public static final class C9041j<T, R> implements Function {

        /* renamed from: e */
        public static final C9041j<T, R> f48938e = new C9041j<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final List<BoxInfo> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HashSet hashSet = new HashSet();
            ArrayList arrayList = new ArrayList();
            for (T t : it2) {
                if (hashSet.add(((BoxInfo) t).getId())) {
                    arrayList.add(t);
                }
            }
            return arrayList;
        }
    }

    @SourceDebugExtension({"SMAP\nComputeBoxListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$transformToBoxShapesMap$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n1855#2,2:174\n*S KotlinDebug\n*F\n+ 1 ComputeBoxListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$transformToBoxShapesMap$1\n*L\n120#1:174,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$k */
    /* loaded from: classes8.dex */
    public static final class C9042k<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Map<BoxInfo, List<Shape>> f48939e;

        /* renamed from: f */
        public final /* synthetic */ Map<String, List<Shape>> f48940f;

        /* JADX WARN: Multi-variable type inference failed */
        public C9042k(Map<BoxInfo, List<Shape>> map, Map<String, ? extends List<? extends Shape>> map2) {
            this.f48939e = map;
            this.f48940f = map2;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull List<BoxInfo> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            Map<BoxInfo, List<Shape>> map = this.f48939e;
            Map<String, List<Shape>> map2 = this.f48940f;
            for (BoxInfo boxInfo : list) {
                List<Shape> list2 = map2.get(boxInfo.getId());
                if (list2 == null) {
                    list2 = CollectionsKt__CollectionsKt.emptyList();
                }
                map.put(boxInfo, list2);
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$l */
    /* loaded from: classes8.dex */
    public static final class C9043l<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Map<BoxInfo, List<Shape>> f48941e;

        public C9043l(Map<BoxInfo, List<Shape>> map) {
            this.f48941e = map;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final Map<BoxInfo, List<Shape>> apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48941e;
        }
    }

    @NotNull
    public static final Observable<FindBoxInfoByNotePageIdRequest> findBoxInfoByNotePageId(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull String notePageId) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(notePageId, "notePageId");
        return RxBaseAppActionKt.submitRequestToCore(rxBaseAppAction, new FindBoxInfoByNotePageIdRequest(rxBaseAppAction.getEditorBundle().getWorkBundle(), notePageId));
    }

    @NotNull
    public static final Observable<List<BoxInfo>> findBoxInfoList(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull Function1<? super BoxInfo, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        FindBoxInfoListRequest findBoxInfoListRequest = new FindBoxInfoListRequest(rxBaseAppAction.getEditorBundle().getWorkBundle(), predicate);
        Observable<List<BoxInfo>> map = RxBaseAppActionKt.submitRequestToCore(rxBaseAppAction, findBoxInfoListRequest).map(new C9031a(findBoxInfoListRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public static final Observable<List<BoxInfo>> findBoxInfoListWithPageIdList(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull final Collection<String> notePageIdList, final boolean z) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(notePageIdList, "notePageIdList");
        return DocCommonActionsKt.createCoreObservable(rxBaseAppAction, new Function1<WorkBundle, List<? extends BoxInfo>>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$findBoxInfoListWithPageIdList$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<BoxInfo> invoke(@NotNull WorkBundle workBundle) {
                Intrinsics.checkNotNullParameter(workBundle, "workBundle");
                Collection<String> collection = notePageIdList;
                ArrayList arrayList = new ArrayList();
                Iterator<T> it2 = collection.iterator();
                while (it2.hasNext()) {
                    BoxInfo findBoxInfoByPageId = WorkBundleKt.obtainBoxManager(workBundle).findBoxInfoByPageId((String) it2.next());
                    if (findBoxInfoByPageId != null) {
                        arrayList.add(findBoxInfoByPageId);
                    }
                }
                if (z) {
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        WorkBundleKt.updateToVisibleBox(workBundle, (BoxInfo) it3.next());
                    }
                }
                return arrayList;
            }
        });
    }

    public static /* synthetic */ Observable findBoxInfoListWithPageIdList$default(RxBaseAppAction rxBaseAppAction, Collection collection, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return findBoxInfoListWithPageIdList(rxBaseAppAction, collection, z);
    }

    @NotNull
    public static final Observable<List<BoxInfo>> findBoxListObservable(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull TransformShapeContext transformShapeContext, @NotNull List<? extends Shape> shapes, @NotNull BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(transformShapeContext, "transformShapeContext");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        if (!transformShapeContext.getBoxList().isEmpty()) {
            Observable<List<BoxInfo>> just = Observable.just(transformShapeContext.getBoxList());
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<List<BoxInfo>> doOnNext = getIntersectsAndVisibleBoxList(rxBaseAppAction, shapes).doOnNext(new C9032b(transformShapeContext, virtualBoxInfo, shapes));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public static final Observable<List<BoxInfo>> findIntersectsVisibleBoxInfoList(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull final List<? extends Shape> shapeList, @NotNull final BoxInfo virtualBoxInfo) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        return DocCommonActionsKt.createCoreObservable(rxBaseAppAction, new Function1<WorkBundle, List<BoxInfo>>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$findIntersectsVisibleBoxInfoList$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<BoxInfo> invoke(@NotNull WorkBundle it2) {
                List<BoxInfo> mutableList;
                Intrinsics.checkNotNullParameter(it2, "it");
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) WorkBundleKt.collectIntersectsVisibleBoxList(it2, shapeList, virtualBoxInfo));
                return mutableList;
            }
        });
    }

    @NotNull
    public static final Observable<Map<String, BoxInfo>> findPageBoxInfoMap(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull Collection<String> pageIds) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        Observable<Map<String, BoxInfo>> map = findBoxInfoListWithPageIdList$default(rxBaseAppAction, pageIds, false, 2, null).map(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$findPageBoxInfoMap$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Map<String, BoxInfo> apply(@NotNull List<BoxInfo> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return CollectionKt.toMap(it2, new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt$findPageBoxInfoMap$1.1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final String invoke(@NotNull BoxInfo it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return it3.getId();
                    }
                });
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public static final Observable<FindVisibleBoxInfoByNotePageIdRequest> findVisibleBoxInfoByNotePageId(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull String notePageId, boolean z) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(notePageId, "notePageId");
        return EditorBundleKt.findVisibleBoxInfoByNotePageId(rxBaseAppAction.getEditorBundle(), notePageId, z);
    }

    public static /* synthetic */ Observable findVisibleBoxInfoByNotePageId$default(RxBaseAppAction rxBaseAppAction, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return findVisibleBoxInfoByNotePageId(rxBaseAppAction, str, z);
    }

    @NotNull
    public static final Observable<List<BoxInfo>> findVisibleBoxInfoList(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        return findVisibleBoxInfoList(rxBaseAppAction, ShapeTypes.INSTANCE.toPageIdSet(shapeList));
    }

    @NotNull
    public static final Observable<BoxInfo> getCurrentPageBoxInfo(@NotNull RxBaseAppAction<?> rxBaseAppAction) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        GetPageBoxInfoRequest getPageBoxInfoRequest = new GetPageBoxInfoRequest(rxBaseAppAction.getEditorBundle().getWorkBundle(), EditorBundleKt.currentPageIndex(rxBaseAppAction.getEditorBundle()), null, 4, null);
        Observable<BoxInfo> map = RxBaseAppActionKt.submitRequestToCore(rxBaseAppAction, getPageBoxInfoRequest).map(new C9036f(getPageBoxInfoRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public static final Observable<List<BoxInfo>> getIntersectsAndVisibleBoxList(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull Map<BoxInfo, ? extends List<? extends Shape>> boxShapesMap) {
        List mutableList;
        List emptyList;
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(boxShapesMap, "boxShapesMap");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionKt.mergeList(EditorBundleKt.visibleBoxList(rxBaseAppAction.getEditorBundle()), boxShapesMap.keySet()));
        if (CollectionKt.isNullOrEmpty(boxShapesMap)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            Observable<List<BoxInfo>> just = Observable.just(emptyList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(boxShapesMap.entrySet()).concatMap(new C9038g(rxBaseAppAction, mutableList));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<List<BoxInfo>> map = RxjavaKt.takeLastOne(concatMap).map(new C9039h(mutableList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public static final Observable<Map<BoxInfo, List<Shape>>> transformToBoxShapesMap(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Map<String, List<Shape>> pageShapeMap = ShapeTypes.INSTANCE.toPageShapeMap(shapeList);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (CollectionKt.isNullOrEmpty(pageShapeMap)) {
            Observable<Map<BoxInfo, List<Shape>>> just = Observable.just(linkedHashMap);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = findBoxInfoListWithPageIdList(rxBaseAppAction, pageShapeMap.keySet(), true).doOnNext(new C9042k(linkedHashMap, pageShapeMap)).map(new C9043l(linkedHashMap));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public static final Observable<List<BoxInfo>> findVisibleBoxInfoList(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull Collection<String> pageIdList) {
        Set set;
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        ArrayList arrayList = new ArrayList();
        if (pageIdList.isEmpty()) {
            Observable<List<BoxInfo>> just = Observable.just(arrayList);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        set = CollectionsKt___CollectionsKt.toSet(pageIdList);
        Observable map = findBoxInfoListWithPageIdList(rxBaseAppAction, set, true).doOnNext(new C9034d(arrayList)).map(new C9035e(arrayList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public static final Observable<List<BoxInfo>> findBoxListObservable(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull TransformShapeContext transformShapeContext) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(transformShapeContext, "transformShapeContext");
        if (!CollectionKt.isNullOrEmpty(transformShapeContext.getShapeList()) && !(!transformShapeContext.getBoxList().isEmpty())) {
            Observable<List<BoxInfo>> doOnNext = getIntersectsAndVisibleBoxList(rxBaseAppAction, transformShapeContext.getShapeList()).doOnNext(new C9033c(transformShapeContext));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        Observable<List<BoxInfo>> just = Observable.just(transformShapeContext.getBoxList());
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @NotNull
    public static final Observable<List<BoxInfo>> getIntersectsAndVisibleBoxList(@NotNull RxBaseAppAction<?> rxBaseAppAction, @NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(rxBaseAppAction, "<this>");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Observable<List<BoxInfo>> map = transformToBoxShapesMap(rxBaseAppAction, shapeList).flatMap(new C9040i(rxBaseAppAction)).map(C9041j.f48938e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
