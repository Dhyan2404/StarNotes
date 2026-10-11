package com.onyx.galaxy.note.category.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteTagBean;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTagNodes;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnMoveTagEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0010\u0010\u0015\u001a\f\u0012\u0004\u0012\u00020\r0\u0011j\u0002`\u0012¢\u0006\u0004\b$\u0010%J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0007H\u0002R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0015\u001a\f\u0012\u0004\u0012\u00020\r0\u0011j\u0002`\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001d\u0010\u001f\u001a\u0004\u0018\u00010\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/MoveTagAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "isDuplicated", "", "p", GoogleApiAvailabilityLight.f29016b, "q", "m", "", "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;", C6998g.f39679a, "Ljava/util/List;", "nodes", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TreeNode;", "parentTreeNode", "", "", "i", "Ljava/util/Set;", "idSet", "j", "Lkotlin/Lazy;", C4921e.f26528e, "()Ljava/lang/String;", "pId", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", C4921e.f26537n, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMoveTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveTagAction.kt\ncom/onyx/galaxy/note/category/action/MoveTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1855#2,2:163\n1855#2,2:165\n1855#2,2:167\n1549#2:169\n1620#2,3:170\n1549#2:173\n1620#2,3:174\n766#2:177\n857#2,2:178\n1855#2,2:180\n1855#2,2:182\n1549#2:184\n1620#2,3:185\n*S KotlinDebug\n*F\n+ 1 MoveTagAction.kt\ncom/onyx/galaxy/note/category/action/MoveTagAction\n*L\n89#1:163,2\n95#1:165,2\n103#1:167,2\n110#1:169\n110#1:170,3\n119#1:173\n119#1:174,3\n120#1:177\n120#1:178,2\n121#1:180,2\n135#1:182,2\n155#1:184\n155#1:185,3\n*E\n"})
/* loaded from: classes9.dex */
public final class MoveTagAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<NoteTagBean> nodes;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteTagBean> parentTreeNode;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Set<String> idSet;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy pId;

    /* renamed from: k, reason: from kotlin metadata */
    public NoteProvider noteProvider;

    /* renamed from: com.onyx.galaxy.note.category.action.MoveTagAction$a */
    /* loaded from: classes9.dex */
    public static final class C10924a<T, R> implements Function {
        public C10924a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull MoveTagAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MoveTagAction.this.createNoteProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveTagAction$b */
    /* loaded from: classes9.dex */
    public static final class C10925b<T> implements Consumer {
        public C10925b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveTagAction.this.noteProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveTagAction$c */
    /* loaded from: classes9.dex */
    public static final class C10926c<T> implements Consumer {
        public C10926c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveTagAction.this.m42423m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveTagAction$d */
    /* loaded from: classes9.dex */
    public static final class C10927d<T, R> implements Function {
        public C10927d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(MoveTagAction.this.m42422l());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveTagAction$e */
    /* loaded from: classes9.dex */
    public static final class C10928e<T> implements Consumer {
        public C10928e() {
        }

        /* renamed from: a */
        public final void m42432a(boolean z) {
            MoveTagAction.this.m42424n(z);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42432a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveTagAction$f */
    /* loaded from: classes9.dex */
    public static final class C10929f<T> implements Consumer {
        public C10929f() {
        }

        /* renamed from: a */
        public final void m42433a(boolean z) {
            MoveTagAction.this.m42426p(z);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42433a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveTagAction$g */
    /* loaded from: classes9.dex */
    public static final class C10930g<T> implements Consumer {
        public C10930g() {
        }

        /* renamed from: a */
        public final void m42434a(boolean z) {
            MoveTagAction.this.m42427q(z);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42434a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveTagAction$h */
    /* loaded from: classes9.dex */
    public static final class C10931h<T, R> implements Function {

        /* renamed from: e */
        public static final C10931h<T, R> f53917e = new C10931h<>();

        @NotNull
        /* renamed from: a */
        public final Boolean m42435a(boolean z) {
            return Boolean.valueOf(!z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42435a(((Boolean) obj).booleanValue());
        }
    }

    public MoveTagAction(@NotNull List<NoteTagBean> nodes, @NotNull TreeNode<NoteTagBean> parentTreeNode) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        Intrinsics.checkNotNullParameter(parentTreeNode, "parentTreeNode");
        this.nodes = nodes;
        this.parentTreeNode = parentTreeNode;
        this.idSet = new LinkedHashSet();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.onyx.galaxy.note.category.action.MoveTagAction$pId$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final String invoke() {
                TreeNode treeNode;
                boolean isBlank;
                treeNode = MoveTagAction.this.parentTreeNode;
                String uniqueId = ((NoteTagBean) treeNode.getData()).getUniqueId();
                isBlank = StringsKt__StringsJVMKt.isBlank(uniqueId);
                if (isBlank) {
                    return null;
                }
                return uniqueId;
            }
        });
        this.pId = lazy;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = Observable.just(this).flatMap(new C10924a()).doOnNext(new C10925b()).doOnNext(new C10926c()).map(new C10927d()).doOnNext(new C10928e()).doOnNext(new C10929f()).doOnNext(new C10930g()).map(C10931h.f53917e).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final boolean m42422l() {
        boolean z = false;
        for (final NoteTagBean noteTagBean : this.nodes) {
            NoteProvider noteProvider = this.noteProvider;
            if (noteProvider == null) {
                Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
                noteProvider = null;
            }
            z = NoteTagProviderKt.hasDuplicatedTagContent(noteProvider, noteTagBean.getContent(), new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.galaxy.note.category.action.MoveTagAction$checkDuplicatedName$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                    invoke2(cBQueryArgs);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull CBQueryArgs hasDuplicatedTagContent) {
                    String m42425o;
                    Intrinsics.checkNotNullParameter(hasDuplicatedTagContent, "$this$hasDuplicatedTagContent");
                    CouchUtils couchUtils = CouchUtils.INSTANCE;
                    hasDuplicatedTagContent.andWith(couchUtils.equalExpression("type", Integer.valueOf(NoteTagBean.this.getType())));
                    m42425o = this.m42425o();
                    hasDuplicatedTagContent.andWith(couchUtils.equalOrNullExpression(CouchFieldKey.KEY_PARENT_ID, Intrinsics.areEqual(m42425o, NoteConfigConst.TAG_ROOT_ID) ? null : this.m42425o()));
                }
            });
            if (z) {
                break;
            }
        }
        return z;
    }

    /* renamed from: m */
    public final void m42423m() throws Exception {
        int collectionSizeOrDefault;
        if (this.nodes.isEmpty()) {
            return;
        }
        CBQueryArgs createTagQueryArgs = NoteTagProviderKt.createTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = createTagQueryArgs.andWith(couchUtils.equalExpression("status", 2));
        List<NoteTagBean> list = this.nodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteTagBean) it2.next()).getUniqueId());
        }
        CBQueryArgs varargOrdering = andWith.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, arrayList)).setVarargOrdering(CouchUtils.INSTANCE.getOrdering(CouchFieldKey.KEY_CREATE_AT, true));
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        if (noteProvider.queryCount(varargOrdering) > 0) {
            throw new Exception("tag is deleted ,which is operating");
        }
    }

    /* renamed from: n */
    public final void m42424n(boolean isDuplicated) {
        int collectionSizeOrDefault;
        if (isDuplicated) {
            return;
        }
        List<NoteTagBean> list = this.nodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NoteTagBean) it2.next()).getParentId());
        }
        ArrayList<String> arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (StringKt.isNotBlank((String) obj)) {
                arrayList2.add(obj);
            }
        }
        for (String str : arrayList2) {
            Set<String> set = this.idSet;
            Intrinsics.checkNotNull(str);
            set.add(str);
        }
    }

    /* renamed from: o */
    public final String m42425o() {
        return (String) this.pId.getValue();
    }

    /* renamed from: p */
    public final void m42426p(boolean isDuplicated) {
        int collectionSizeOrDefault;
        if (isDuplicated) {
            return;
        }
        final ArrayList<SyncTagModel> arrayList = new ArrayList();
        for (NoteTagBean noteTagBean : this.nodes) {
            noteTagBean.setParentId(m42425o());
            noteTagBean.setOrderIndex(-1.0f);
        }
        arrayList.addAll(this.nodes);
        for (NoteTagBean noteTagBean2 : this.nodes) {
            this.parentTreeNode.createChild(new NoteTagBean(noteTagBean2), noteTagBean2.getUniqueId());
        }
        NoteTagNodes noteTagNodes = NoteTagNodes.INSTANCE;
        noteTagNodes.reorderTagChildren(this.parentTreeNode);
        arrayList.addAll(noteTagNodes.loadNotSavedList(this.parentTreeNode));
        if (!this.parentTreeNode.isRootNode()) {
            arrayList.add(this.parentTreeNode.getData());
        }
        for (SyncTagModel syncTagModel : arrayList) {
            syncTagModel.beforeSave();
            syncTagModel.resetRevisionId();
        }
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        NoteTagProviderKt.saveTagList(noteProvider, arrayList);
        NoteTagNodes.INSTANCE.setSaved(this.parentTreeNode, new Function1<TreeNode<NoteTagBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.action.MoveTagAction$move$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteTagBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(arrayList.contains(it2.getData()));
            }
        });
        DocCollectionBundle.INSTANCE.postEvent(new OnMoveTagEvent(this.nodes));
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((SyncTagModel) it2.next()).getUniqueId());
        }
        kSyncBundle.post(new SyncChangedNoteTreeEvent(arrayList2));
        Debug.INSTANCE.m32035d(MoveTagAction.class, ",move tags:" + JSONUtils.INSTANCE.toJson(this.nodes) + ' ', new Object[0]);
    }

    /* renamed from: q */
    public final void m42427q(boolean isDuplicated) {
        List list;
        if (isDuplicated || this.idSet.isEmpty()) {
            return;
        }
        NoteProvider noteProvider = this.noteProvider;
        NoteProvider noteProvider2 = null;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        list = CollectionsKt___CollectionsKt.toList(this.idSet);
        List<SyncTagModel> loadTagById = NoteTagProviderKt.loadTagById(noteProvider, list);
        for (SyncTagModel syncTagModel : loadTagById) {
            syncTagModel.beforeSave();
            syncTagModel.resetRevisionId();
        }
        NoteProvider noteProvider3 = this.noteProvider;
        if (noteProvider3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
        } else {
            noteProvider2 = noteProvider3;
        }
        NoteTagProviderKt.saveTagList(noteProvider2, loadTagById);
    }
}
