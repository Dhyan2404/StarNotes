package com.onyx.galaxy.note.category.action;

import android.content.Context;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.extension.StringRuleLengthKt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.data.page.PageNameList;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.StashNoteShapePBDocument;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBFactory;
import com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.UserPbFactory;
import com.onyx.android.sdk.replicator.note.utils.CopyNoteUtils;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.CopyNoteListAction;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.collections4.bidimap.TreeBidiMap;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\u0006\u0010+\u001a\u00020(\u0012\b\u0010.\u001a\u0004\u0018\u00010\u0016\u0012\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00070\f¢\u0006\u0004\bM\u0010NJ\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\fH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\fH\u0002J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0018\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0002J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0002J\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0018\u0010#\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u00162\u0006\u0010\"\u001a\u00020!H\u0002J\u0010\u0010$\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020!H\u0002J\u001c\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00070\fH\u0002J\u000e\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010.\u001a\u0004\u0018\u00010\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u001a\u00101\u001a\b\u0012\u0004\u0012\u00020\u00070\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R!\u0010;\u001a\b\u0012\u0004\u0012\u00020\u0016068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\u001a\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R \u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010@R\u0014\u0010D\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010CR\u001b\u0010G\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u00108\u001a\u0004\bE\u0010FR\u001b\u0010I\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u00108\u001a\u0004\bH\u0010FR\u0016\u0010L\u001a\u00020J8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010K¨\u0006O"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lio/reactivex/rxjava3/core/Observable;", "E", "Lcom/onyx/android/sdk/base/data/Tree;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "rootTreeNode", "", "w", "", "p", "s", "folders", "m", "srcModel", "dstModel", GoogleApiAvailabilityLight.f29016b, "v", C4921e.f26528e, "", "srcDocId", "destDocId", "r", "q", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "copyNoteArgs", "B", "originTitle", "", "modelType", "u", "x", "saveModels", SardineUtil.DEFAULT_NAMESPACE_PREFIX, BaiduYunConstant.CREATE, "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "context", C6999h.f39688c, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "dstId", "i", "Ljava/util/List;", "nodes", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "j", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "dbProviderBundle", "", C4921e.f26537n, "Lkotlin/Lazy;", "A", "()Ljava/util/List;", "topNodeIds", "l", "Lcom/onyx/android/sdk/base/data/Tree;", "srcTree", "Lorg/apache/commons/collections4/bidimap/TreeBidiMap;", "Lorg/apache/commons/collections4/bidimap/TreeBidiMap;", "srcIdByDstIdMap", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "copyNoteListArgs", "y", "()I", "folderMaxLength", "z", "noteMaxLength", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCopyNoteListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNoteListAction.kt\ncom/onyx/galaxy/note/category/action/CopyNoteListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,346:1\n766#2:347\n857#2,2:348\n1855#2,2:350\n766#2:352\n857#2,2:353\n1855#2,2:355\n1549#2:357\n1620#2,3:358\n766#2:361\n857#2,2:362\n1855#2,2:364\n1855#2:366\n1549#2:367\n1620#2,3:368\n766#2:371\n857#2,2:372\n1855#2,2:374\n1856#2:376\n1#3:377\n*S KotlinDebug\n*F\n+ 1 CopyNoteListAction.kt\ncom/onyx/galaxy/note/category/action/CopyNoteListAction\n*L\n114#1:347\n114#1:348,2\n116#1:350,2\n134#1:352\n134#1:353,2\n136#1:355,2\n156#1:357\n156#1:358,3\n158#1:361\n158#1:362,2\n162#1:364,2\n169#1:366\n172#1:367\n172#1:368,3\n174#1:371\n174#1:372,2\n179#1:374,2\n169#1:376\n*E\n"})
/* loaded from: classes9.dex */
public final class CopyNoteListAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final String dstId;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> nodes;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final DBProviderBundle dbProviderBundle;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy topNodeIds;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Tree<SyncNoteModel> srcTree;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final TreeBidiMap<String, String> srcIdByDstIdMap;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final CopyNoteListArgs copyNoteListArgs;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Lazy folderMaxLength;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final Lazy noteMaxLength;

    /* renamed from: q, reason: from kotlin metadata */
    public NoteProvider provider;

    /* renamed from: com.onyx.galaxy.note.category.action.CopyNoteListAction$a */
    /* loaded from: classes9.dex */
    public static final class C10770a<T> implements Consumer {
        public C10770a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CopyNoteListAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CopyNoteListAction$b */
    /* loaded from: classes9.dex */
    public static final class C10771b<T, R> implements Function {
        public C10771b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Tree<SyncNoteModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyNoteListAction.this.m42139C();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CopyNoteListAction$c */
    /* loaded from: classes9.dex */
    public static final class C10772c<T, R> implements Function {
        public C10772c() {
        }

        /* renamed from: a */
        public final void m42157a(@NotNull Tree<SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CopyNoteListAction.this.m42151w(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42157a((Tree) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CopyNoteListAction$d */
    /* loaded from: classes9.dex */
    public static final class C10773d<T, R> implements Function {
        public C10773d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyNoteListAction.this.m42145p();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CopyNoteListAction$e */
    /* loaded from: classes9.dex */
    public static final class C10774e<T, R> implements Function {
        public C10774e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull List<SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyNoteListAction.this.m42142m(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CopyNoteListAction$f */
    /* loaded from: classes9.dex */
    public static final class C10775f<T, R> implements Function {
        public C10775f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull List<SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyNoteListAction.this.m42140D(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CopyNoteListAction$g */
    /* loaded from: classes9.dex */
    public static final class C10776g<T, R> implements Function {
        public C10776g() {
        }

        @NotNull
        /* renamed from: a */
        public final Boolean m42161a(boolean z) {
            return Boolean.valueOf(CopyNoteListAction.this.m42148s());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42161a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CopyNoteListAction$h */
    /* loaded from: classes9.dex */
    public static final class C10777h<T, R> implements Function {
        public C10777h() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42162a(boolean z) {
            return CopyNoteListAction.this.m42141E(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42162a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.CopyNoteListAction$i */
    /* loaded from: classes9.dex */
    public static final class C10778i<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ boolean f53657e;

        public C10778i(boolean z) {
            this.f53657e = z;
        }

        @NotNull
        /* renamed from: a */
        public final Boolean m42163a(boolean z) {
            return Boolean.valueOf(this.f53657e);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42163a(((Boolean) obj).booleanValue());
        }
    }

    public CopyNoteListAction(@NotNull Context context, @Nullable String str, @NotNull List<SyncNoteModel> nodes) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        this.context = context;
        this.dstId = str;
        this.nodes = nodes;
        this.dbProviderBundle = KSyncBundle.INSTANCE.getDbProviderBundle();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends String>>() { // from class: com.onyx.galaxy.note.category.action.CopyNoteListAction$topNodeIds$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends String> invoke() {
                List list;
                int collectionSizeOrDefault;
                list = CopyNoteListAction.this.nodes;
                List list2 = list;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((SyncNoteModel) it2.next()).getUniqueId());
                }
                return arrayList;
            }
        });
        this.topNodeIds = lazy;
        this.srcTree = new Tree<>();
        this.srcIdByDstIdMap = new TreeBidiMap<>();
        this.copyNoteListArgs = new CopyNoteListArgs();
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.galaxy.note.category.action.CopyNoteListAction$folderMaxLength$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getInteger(C10651R.integer.folder_name_max_input_length));
            }
        });
        this.folderMaxLength = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.galaxy.note.category.action.CopyNoteListAction$noteMaxLength$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getInteger(C10651R.integer.note_name_max_input_length));
            }
        });
        this.noteMaxLength = lazy3;
    }

    /* renamed from: t */
    public static final void m42136t(CopyNoteListAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DBProviderBundle.Companion.dumpDocProviderInfo$default(DBProviderBundle.INSTANCE, this$0.dbProviderBundle, false, 1, null);
    }

    /* renamed from: A */
    public final List<String> m42137A() {
        return (List) this.topNodeIds.getValue();
    }

    /* renamed from: B */
    public final void m42138B(PBDataContext pbDataContext, CopyNoteArgs copyNoteArgs) {
        try {
            StashNoteShapePBDocument.INSTANCE.importStashShape(pbDataContext, copyNoteArgs);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: C */
    public final Tree<SyncNoteModel> m42139C() {
        CBQueryArgs commonNoteArgs = NoteConfigKt.getCommonNoteArgs();
        commonNoteArgs.m72251setLimit(Integer.MAX_VALUE);
        commonNoteArgs.setVarargOrdering(CouchUtils.INSTANCE.getOrdering(CouchFieldKey.KEY_ORDER_INDEX, true));
        NoteProvider noteProvider = this.provider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider = null;
        }
        return NoteTagProviderKt.loadNoteModelTree(noteProvider, commonNoteArgs);
    }

    /* renamed from: D */
    public final Observable<Boolean> m42140D(List<SyncNoteModel> saveModels) {
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (StringKt.isNotBlank(this.dstId)) {
            NoteProvider noteProvider = this.provider;
            if (noteProvider == null) {
                Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
                noteProvider = null;
            }
            SyncNoteModel loadNote = NoteModelProviderKt.loadNote(noteProvider, this.dstId);
            if (loadNote != null) {
                saveModels.add(loadNote);
            }
        }
        return new SaveNoteAction(saveModels, false, 2, defaultConstructorMarker).build();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0010  */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.reactivex.rxjava3.core.Observable<java.lang.Boolean> m42141E(boolean r2) {
        /*
            r1 = this;
            java.lang.String r0 = r1.dstId
            if (r0 == 0) goto Ld
            boolean r0 = kotlin.text.StringsKt.isBlank(r0)
            if (r0 == 0) goto Lb
            goto Ld
        Lb:
            r0 = 0
            goto Le
        Ld:
            r0 = 1
        Le:
            if (r0 == 0) goto L1e
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r2)
            io.reactivex.rxjava3.core.Observable r1 = io.reactivex.rxjava3.core.Observable.just(r1)
            java.lang.String r2 = "just(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            return r1
        L1e:
            com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction r0 = new com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction
            java.lang.String r1 = r1.dstId
            java.util.List r1 = kotlin.collections.CollectionsKt.listOf(r1)
            r0.<init>(r1)
            io.reactivex.rxjava3.core.Observable r1 = r0.build()
            com.onyx.galaxy.note.category.action.CopyNoteListAction$i r0 = new com.onyx.galaxy.note.category.action.CopyNoteListAction$i
            r0.<init>(r2)
            io.reactivex.rxjava3.core.Observable r1 = r1.map(r0)
            java.lang.String r2 = "map(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.action.CopyNoteListAction.m42141E(boolean):io.reactivex.rxjava3.core.Observable");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = createNoteProviderObservable().doOnNext(new C10770a()).observeOn(getObserveOn()).map(new C10771b()).map(new C10772c()).map(new C10773d()).map(new C10774e()).observeOn(getObserveOn()).flatMap(new C10775f()).observeOn(getObserveOn()).map(new C10776g()).flatMap(new C10777h()).observeOn(getObserveOn()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.fce
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CopyNoteListAction.m42136t(CopyNoteListAction.this);
            }
        }).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: m */
    public final List<SyncNoteModel> m42142m(List<SyncNoteModel> folders) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        ArrayList arrayList = new ArrayList();
        List<Tree<SyncNoteModel>> children = this.srcTree.getChildren();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(children, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = children.iterator();
        while (it2.hasNext()) {
            Object item = ((Tree) it2.next()).getItem();
            Intrinsics.checkNotNull(item);
            arrayList2.add((SyncNoteModel) item);
        }
        ArrayList<SyncNoteModel> arrayList3 = new ArrayList();
        for (Object obj : arrayList2) {
            if (((SyncNoteModel) obj).isDocument()) {
                arrayList3.add(obj);
            }
        }
        for (SyncNoteModel syncNoteModel : arrayList3) {
            SyncNoteModel m42146q = m42146q(syncNoteModel);
            m42143n(syncNoteModel, m42146q);
            arrayList.add(m42146q);
        }
        for (SyncNoteModel syncNoteModel2 : folders) {
            Object obj2 = this.srcIdByDstIdMap.get((Object) syncNoteModel2.getUniqueId());
            Intrinsics.checkNotNull(obj2);
            final String str = (String) obj2;
            Tree<SyncNoteModel> findChild = this.srcTree.findChild(new Function1<SyncNoteModel, Boolean>() { // from class: com.onyx.galaxy.note.category.action.CopyNoteListAction$copyDoc$2$srcFolderTreeNode$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull SyncNoteModel it3) {
                    Intrinsics.checkNotNullParameter(it3, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it3.getUniqueId(), str));
                }
            });
            Intrinsics.checkNotNull(findChild);
            List<Tree<SyncNoteModel>> children2 = findChild.getChildren();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(children2, 10);
            ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault2);
            Iterator<T> it3 = children2.iterator();
            while (it3.hasNext()) {
                Object item2 = ((Tree) it3.next()).getItem();
                Intrinsics.checkNotNull(item2);
                arrayList4.add((SyncNoteModel) item2);
            }
            ArrayList<SyncNoteModel> arrayList5 = new ArrayList();
            for (Object obj3 : arrayList4) {
                if (((SyncNoteModel) obj3).isDocument()) {
                    arrayList5.add(obj3);
                }
            }
            arrayList.add(syncNoteModel2);
            for (SyncNoteModel syncNoteModel3 : arrayList5) {
                SyncNoteModel m42146q2 = m42146q(syncNoteModel3);
                m42143n(syncNoteModel3, m42146q2);
                arrayList.add(m42146q2);
            }
        }
        return arrayList;
    }

    /* renamed from: n */
    public final void m42143n(SyncNoteModel srcModel, SyncNoteModel dstModel) {
        m42147r(srcModel.getUniqueId(), dstModel.getUniqueId());
        m42150v(srcModel);
        m42144o(dstModel);
    }

    /* renamed from: o */
    public final void m42144o(SyncNoteModel dstModel) {
        List<String> list;
        SyncConstant syncConstant = SyncConstant.INSTANCE;
        String appDocDir = syncConstant.appDocDir();
        Object obj = this.srcIdByDstIdMap.get((Object) dstModel.getUniqueId());
        Intrinsics.checkNotNull(obj);
        final String str = (String) obj;
        if (FileUtils.INSTANCE.isFileExist(syncConstant.docDirFilePath(appDocDir, str))) {
            final CopyNoteArgs copyNoteArgs = new CopyNoteArgs();
            copyNoteArgs.setUserId(AccountDataBundle.INSTANCE.getSyncUserId());
            copyNoteArgs.setSrcDocId(str);
            copyNoteArgs.setDstDocId(dstModel.getUniqueId());
            copyNoteArgs.setDstParentId(dstModel.getParentUniqueId());
            copyNoteArgs.setDocNote(dstModel);
            copyNoteArgs.setSrcDirFilePath(appDocDir);
            copyNoteArgs.setDstGroupId(dstModel.getGroupId());
            copyNoteArgs.setDstAssociation(dstModel.getAssociation());
            copyNoteArgs.setCopyGlobalPage(true);
            this.copyNoteListArgs.addArgs(copyNoteArgs);
            NoteProviderHolder.Companion.withOnce$default(NoteProviderHolder.INSTANCE, this.dbProviderBundle, null, copyNoteArgs.getDstDocId(), new Function1<NoteProviderHolder, Unit>() { // from class: com.onyx.galaxy.note.category.action.CopyNoteListAction$copyDocPB$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NoteProviderHolder noteProviderHolder) {
                    invoke2(noteProviderHolder);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull NoteProviderHolder it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    PBDataContext pBDataContext = new PBDataContext(it2, str);
                    pBDataContext.setCopyNoteArgs(copyNoteArgs);
                    PBFactory.INSTANCE.copyPBDataToDB(pBDataContext);
                    this.m42138B(pBDataContext, copyNoteArgs);
                }
            }, 2, null);
            dstModel.setUniqueId(copyNoteArgs.getDstDocId());
            dstModel.setParentUniqueId(copyNoteArgs.getDstParentId());
            dstModel.setUser(copyNoteArgs.getUserId());
            dstModel.setGroupId(copyNoteArgs.getDstGroupId());
            dstModel.setAssociation(copyNoteArgs.getDstAssociation());
            CopyNoteUtils.INSTANCE.updateNotePageInfo(copyNoteArgs, dstModel);
            PageNameList pageNameList = new PageNameList();
            list = CollectionsKt___CollectionsKt.toList(copyNoteArgs.getPageIdCopyMap().values());
            pageNameList.addAll(list);
            dstModel.setPageNameList(pageNameList);
            dstModel.setRemovePageList(new PageNameList());
        }
    }

    /* renamed from: p */
    public final List<SyncNoteModel> m42145p() {
        ArrayList arrayList = new ArrayList();
        Iterable mapChildren = this.srcTree.mapChildren(new Function1<Tree<SyncNoteModel>, SyncNoteModel>() { // from class: com.onyx.galaxy.note.category.action.CopyNoteListAction$copyFolder$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final SyncNoteModel invoke(@NotNull Tree<SyncNoteModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                SyncNoteModel item = it2.getItem();
                Intrinsics.checkNotNull(item);
                return item;
            }
        });
        ArrayList<SyncNoteModel> arrayList2 = new ArrayList();
        for (Object obj : mapChildren) {
            if (((SyncNoteModel) obj).isLibrary()) {
                arrayList2.add(obj);
            }
        }
        for (SyncNoteModel syncNoteModel : arrayList2) {
            SyncNoteModel m42146q = m42146q(syncNoteModel);
            m42147r(syncNoteModel.getUniqueId(), m42146q.getUniqueId());
            arrayList.add(m42146q);
        }
        return arrayList;
    }

    /* renamed from: q */
    public final SyncNoteModel m42146q(SyncNoteModel srcModel) {
        SyncNoteModel syncNoteModel = new SyncNoteModel();
        syncNoteModel.updateModelField(srcModel);
        syncNoteModel.setUniqueId(UUIDUtils.INSTANCE.shortUUID());
        syncNoteModel.setOrderIndex(-1.0f);
        this.srcIdByDstIdMap.put((TreeBidiMap<String, String>) syncNoteModel.getUniqueId(), srcModel.getUniqueId());
        String title = srcModel.getTitle();
        Intrinsics.checkNotNull(title);
        syncNoteModel.setTitle(m42149u(title, srcModel.getType()));
        if (m42137A().contains(srcModel.getUniqueId())) {
            syncNoteModel.setParentUniqueId(this.dstId);
        } else {
            syncNoteModel.setParentUniqueId(this.srcIdByDstIdMap.getKey((Object) srcModel.getParentUniqueId()));
        }
        return syncNoteModel;
    }

    /* renamed from: r */
    public final void m42147r(String srcDocId, String destDocId) {
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        File asFile = paths.asFile(paths.append(commonPaths.appDocDir(srcDocId), srcDocId + ".png"));
        File asFile2 = paths.asFile(paths.append(commonPaths.appDocDir(destDocId), destDocId + ".png"));
        if (asFile.exists()) {
            onyx.org.apache.commons.io.FileUtils.copyFile(asFile, asFile2);
        }
    }

    /* renamed from: s */
    public final boolean m42148s() {
        UserPBDataContext userPBDataContext = new UserPBDataContext(null, 1, null);
        userPBDataContext.setCopyNoteListArgs(this.copyNoteListArgs);
        UserPbFactory.INSTANCE.copyDBToDB(userPBDataContext);
        return true;
    }

    /* renamed from: u */
    public final String m42149u(String originTitle, final int modelType) {
        NoteProvider noteProvider = this.provider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider = null;
        }
        String generateUniqueName = NoteModelProviderKt.generateUniqueName(noteProvider, originTitle, "_1", new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.galaxy.note.category.action.CopyNoteListAction$ensureUniqueName$uniqueName$1
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
            public final void invoke2(@NotNull CBQueryArgs generateUniqueName2) {
                String str;
                Intrinsics.checkNotNullParameter(generateUniqueName2, "$this$generateUniqueName");
                CouchUtils couchUtils = CouchUtils.INSTANCE;
                generateUniqueName2.andWith(couchUtils.equalExpression("type", Integer.valueOf(modelType)));
                str = this.dstId;
                generateUniqueName2.andWith(couchUtils.equalOrNullExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, str));
            }
        });
        int ruleLength = StringRuleLengthKt.toRuleLength(generateUniqueName);
        if (modelType == 0 && ruleLength > m42153y()) {
            generateUniqueName = m42152x(modelType);
        }
        return (modelType != 1 || ruleLength <= m42154z()) ? generateUniqueName : m42152x(modelType);
    }

    /* renamed from: v */
    public final void m42150v(SyncNoteModel srcModel) {
        final String uniqueId = srcModel.getUniqueId();
        NoteProviderHolder.Companion.withOnce$default(NoteProviderHolder.INSTANCE, this.dbProviderBundle, null, uniqueId, new Function1<NoteProviderHolder, Unit>() { // from class: com.onyx.galaxy.note.category.action.CopyNoteListAction$exportDocPB$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteProviderHolder noteProviderHolder) {
                invoke2(noteProviderHolder);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteProviderHolder it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                PBFactory.INSTANCE.exportToPBFromDB(new PBDataContext(it2, uniqueId));
            }
        }, 2, null);
    }

    /* renamed from: w */
    public final void m42151w(Tree<SyncNoteModel> rootTreeNode) {
        SyncNoteModel item;
        List<Tree<SyncNoteModel>> childrenToList = rootTreeNode.childrenToList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : childrenToList) {
            if (((Tree) obj).getItem() != null) {
                arrayList.add(obj);
            }
        }
        Map map = CollectionKt.toMap(arrayList, new Function1<Tree<SyncNoteModel>, String>() { // from class: com.onyx.galaxy.note.category.action.CopyNoteListAction$generateTree$noteModelMap$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull Tree<SyncNoteModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                SyncNoteModel item2 = it2.getItem();
                Intrinsics.checkNotNull(item2);
                return item2.getUniqueId();
            }
        }, new Function1<Tree<SyncNoteModel>, Tree<SyncNoteModel>>() { // from class: com.onyx.galaxy.note.category.action.CopyNoteListAction$generateTree$noteModelMap$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Tree<SyncNoteModel> invoke(@NotNull Tree<SyncNoteModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        });
        for (SyncNoteModel syncNoteModel : this.nodes) {
            Tree<SyncNoteModel> tree = (Tree) map.get(syncNoteModel.getUniqueId());
            if (syncNoteModel.isDocument()) {
                if (tree != null && (item = tree.getItem()) != null) {
                    syncNoteModel = item;
                }
                Tree<SyncNoteModel> tree2 = this.srcTree;
                tree2.addToChildren(syncNoteModel, tree2.getChildren().size());
            } else if (tree != null) {
                this.srcTree.addToChildren(tree);
            }
        }
    }

    /* renamed from: x */
    public final String m42152x(int modelType) {
        String string = ResManager.INSTANCE.getString(C10651R.string.option_copy);
        Intrinsics.checkNotNull(string);
        CBQueryArgs commonNoteArgs = NoteConfigKt.getCommonNoteArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = commonNoteArgs.andWith(couchUtils.equalExpression("type", Integer.valueOf(modelType)));
        List singletonList = Collections.singletonList("title");
        Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
        CBQueryArgs andWith2 = andWith.andWith(CouchUtils.orPrefixLikeExpression$default(couchUtils, string, singletonList, false, 4, null));
        if (modelType == 0) {
            andWith2.andWith(couchUtils.equalOrNullExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, this.dstId));
        }
        NoteProvider noteProvider = this.provider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider = null;
        }
        return string + (NoteModelProviderKt.getCount(noteProvider, andWith2) + 1);
    }

    /* renamed from: y */
    public final int m42153y() {
        return ((Number) this.folderMaxLength.getValue()).intValue();
    }

    /* renamed from: z */
    public final int m42154z() {
        return ((Number) this.noteMaxLength.getValue()).intValue();
    }
}
