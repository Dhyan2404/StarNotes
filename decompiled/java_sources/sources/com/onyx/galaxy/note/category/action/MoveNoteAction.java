package com.onyx.galaxy.note.category.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TreeNode;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.utils.NoteTreeNodes;
import com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnMoveNoteEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.extension.NoteQueryArgsKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
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

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0010\u0010\u0017\u001a\f\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u0014¢\u0006\u0004\b'\u0010(J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0006H\u0002R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0017\u001a\f\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001d\u0010!\u001a\u0004\u0018\u00010\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001c\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010\u0010R\u0016\u0010&\u001a\u00020$8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\b\u0010%¨\u0006)"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/MoveNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "isDuplicated", "", "r", "l", "p", GoogleApiAvailabilityLight.f29016b, "q", "m", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6998g.f39679a, "Ljava/util/List;", "nodes", "Lcom/onyx/android/sdk/base/data/TreeNode;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/TreeNode;", "parentTreeNode", "", "", "i", "Ljava/util/Set;", "idSet", "j", "Lkotlin/Lazy;", C4921e.f26528e, "()Ljava/lang/String;", "pId", C4921e.f26537n, "operatedNotePIds", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMoveNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoveNoteAction.kt\ncom/onyx/galaxy/note/category/action/MoveNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1549#2:214\n1620#2,3:215\n1603#2,9:218\n1855#2:227\n1856#2:229\n1612#2:230\n766#2:231\n857#2,2:232\n1603#2,9:234\n1855#2:243\n1856#2:245\n1612#2:246\n766#2:247\n857#2,2:248\n766#2:250\n857#2,2:251\n766#2:253\n857#2,2:254\n1855#2,2:256\n1855#2,2:258\n1855#2,2:260\n1549#2:262\n1620#2,3:263\n766#2:266\n857#2,2:267\n1855#2,2:269\n1855#2,2:271\n766#2:273\n857#2,2:274\n1549#2:276\n1620#2,3:277\n766#2:280\n857#2,2:281\n1549#2:283\n1620#2,3:284\n1#3:228\n1#3:244\n*S KotlinDebug\n*F\n+ 1 MoveNoteAction.kt\ncom/onyx/galaxy/note/category/action/MoveNoteAction\n*L\n49#1:214\n49#1:215,3\n72#1:218,9\n72#1:227\n72#1:229\n72#1:230\n73#1:231\n73#1:232,2\n80#1:234,9\n80#1:243\n80#1:245\n80#1:246\n81#1:247\n81#1:248,2\n116#1:250\n116#1:251,2\n117#1:253\n117#1:254,2\n120#1:256,2\n126#1:258,2\n130#1:260,2\n154#1:262\n154#1:263,3\n155#1:266\n155#1:267,2\n156#1:269,2\n172#1:271,2\n182#1:273\n182#1:274,2\n183#1:276\n183#1:277,3\n185#1:280\n185#1:281,2\n186#1:283\n186#1:284,3\n72#1:228\n80#1:244\n*E\n"})
/* loaded from: classes9.dex */
public final class MoveNoteAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> nodes;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final TreeNode<NoteModelBean> parentTreeNode;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Set<String> idSet;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy pId;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<String> operatedNotePIds;

    /* renamed from: l, reason: from kotlin metadata */
    public NoteProvider noteProvider;

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C10911a<T, R> implements Function {
        public C10911a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull MoveNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MoveNoteAction.this.createNoteProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C10912b<T> implements Consumer {
        public C10912b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveNoteAction.this.noteProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C10913c<T> implements Consumer {
        public C10913c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveNoteAction.this.m42403m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C10914d<T, R> implements Function {
        public C10914d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(MoveNoteAction.this.m42402l());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$e */
    /* loaded from: classes9.dex */
    public static final class C10915e<T> implements Consumer {
        public C10915e() {
        }

        /* renamed from: a */
        public final void m42413a(boolean z) {
            MoveNoteAction.this.m42404n(z);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42413a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$f */
    /* loaded from: classes9.dex */
    public static final class C10916f<T, R> implements Function {
        public C10916f() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42414a(boolean z) {
            return MoveNoteAction.this.m42406p(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42414a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$g */
    /* loaded from: classes9.dex */
    public static final class C10917g<T> implements Consumer {
        public C10917g() {
        }

        /* renamed from: a */
        public final void m42415a(boolean z) {
            MoveNoteAction.this.m42408r(z);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42415a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$h */
    /* loaded from: classes9.dex */
    public static final class C10918h<T, R> implements Function {
        public C10918h() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42416a(boolean z) {
            return MoveNoteAction.this.m42407q(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42416a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$i */
    /* loaded from: classes9.dex */
    public static final class C10919i<T, R> implements Function {

        /* renamed from: e */
        public static final C10919i<T, R> f53900e = new C10919i<>();

        @NotNull
        /* renamed from: a */
        public final Boolean m42417a(boolean z) {
            return Boolean.valueOf(!z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42417a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$j */
    /* loaded from: classes9.dex */
    public static final class C10920j<T> implements Consumer {
        public C10920j() {
        }

        /* renamed from: a */
        public final void m42418a(boolean z) {
            DocCollectionBundle.INSTANCE.postEvent(new OnMoveNoteEvent(MoveNoteAction.this.nodes));
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42418a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$k */
    /* loaded from: classes9.dex */
    public static final class C10921k<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ boolean f53902e;

        public C10921k(boolean z) {
            this.f53902e = z;
        }

        @NotNull
        /* renamed from: a */
        public final Boolean m42419a(boolean z) {
            return Boolean.valueOf(this.f53902e);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42419a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$l */
    /* loaded from: classes9.dex */
    public static final class C10922l<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<String> f53903e;

        public C10922l(List<String> list) {
            this.f53903e = list;
        }

        /* renamed from: a */
        public final void m42420a(boolean z) {
            KSyncBundle.INSTANCE.post(new SyncChangedNoteTreeEvent(this.f53903e));
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42420a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.MoveNoteAction$m */
    /* loaded from: classes9.dex */
    public static final class C10923m<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ boolean f53904e;

        public C10923m(boolean z) {
            this.f53904e = z;
        }

        @NotNull
        /* renamed from: a */
        public final Boolean m42421a(boolean z) {
            return Boolean.valueOf(this.f53904e);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42421a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MoveNoteAction(@NotNull List<? extends SyncNoteModel> nodes, @NotNull TreeNode<NoteModelBean> parentTreeNode) {
        Lazy lazy;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        Intrinsics.checkNotNullParameter(parentTreeNode, "parentTreeNode");
        this.nodes = nodes;
        this.parentTreeNode = parentTreeNode;
        this.idSet = new LinkedHashSet();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.onyx.galaxy.note.category.action.MoveNoteAction$pId$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final String invoke() {
                TreeNode treeNode;
                boolean isBlank;
                treeNode = MoveNoteAction.this.parentTreeNode;
                String uniqueId = ((NoteModelBean) treeNode.getData()).getUniqueId();
                isBlank = StringsKt__StringsJVMKt.isBlank(uniqueId);
                if (isBlank) {
                    return null;
                }
                return uniqueId;
            }
        });
        this.pId = lazy;
        List<? extends SyncNoteModel> list = nodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncNoteModel) it2.next()).getParentUniqueId());
        }
        this.operatedNotePIds = arrayList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = Observable.just(this).flatMap(new C10911a()).doOnNext(new C10912b()).doOnNext(new C10913c()).map(new C10914d()).doOnNext(new C10915e()).flatMap(new C10916f()).doOnNext(new C10917g()).flatMap(new C10918h()).map(C10919i.f53900e).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final boolean m42402l() {
        boolean z = false;
        for (final SyncNoteModel syncNoteModel : this.nodes) {
            NoteProvider noteProvider = this.noteProvider;
            if (noteProvider == null) {
                Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
                noteProvider = null;
            }
            String title = syncNoteModel.getTitle();
            Intrinsics.checkNotNull(title);
            z = NoteModelProviderKt.hasDuplicatedName(noteProvider, title, new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.galaxy.note.category.action.MoveNoteAction$checkDuplicatedName$1
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
                public final void invoke2(@NotNull CBQueryArgs hasDuplicatedName) {
                    String m42405o;
                    Intrinsics.checkNotNullParameter(hasDuplicatedName, "$this$hasDuplicatedName");
                    m42405o = MoveNoteAction.this.m42405o();
                    NoteQueryArgsKt.andWithFolderId(hasDuplicatedName, m42405o);
                    hasDuplicatedName.andWith(CouchUtils.INSTANCE.equalExpression("type", Integer.valueOf(syncNoteModel.getType())));
                }
            });
            if (z) {
                break;
            }
        }
        return z;
    }

    /* renamed from: m */
    public final void m42403m() throws Exception {
        int collectionSizeOrDefault;
        List mutableList;
        int collectionSizeOrDefault2;
        List<SyncNoteModel> list = this.nodes;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((SyncNoteModel) obj).isLibrary()) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((SyncNoteModel) it2.next()).getUniqueId());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        List<SyncNoteModel> list2 = this.nodes;
        ArrayList arrayList3 = new ArrayList();
        Iterator<T> it3 = list2.iterator();
        while (true) {
            boolean z = false;
            if (!it3.hasNext()) {
                break;
            }
            Object next = it3.next();
            SyncNoteModel syncNoteModel = (SyncNoteModel) next;
            if (syncNoteModel.isDocument() && StringKt.isNotBlank(syncNoteModel.getParentUniqueId())) {
                z = true;
            }
            if (z) {
                arrayList3.add(next);
            }
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault2);
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            String parentUniqueId = ((SyncNoteModel) it4.next()).getParentUniqueId();
            Intrinsics.checkNotNull(parentUniqueId);
            arrayList4.add(parentUniqueId);
        }
        mutableList.addAll(arrayList4);
        CollectionsKt___CollectionsKt.distinct(mutableList);
        if (mutableList.isEmpty()) {
            return;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, mutableList)).andWith(couchUtils.equalExpression("status", 0));
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        if (noteProvider.queryCount(andWith) > 0) {
            throw new Exception("folder is deleted ,which is operating");
        }
    }

    /* renamed from: n */
    public final void m42404n(boolean isDuplicated) {
        int collectionSizeOrDefault;
        if (isDuplicated) {
            return;
        }
        List<SyncNoteModel> list = this.nodes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncNoteModel) it2.next()).getParentUniqueId());
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
    public final String m42405o() {
        return (String) this.pId.getValue();
    }

    /* renamed from: p */
    public final Observable<Boolean> m42406p(boolean isDuplicated) {
        List mutableList;
        List<SyncNoteModel> mutableList2;
        if (isDuplicated) {
            Observable<Boolean> just = Observable.just(Boolean.valueOf(isDuplicated));
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        List<SyncNoteModel> list = this.nodes;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((SyncNoteModel) obj).isLibrary()) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        List<SyncNoteModel> list2 = this.nodes;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (((SyncNoteModel) obj2).isDocument()) {
                arrayList2.add(obj2);
            }
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        final ArrayList arrayList3 = new ArrayList();
        for (SyncNoteModel syncNoteModel : mutableList2) {
            syncNoteModel.setParentUniqueId(m42405o());
            syncNoteModel.setOrderIndex(-1.0f);
        }
        arrayList3.addAll(mutableList2);
        List<SyncNoteModel> list3 = mutableList;
        for (SyncNoteModel syncNoteModel2 : list3) {
            syncNoteModel2.setParentUniqueId(m42405o());
            syncNoteModel2.setOrderIndex(-1.0f);
        }
        for (SyncNoteModel syncNoteModel3 : list3) {
            this.parentTreeNode.createChild(new NoteModelBean(syncNoteModel3), syncNoteModel3.getUniqueId());
        }
        NoteTreeNodes noteTreeNodes = NoteTreeNodes.INSTANCE;
        noteTreeNodes.reorderFolderChildren(this.parentTreeNode);
        arrayList3.addAll(noteTreeNodes.loadNotSavedList(this.parentTreeNode));
        if (!this.parentTreeNode.isRootNode()) {
            arrayList3.add(this.parentTreeNode.getData());
        }
        noteTreeNodes.setSaved(this.parentTreeNode, new Function1<TreeNode<NoteModelBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.action.MoveNoteAction$move$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<NoteModelBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(arrayList3.contains(it2.getData()));
            }
        });
        Debug.INSTANCE.m32035d(MoveNoteAction.class, ",move notes:" + JSONUtils.INSTANCE.toJson(this.nodes) + ' ', new Object[0]);
        Observable map = new UpdateNoteAction(arrayList3, false, false, 6, null).build().doOnNext(new C10920j()).map(new C10921k(isDuplicated));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<Boolean> m42407q(boolean isDuplicated) {
        List<? extends Object> list;
        List mutableList;
        if (isDuplicated || this.idSet.isEmpty()) {
            Observable<Boolean> just = Observable.just(Boolean.valueOf(isDuplicated));
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        list = CollectionsKt___CollectionsKt.toList(this.idSet);
        cBQueryArgs.andWith(couchUtils.inIdsExpression(list));
        cBQueryArgs.m72251setLimit(4000);
        cBQueryArgs.setSelectResults(SyncNoteModel.INSTANCE.getNoteSelectResult());
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        List<SyncNoteModel> loadNoteListInBatch = NoteModelProviderKt.loadNoteListInBatch(noteProvider, cBQueryArgs);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.idSet);
        Iterator<T> it2 = this.nodes.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(mutableList, ((SyncNoteModel) it2.next()).getUniqueId());
        }
        Observable map = new UpdateNoteAction(loadNoteListInBatch, false, false, 6, null).build().doOnNext(new C10922l(mutableList)).map(new C10923m(isDuplicated));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final void m42408r(boolean isDuplicated) {
        List mutableList;
        List distinct;
        if (isDuplicated) {
            return;
        }
        List<String> list = this.operatedNotePIds;
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (str != null) {
                arrayList.add(str);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (StringKt.isNotBlank((String) obj)) {
                arrayList2.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        if (StringKt.isNotBlank(m42405o())) {
            String m42405o = m42405o();
            Intrinsics.checkNotNull(m42405o);
            CollectionKt.safeAdd(mutableList, m42405o);
        }
        if (!this.nodes.isEmpty()) {
            List<SyncNoteModel> list2 = this.nodes;
            ArrayList arrayList3 = new ArrayList();
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                String parentUniqueId = ((SyncNoteModel) it2.next()).getParentUniqueId();
                if (parentUniqueId != null) {
                    arrayList3.add(parentUniqueId);
                }
            }
            ArrayList arrayList4 = new ArrayList();
            for (Object obj2 : arrayList3) {
                if (StringKt.isNotBlank((String) obj2)) {
                    arrayList4.add(obj2);
                }
            }
            mutableList.addAll(arrayList4);
        }
        distinct = CollectionsKt___CollectionsKt.distinct(mutableList);
        if (distinct.isEmpty()) {
            return;
        }
        RxBaseAction.execute$default(new UpdateFolderCoverAction(distinct), null, null, null, 7, null);
    }
}
