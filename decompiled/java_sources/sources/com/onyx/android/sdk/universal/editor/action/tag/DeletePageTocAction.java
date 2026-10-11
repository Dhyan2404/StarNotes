package com.onyx.android.sdk.universal.editor.action.tag;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.replicator.note.utils.TocListUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.events.app.DeleteTocEntryFormPageEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\r\u001a\u00020\f\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0016\u0010\t\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/tag/DeletePageTocAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "", "pageIds", "", "l", "m", C6999h.f39688c, "Ljava/util/List;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeletePageTocAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeletePageTocAction.kt\ncom/onyx/android/sdk/universal/editor/action/tag/DeletePageTocAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1549#2:66\n1620#2,3:67\n766#2:70\n857#2,2:71\n1855#2,2:73\n*S KotlinDebug\n*F\n+ 1 DeletePageTocAction.kt\ncom/onyx/android/sdk/universal/editor/action/tag/DeletePageTocAction\n*L\n43#1:66\n43#1:67,3\n44#1:70\n44#1:71,2\n53#1:73,2\n*E\n"})
/* loaded from: classes8.dex */
public final class DeletePageTocAction extends RxBaseAppAction<DeletePageTocAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> pageIds;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.DeletePageTocAction$a */
    /* loaded from: classes8.dex */
    public static final class C10187a<T> implements Consumer {
        public C10187a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeletePageTocAction deletePageTocAction = DeletePageTocAction.this;
            deletePageTocAction.m40385m(deletePageTocAction.pageIds);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.DeletePageTocAction$b */
    /* loaded from: classes8.dex */
    public static final class C10188b<T> implements Consumer {
        public C10188b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeletePageTocAction.this.m40384l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.DeletePageTocAction$c */
    /* loaded from: classes8.dex */
    public static final class C10189c<T> implements Consumer {
        public C10189c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(DeletePageTocAction.this.getEditorBundle(), new DeleteTocEntryFormPageEvent());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.DeletePageTocAction$d */
    /* loaded from: classes8.dex */
    public static final class C10190d<T, R> implements Function {
        public C10190d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeletePageTocAction apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeletePageTocAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeletePageTocAction(@NotNull EditorBundle editorBundle, @NotNull List<String> pageIds) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        this.pageIds = pageIds;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DeletePageTocAction> create() {
        Observable<DeletePageTocAction> map = Observable.just(this.pageIds).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C10187a()).doOnNext(new C10188b()).observeOn(getMainUIScheduler()).doOnNext(new C10189c()).map(new C10190d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m40384l(List<String> pageIds) {
        int removeVirtualTocByPageId = getEditorBundle().getWorkBundle().getVirtualModelProvider().removeVirtualTocByPageId(pageIds);
        Debug.INSTANCE.m32035d(DeletePageTocAction.class, "Toc list size: " + pageIds.size() + " deleted: " + removeVirtualTocByPageId, new Object[0]);
    }

    /* renamed from: m */
    public final void m40385m(List<String> pageIds) {
        int collectionSizeOrDefault;
        Object firstOrNull;
        List<VirtualTocModel> mutableList;
        VirtualModelProvider virtualModelProvider = getEditorBundle().getWorkBundle().getVirtualModelProvider();
        List<VirtualTocModel> loadVirtualTocModelListByPage = virtualModelProvider.loadVirtualTocModelListByPage(pageIds);
        List<VirtualTocModel> list = loadVirtualTocModelListByPage;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualTocModel) it2.next()).getUniqueId());
        }
        List<VirtualTocModel> loadVirtualTocModelListByParent = virtualModelProvider.loadVirtualTocModelListByParent(arrayList);
        ArrayList<VirtualTocModel> arrayList2 = new ArrayList();
        for (Object obj : loadVirtualTocModelListByParent) {
            if (!pageIds.contains(((VirtualTocModel) obj).getPageId())) {
                arrayList2.add(obj);
            }
        }
        if (!loadVirtualTocModelListByPage.isEmpty()) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadVirtualTocModelListByPage);
            VirtualTocModel virtualTocModel = (VirtualTocModel) firstOrNull;
            String parentId = virtualTocModel != null ? virtualTocModel.getParentId() : null;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) virtualModelProvider.loadVirtualTocModelListByParent(parentId == null ? CollectionsKt__CollectionsKt.emptyList() : CollectionsKt__CollectionsJVMKt.listOf(parentId)));
            for (VirtualTocModel virtualTocModel2 : arrayList2) {
                virtualTocModel2.setParentId(parentId);
                virtualTocModel2.resetOrderIndex();
                mutableList.add(virtualTocModel2);
            }
            TocListUtils tocListUtils = TocListUtils.INSTANCE;
            List<VirtualTocModel> reorderIndex = tocListUtils.reorderIndex(tocListUtils.sortVirtualTocModelListToNatural(mutableList));
            virtualModelProvider.saveVirtualTocList(reorderIndex);
            Debug.INSTANCE.m32035d(DeletePageTocAction.class, "Toc reparentChildren: size: " + arrayList2 + " total: " + mutableList.size() + " changed: " + reorderIndex.size(), new Object[0]);
        }
    }
}
