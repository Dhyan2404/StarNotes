package com.onyx.galaxy.note.category.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction;
import com.onyx.galaxy.note.category.data.SearchScope;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter;
import com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\u001a\u0010\t\u001a\u00020\b2\u0010\u0010\u0007\u001a\f\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006H\u0002J\u001a\u0010\f\u001a\u00020\b2\u0010\u0010\u0007\u001a\f\u0012\u0004\u0012\u00020\n0\u0004j\u0002`\u000bH\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", "rootNode", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", "p", "Lcom/onyx/galaxy/note/category/data/SearchScope;", C6998g.f39679a, "Lcom/onyx/galaxy/note/category/data/SearchScope;", "searchScope", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/category/data/SearchScope;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUpdateExpiredSearchScopeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateExpiredSearchScopeAction.kt\ncom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1549#2:50\n1620#2,3:51\n1549#2:54\n1620#2,3:55\n*S KotlinDebug\n*F\n+ 1 UpdateExpiredSearchScopeAction.kt\ncom/onyx/galaxy/note/category/action/UpdateExpiredSearchScopeAction\n*L\n31#1:50\n31#1:51,3\n42#1:54\n42#1:55,3\n*E\n"})
/* loaded from: classes9.dex */
public final class UpdateExpiredSearchScopeAction extends BaseNoteManagementAction<UpdateExpiredSearchScopeAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final SearchScope searchScope;

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction$a */
    /* loaded from: classes9.dex */
    public static final class C11003a<T, R> implements Function {

        /* renamed from: e */
        public static final C11003a<T, R> f54043e = new C11003a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TreeNode<NoteModelBean>> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadNoteFolderTreeAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction$b */
    /* loaded from: classes9.dex */
    public static final class C11004b<T> implements Consumer {
        public C11004b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteModelBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateExpiredSearchScopeAction.this.m42584n(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction$c */
    /* loaded from: classes9.dex */
    public static final class C11005c<T, R> implements Function {

        /* renamed from: e */
        public static final C11005c<T, R> f54045e = new C11005c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TreeNode<NoteTagBean>> apply(@NotNull TreeNode<NoteModelBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadTagTreeAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction$d */
    /* loaded from: classes9.dex */
    public static final class C11006d<T> implements Consumer {
        public C11006d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TreeNode<NoteTagBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateExpiredSearchScopeAction.this.m42585p(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction$e */
    /* loaded from: classes9.dex */
    public static final class C11007e<T, R> implements Function {
        public C11007e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateExpiredSearchScopeAction apply(@NotNull TreeNode<NoteTagBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateExpiredSearchScopeAction.this;
        }
    }

    public UpdateExpiredSearchScopeAction(@NotNull SearchScope searchScope) {
        Intrinsics.checkNotNullParameter(searchScope, "searchScope");
        this.searchScope = searchScope;
    }

    /* renamed from: o */
    public static final boolean m42582o(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* renamed from: q */
    public static final boolean m42583q(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateExpiredSearchScopeAction> create() {
        Observable<UpdateExpiredSearchScopeAction> map = Observable.just(Unit.INSTANCE).flatMap(C11003a.f54043e).doOnNext(new C11004b()).flatMap(C11005c.f54045e).doOnNext(new C11006d()).map(new C11007e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final void m42584n(TreeNode<NoteModelBean> rootNode) {
        int collectionSizeOrDefault;
        List<String> mutableList;
        String title;
        NoteModelBean noteModelBean;
        final Map map = CollectionKt.toMap(rootNode.findChildrenNodes(), new Function1<TreeNode<NoteModelBean>, String>() { // from class: com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction$updateFolderNodes$nodeMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                String id = it2.getId();
                return id == null ? "" : id;
            }
        });
        List<String> folderIds = this.searchScope.getFolderIds();
        final Function1<String, Boolean> function1 = new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction$updateFolderNodes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Code restructure failed: missing block: B:4:0x001d, code lost:
            
                if ((!r1) != false) goto L8;
             */
            @Override // kotlin.jvm.functions.Function1
            @org.jetbrains.annotations.NotNull
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull java.lang.String r2) {
                /*
                    r1 = this;
                    java.lang.String r0 = "it"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                    com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter$Companion r0 = com.onyx.galaxy.note.category.view.adapter.SelectMultiFolderAdapter.INSTANCE
                    java.lang.String r0 = r0.getUNCLASSIFIED_FOLDER_ID()
                    boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0)
                    if (r0 != 0) goto L20
                    java.util.Map<java.lang.String, com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteModelBean>> r1 = r1
                    java.util.Set r1 = r1.keySet()
                    boolean r1 = r1.contains(r2)
                    r2 = 1
                    r1 = r1 ^ r2
                    if (r1 == 0) goto L20
                    goto L21
                L20:
                    r2 = 0
                L21:
                    java.lang.Boolean r1 = java.lang.Boolean.valueOf(r2)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction$updateFolderNodes$1.invoke(java.lang.String):java.lang.Boolean");
            }
        };
        folderIds.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.hxn
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m42582o;
                m42582o = UpdateExpiredSearchScopeAction.m42582o(Function1.this, obj);
                return m42582o;
            }
        });
        SearchScope searchScope = this.searchScope;
        List<String> folderIds2 = searchScope.getFolderIds();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(folderIds2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (String str : folderIds2) {
            SelectMultiFolderAdapter.Companion companion = SelectMultiFolderAdapter.INSTANCE;
            if (Intrinsics.areEqual(str, companion.getUNCLASSIFIED_FOLDER_ID())) {
                title = companion.getUNCLASSIFIED_FOLDER_NAME();
            } else {
                TreeNode treeNode = (TreeNode) map.get(str);
                title = (treeNode == null || (noteModelBean = (NoteModelBean) treeNode.getData()) == null) ? null : noteModelBean.getTitle();
                if (title == null) {
                    title = "";
                }
            }
            arrayList.add(title);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        searchScope.setFolderNames(mutableList);
    }

    /* renamed from: p */
    public final void m42585p(TreeNode<NoteTagBean> rootNode) {
        int collectionSizeOrDefault;
        List<String> mutableList;
        String content;
        NoteTagBean noteTagBean;
        final Map map = CollectionKt.toMap(rootNode.findChildrenNodes(), new Function1<TreeNode<NoteTagBean>, String>() { // from class: com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction$updateTagNodes$nodeMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull TreeNode<NoteTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                String id = it2.getId();
                return id == null ? "" : id;
            }
        });
        List<String> tagIds = this.searchScope.getTagIds();
        final Function1<String, Boolean> function1 = new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction$updateTagNodes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Code restructure failed: missing block: B:4:0x001d, code lost:
            
                if ((!r1) != false) goto L8;
             */
            @Override // kotlin.jvm.functions.Function1
            @org.jetbrains.annotations.NotNull
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull java.lang.String r2) {
                /*
                    r1 = this;
                    java.lang.String r0 = "it"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                    com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter$Companion r0 = com.onyx.galaxy.note.category.view.adapter.SelectMultiTagAdapter.INSTANCE
                    java.lang.String r0 = r0.getUNCLASSIFIED_TAG_ID()
                    boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0)
                    if (r0 != 0) goto L20
                    java.util.Map<java.lang.String, com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>> r1 = r1
                    java.util.Set r1 = r1.keySet()
                    boolean r1 = r1.contains(r2)
                    r2 = 1
                    r1 = r1 ^ r2
                    if (r1 == 0) goto L20
                    goto L21
                L20:
                    r2 = 0
                L21:
                    java.lang.Boolean r1 = java.lang.Boolean.valueOf(r2)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.action.UpdateExpiredSearchScopeAction$updateTagNodes$1.invoke(java.lang.String):java.lang.Boolean");
            }
        };
        tagIds.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.ixn
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m42583q;
                m42583q = UpdateExpiredSearchScopeAction.m42583q(Function1.this, obj);
                return m42583q;
            }
        });
        SearchScope searchScope = this.searchScope;
        List<String> tagIds2 = searchScope.getTagIds();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tagIds2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (String str : tagIds2) {
            SelectMultiTagAdapter.Companion companion = SelectMultiTagAdapter.INSTANCE;
            if (Intrinsics.areEqual(str, companion.getUNCLASSIFIED_TAG_ID())) {
                content = companion.getUNCLASSIFIED_TAG_NAME();
            } else {
                TreeNode treeNode = (TreeNode) map.get(str);
                content = (treeNode == null || (noteTagBean = (NoteTagBean) treeNode.getData()) == null) ? null : noteTagBean.getContent();
                if (content == null) {
                    content = "";
                }
            }
            arrayList.add(content);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        searchScope.setTagNames(mutableList);
    }
}
