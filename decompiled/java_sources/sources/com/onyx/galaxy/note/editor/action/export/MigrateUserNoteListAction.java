package com.onyx.galaxy.note.editor.action.export;

import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.replicator.note.data.page.PageNameList;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.StashNoteShapePBDocument;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.PBFactory;
import com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBDataContext;
import com.onyx.android.sdk.replicator.note.proto.p036pb.UserPbFactory;
import com.onyx.android.sdk.replicator.note.utils.CopyNoteUtils;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.editor.events.app.UserNoteListImportingEvent;
import com.onyx.android.sdk.universal.editor.extension.NoteExporter;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.editor.action.export.MigrateUserNoteListAction;
import com.onyx.galaxy.note.editor.data.ExportImportArgs;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b:\u0010;J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\t\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u001e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\u0004H\u0002J\f\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002R\u0014\u0010#\u001a\u00020 8\u0002X\u0082D¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010%\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\"R\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u001b\u0010-\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R \u00101\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\"\u00103\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00070.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00100R\u0017\u00109\u001a\u0002048\u0006¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108¨\u0006<"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "z", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "list", "A", "noteModel", "t", "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;", "pbDataContext", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "copyNoteArgs", "w", "q", "x", "B", "r", "u", "v", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "modeList", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "dbProviderBundle", "y", "exportUserData", GoogleApiAvailabilityLight.f29016b, "", C6998g.f39679a, Constants.STRING_SIG, "srcUserId", C6999h.f39688c, "dstUserId", "i", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;", "j", "Lkotlin/Lazy;", "s", "()Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;", "exportImportArgs", "", C4921e.f26537n, "Ljava/util/Map;", "libraryIdMap", "l", "noteModelMap", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "m", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "getCopyNoteListArgs", "()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "copyNoteListArgs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMigrateUserNoteListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MigrateUserNoteListAction.kt\ncom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,269:1\n766#2:270\n857#2,2:271\n1549#2:273\n1620#2,3:274\n1864#2,3:277\n1549#2:280\n1620#2,3:281\n766#2:284\n857#2,2:285\n1855#2,2:287\n1855#2,2:289\n*S KotlinDebug\n*F\n+ 1 MigrateUserNoteListAction.kt\ncom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction\n*L\n97#1:270\n97#1:271,2\n102#1:273\n102#1:274,3\n103#1:277,3\n110#1:280\n110#1:281,3\n188#1:284\n188#1:285,2\n193#1:287,2\n234#1:289,2\n*E\n"})
/* loaded from: classes9.dex */
public final class MigrateUserNoteListAction extends RxBaseNoteAppAction<MigrateUserNoteListAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String srcUserId = "share_user";

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String dstUserId = "";

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final DBProviderBundle dbProviderBundle = KSyncBundle.INSTANCE.getDbProviderBundle();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy exportImportArgs;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Map<String, String> libraryIdMap;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public Map<String, SyncNoteModel> noteModelMap;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final CopyNoteListArgs copyNoteListArgs;

    /* renamed from: com.onyx.galaxy.note.editor.action.export.MigrateUserNoteListAction$a */
    /* loaded from: classes9.dex */
    public static final class C11922a<T> implements Consumer {
        public C11922a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MigrateUserNoteListAction.this.dstUserId = AccountDataBundle.INSTANCE.getSyncUserId();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.export.MigrateUserNoteListAction$b */
    /* loaded from: classes9.dex */
    public static final class C11923b<T> implements Consumer {

        /* renamed from: e */
        public static final C11923b<T> f58328e = new C11923b<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DocCollectionBundle.INSTANCE.postEvent(new UserNoteListImportingEvent("", 0, 0, 6, null));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.export.MigrateUserNoteListAction$c */
    /* loaded from: classes9.dex */
    public static final class C11924c<T> implements Consumer {
        public C11924c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MigrateUserNoteListAction.this.m45853z();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.export.MigrateUserNoteListAction$d */
    /* loaded from: classes9.dex */
    public static final class C11925d<T, R> implements Function {
        public C11925d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MigrateUserNoteListAction.this.m45843n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.export.MigrateUserNoteListAction$e */
    /* loaded from: classes9.dex */
    public static final class C11926e<T, R> implements Function {
        public C11926e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MigrateUserNoteListAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MigrateUserNoteListAction.this;
        }
    }

    public MigrateUserNoteListAction() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ExportImportArgs>() { // from class: com.onyx.galaxy.note.editor.action.export.MigrateUserNoteListAction$exportImportArgs$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExportImportArgs invoke() {
                String str;
                ExportImportArgs exportImportArgs = new ExportImportArgs();
                MigrateUserNoteListAction migrateUserNoteListAction = MigrateUserNoteListAction.this;
                NoteExporter noteExporter = NoteExporter.INSTANCE;
                str = migrateUserNoteListAction.srcUserId;
                exportImportArgs.setDirPath(noteExporter.getUserExportCacheDir(str));
                return exportImportArgs;
            }
        });
        this.exportImportArgs = lazy;
        this.libraryIdMap = new LinkedHashMap();
        this.noteModelMap = new LinkedHashMap();
        this.copyNoteListArgs = new CopyNoteListArgs();
    }

    /* renamed from: o */
    public static final void m45838o(MigrateUserNoteListAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FileUtils.INSTANCE.deleteDirectory(this$0.m45846s().getDirPath());
    }

    /* renamed from: p */
    public static final void m45839p(MigrateUserNoteListAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DBProviderBundle.Companion.dumpDocProviderInfo$default(DBProviderBundle.INSTANCE, this$0.dbProviderBundle, false, 1, null);
    }

    /* renamed from: A */
    public final void m45840A(List<? extends SyncNoteModel> list) {
        List<? extends SyncNoteModel> list2;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((SyncNoteModel) obj).isDocument()) {
                arrayList.add(obj);
            }
        }
        list2 = CollectionsKt___CollectionsKt.toList(arrayList);
        LogUtils.wTag(MigrateUserNoteListAction.class.getSimpleName(), "migrate document count:" + list2.size());
        if (list2.isEmpty()) {
            return;
        }
        List<? extends SyncNoteModel> list3 = list2;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list3.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((SyncNoteModel) it2.next()).getUniqueId());
        }
        int i = 0;
        for (Object obj2 : list3) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            SyncNoteModel syncNoteModel = (SyncNoteModel) obj2;
            DocCollectionBundle docCollectionBundle = DocCollectionBundle.INSTANCE;
            String title = syncNoteModel.getTitle();
            if (title == null) {
                title = "";
            }
            docCollectionBundle.postEvent(new UserNoteListImportingEvent(title, i, CollectionKt.getSize(list2)));
            m45844q(syncNoteModel);
            m45847t(syncNoteModel);
            i = i2;
        }
        m45842C(this.dbProviderBundle.getNoteProvider(ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(this.dstUserId)), list2);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list3.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((SyncNoteModel) it3.next()).getUniqueId());
        }
        LogUtils.wTag(MigrateUserNoteListAction.class.getSimpleName(), "migrate import src documents:" + arrayList2);
        LogUtils.wTag(MigrateUserNoteListAction.class.getSimpleName(), "migrate import dest documents:" + arrayList3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: B */
    public final List<SyncNoteModel> m45841B(List<? extends SyncNoteModel> list) {
        ArrayList<SyncNoteModel> arrayList = new ArrayList();
        for (Object obj : list) {
            if (((SyncNoteModel) obj).isLibrary()) {
                arrayList.add(obj);
            }
        }
        LogUtils.wTag(MigrateUserNoteListAction.class.getSimpleName(), "migrate library count:" + arrayList.size());
        if (arrayList.isEmpty()) {
            return list;
        }
        for (SyncNoteModel syncNoteModel : arrayList) {
            m45845r(syncNoteModel);
            m45848u(syncNoteModel);
        }
        for (SyncNoteModel syncNoteModel2 : arrayList) {
            if (this.libraryIdMap.containsKey(syncNoteModel2.getParentUniqueId())) {
                syncNoteModel2.setParentUniqueId(this.libraryIdMap.get(syncNoteModel2.getParentUniqueId()));
            }
        }
        m45842C(this.dbProviderBundle.getNoteProvider(ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(this.dstUserId)), arrayList);
        return list;
    }

    /* renamed from: C */
    public final void m45842C(NoteProvider provider, List<? extends SyncNoteModel> modeList) {
        for (SyncNoteModel syncNoteModel : modeList) {
            CopyNoteUtils.INSTANCE.generateUniqueName(provider, syncNoteModel);
            NoteModelProviderKt.saveNote(provider, syncNoteModel);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<MigrateUserNoteListAction> create() {
        Observable<MigrateUserNoteListAction> doFinally = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().doOnNext(new C11922a()).doOnNext(C11923b.f58328e).observeOn(getObserveOn()).doOnNext(new C11924c()).flatMap(new C11925d()).map(new C11926e()).observeOn(getObserveOn()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.tnj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                MigrateUserNoteListAction.m45838o(MigrateUserNoteListAction.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.unj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                MigrateUserNoteListAction.m45839p(MigrateUserNoteListAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    public final void exportUserData() {
        UserPbFactory.INSTANCE.exportToPBFromDB(new UserPBDataContext(this.srcUserId));
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        File asFile = paths.asFile(commonPaths.appUserNoteDir(this.srcUserId));
        if (asFile.exists()) {
            onyx.org.apache.commons.io.FileUtils.copyDirectory(asFile, paths.asFile(commonPaths.userNoteDir(m45846s().getDirPath(), SyncConstant.EXPORT_USER_DATA)));
        }
    }

    @NotNull
    public final CopyNoteListArgs getCopyNoteListArgs() {
        return this.copyNoteListArgs;
    }

    /* renamed from: n */
    public final Observable<?> m45843n() {
        return new CheckMigrateDataIntegrityAction(this.srcUserId, this.dstUserId, this.noteModelMap).build();
    }

    /* renamed from: q */
    public final void m45844q(SyncNoteModel noteModel) {
        final String uniqueId = noteModel.getUniqueId();
        NoteProviderHolder.INSTANCE.withOnce(this.dbProviderBundle, this.srcUserId, uniqueId, new Function1<NoteProviderHolder, Unit>() { // from class: com.onyx.galaxy.note.editor.action.export.MigrateUserNoteListAction$exportDocument$1
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
                PBDataContext pBDataContext = new PBDataContext(it2, uniqueId);
                pBDataContext.setPrintLogToFile(true);
                PBFactory.INSTANCE.exportToPBFromDB(pBDataContext);
            }
        });
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        File asFile = paths.asFile(commonPaths.appDocDir(uniqueId));
        if (asFile.exists()) {
            onyx.org.apache.commons.io.FileUtils.copyDirectory(asFile, paths.asFile(commonPaths.docDir(m45846s().getDirPath(), uniqueId)));
        }
    }

    /* renamed from: r */
    public final void m45845r(SyncNoteModel noteModel) {
        m45844q(noteModel);
    }

    /* renamed from: s */
    public final ExportImportArgs m45846s() {
        return (ExportImportArgs) this.exportImportArgs.getValue();
    }

    /* renamed from: t */
    public final void m45847t(SyncNoteModel noteModel) throws Exception {
        final String uniqueId = noteModel.getUniqueId();
        if (FileUtils.INSTANCE.isFileExist(CommonPaths.INSTANCE.docDir(m45846s().getDirPath(), uniqueId).toAbsolutePath().toString())) {
            final CopyNoteArgs copyNoteArgs = new CopyNoteArgs();
            copyNoteArgs.setUserId(this.dstUserId);
            copyNoteArgs.setSrcDocId(uniqueId);
            copyNoteArgs.setDstDocId(UUIDUtils.INSTANCE.rawUUID());
            copyNoteArgs.setDstParentId(this.libraryIdMap.get(noteModel.getParentUniqueId()));
            copyNoteArgs.setDocNote(noteModel);
            copyNoteArgs.setSrcDirFilePath(m45846s().getDirPath());
            copyNoteArgs.setCopyGlobalPage(true);
            this.copyNoteListArgs.addArgs(copyNoteArgs);
            NoteProviderHolder.INSTANCE.withOnce(this.dbProviderBundle, this.dstUserId, copyNoteArgs.getDstDocId(), new Function1<NoteProviderHolder, Unit>() { // from class: com.onyx.galaxy.note.editor.action.export.MigrateUserNoteListAction$importDocument$1
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
                    PBDataContext pBDataContext = new PBDataContext(it2, uniqueId);
                    pBDataContext.setCopyNoteArgs(copyNoteArgs);
                    pBDataContext.setPrintLogToFile(true);
                    PBFactory.INSTANCE.copyPBDataToDB(pBDataContext);
                    this.m45850w(pBDataContext, copyNoteArgs);
                }
            });
            noteModel.setUniqueId(copyNoteArgs.getDstDocId());
            noteModel.setUser(copyNoteArgs.getUserId());
            noteModel.setParentUniqueId(copyNoteArgs.getDstParentId());
            CopyNoteUtils copyNoteUtils = CopyNoteUtils.INSTANCE;
            copyNoteUtils.updateNotePageInfo(copyNoteArgs, noteModel);
            copyNoteUtils.updateNotePageNameList(copyNoteArgs, noteModel);
            noteModel.setRemovePageList(new PageNameList());
            this.noteModelMap.put(copyNoteArgs.getSrcDocId(), noteModel);
        }
    }

    /* renamed from: u */
    public final void m45848u(SyncNoteModel noteModel) {
        CopyNoteArgs copyNoteArgs = new CopyNoteArgs();
        copyNoteArgs.setUserId(this.dstUserId);
        copyNoteArgs.setSrcDocId(noteModel.getUniqueId());
        copyNoteArgs.setDstDocId(UUIDUtils.INSTANCE.rawUUID());
        copyNoteArgs.setDstParentId(noteModel.getParentUniqueId());
        copyNoteArgs.setDocNote(noteModel);
        copyNoteArgs.setSrcDirFilePath(m45846s().getDirPath());
        CopyNoteUtils.INSTANCE.copyNoteAttr(copyNoteArgs);
        this.libraryIdMap.put(copyNoteArgs.getSrcDocId(), copyNoteArgs.getDstDocId());
        this.noteModelMap.put(copyNoteArgs.getSrcDocId(), noteModel);
        m45849v(copyNoteArgs);
    }

    /* renamed from: v */
    public final void m45849v(CopyNoteArgs copyNoteArgs) {
        ThumbnailPaths thumbnailPaths = ThumbnailPaths.INSTANCE;
        Path appThumbnailPath = thumbnailPaths.appThumbnailPath(copyNoteArgs.getDstDocId());
        Paths.copyFile$default(Paths.INSTANCE, thumbnailPaths.thumbnailPath(copyNoteArgs.getSrcDirFilePath(), copyNoteArgs.getSrcDocId()), appThumbnailPath, false, 2, null);
    }

    /* renamed from: w */
    public final void m45850w(PBDataContext pbDataContext, CopyNoteArgs copyNoteArgs) {
        try {
            StashNoteShapePBDocument.INSTANCE.importStashShape(pbDataContext, copyNoteArgs);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: x */
    public final void m45851x() {
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        onyx.org.apache.commons.io.FileUtils.copyDirectory(paths.asFile(commonPaths.userNoteDir(m45846s().getDirPath(), SyncConstant.EXPORT_USER_DATA)), paths.asFile(commonPaths.appUserNoteDir(this.dstUserId)));
        UserPbFactory userPbFactory = UserPbFactory.INSTANCE;
        UserPBDataContext userPBDataContext = new UserPBDataContext(this.dstUserId);
        userPBDataContext.setCopyNoteListArgs(this.copyNoteListArgs);
        userPbFactory.exportToDBFromPB(userPBDataContext);
    }

    /* renamed from: y */
    public final List<SyncNoteModel> m45852y(DBProviderBundle dbProviderBundle) {
        String stackTraceToString;
        try {
            CBQueryArgs cBQueryArgs = new CBQueryArgs();
            cBQueryArgs.andWith(CouchUtils.INSTANCE.notEqualExpression("status", 2));
            cBQueryArgs.m72251setLimit(NoteConstant.INSTANCE.getCOMMON_BATCH_DATA_COUNT());
            return NoteModelProviderKt.loadNoteListInBatch(dbProviderBundle.getNoteProvider(ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(this.srcUserId)), cBQueryArgs);
        } catch (Exception e) {
            LogFileUtils logFileUtils = LogFileUtils.INSTANCE;
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
            logFileUtils.m32102e(MigrateUserNoteListAction.class, stackTraceToString);
            return new ArrayList();
        }
    }

    /* renamed from: z */
    public final void m45853z() {
        List<SyncNoteModel> m45852y = m45852y(this.dbProviderBundle);
        LogUtils.wTag(MigrateUserNoteListAction.class.getSimpleName(), "migrate start models:" + m45852y.size());
        exportUserData();
        m45841B(m45852y);
        m45840A(m45852y);
        m45851x();
        LogcatGenerator.INSTANCE.logDeviceUserInfo();
    }
}
