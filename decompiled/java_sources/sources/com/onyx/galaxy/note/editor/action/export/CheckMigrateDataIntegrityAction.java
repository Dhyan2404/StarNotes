package com.onyx.galaxy.note.editor.action.export;

import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.bundle.DBProviderBundle;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.CoverProvider;
import com.onyx.android.sdk.replicator.note.p035db.ExcerptCollectionProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.TemplateProvider;
import com.onyx.android.sdk.replicator.note.p035db.VirtualPageQueryArgsKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B+\u0012\u0006\u0010\u0013\u001a\u00020\t\u0012\u0006\u0010\u0015\u001a\u00020\t\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\u0016¢\u0006\u0004\b \u0010!J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J \u0010\r\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0016\u0010\u0010\u001a\u00020\u00052\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u000eH\u0002R\u0014\u0010\u0013\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012R \u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "dstNoteTreeHolder", "", "srcDocId", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModel", "m", "", "importFailDocIds", GoogleApiAvailabilityLight.f29016b, C6998g.f39679a, Constants.STRING_SIG, "srcUserId", C6999h.f39688c, "dstUserId", "", "i", "Ljava/util/Map;", "noteModelMap", "Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "j", "Lkotlin/Lazy;", C4921e.f26528e, "()Lcom/onyx/android/sdk/bundle/DBProviderBundle;", "dbProviderBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CheckMigrateDataIntegrityAction extends RxBaseNoteAppAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String srcUserId;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String dstUserId;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Map<String, SyncNoteModel> noteModelMap;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy dbProviderBundle;

    /* renamed from: com.onyx.galaxy.note.editor.action.export.CheckMigrateDataIntegrityAction$a */
    /* loaded from: classes9.dex */
    public static final class C11917a<T> implements Consumer {
        public C11917a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CheckMigrateDataIntegrityAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckMigrateDataIntegrityAction.this.m45827l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.export.CheckMigrateDataIntegrityAction$b */
    /* loaded from: classes9.dex */
    public static final class C11918b<T, R> implements Function {

        /* renamed from: e */
        public static final C11918b<T, R> f58316e = new C11918b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull CheckMigrateDataIntegrityAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CheckMigrateDataIntegrityAction(@NotNull String srcUserId, @NotNull String dstUserId, @NotNull Map<String, ? extends SyncNoteModel> noteModelMap) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(srcUserId, "srcUserId");
        Intrinsics.checkNotNullParameter(dstUserId, "dstUserId");
        Intrinsics.checkNotNullParameter(noteModelMap, "noteModelMap");
        this.srcUserId = srcUserId;
        this.dstUserId = dstUserId;
        this.noteModelMap = noteModelMap;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DBProviderBundle>() { // from class: com.onyx.galaxy.note.editor.action.export.CheckMigrateDataIntegrityAction$dbProviderBundle$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DBProviderBundle invoke() {
                return KSyncBundle.INSTANCE.getDbProviderBundle();
            }
        });
        this.dbProviderBundle = lazy;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = Observable.just(this).observeOn(getObserveOn()).doOnNext(new C11917a()).map(C11918b.f58316e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m45827l() {
        NoteProvider noteProvider = m45830o().getNoteProvider(ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(this.dstUserId));
        List<String> arrayList = new ArrayList<>();
        for (Map.Entry<String, SyncNoteModel> entry : this.noteModelMap.entrySet()) {
            if (!m45828m(noteProvider, entry.getKey(), entry.getValue())) {
                arrayList.add(entry.getKey());
            }
        }
        m45829n(arrayList);
    }

    /* renamed from: m */
    public final boolean m45828m(NoteProvider dstNoteTreeHolder, String srcDocId, SyncNoteModel syncNoteModel) {
        String uniqueId = syncNoteModel.getUniqueId();
        if (!NoteModelProviderKt.checkNoteExist(dstNoteTreeHolder, uniqueId)) {
            LogFileUtils.INSTANCE.m32102e(CheckMigrateDataIntegrityAction.class, syncNoteModel.getUniqueId() + " migrate fail for note model not save");
            return false;
        }
        NoteProviderHolder noteProviderHolder = new NoteProviderHolder(m45830o(), this.srcUserId, srcDocId);
        NoteProviderHolder noteProviderHolder2 = new NoteProviderHolder(m45830o(), this.dstUserId, uniqueId);
        long loadVirtualPageCount = noteProviderHolder.getVirtualModelProvider().loadVirtualPageCount(VirtualPageQueryArgsKt.loadEnabledVirtualPageQuery());
        long loadVirtualPageCount2 = noteProviderHolder2.getVirtualModelProvider().loadVirtualPageCount(VirtualPageQueryArgsKt.loadEnabledVirtualPageQuery());
        if (loadVirtualPageCount != loadVirtualPageCount2) {
            LogFileUtils.INSTANCE.m32102e(CheckMigrateDataIntegrityAction.class, syncNoteModel.getUniqueId() + " migrate fail for page not save complete srcPageCount: " + loadVirtualPageCount + " + dstPageCount: " + loadVirtualPageCount2);
            return false;
        }
        long loadShapeCount = noteProviderHolder.getNoteShapeProvider().loadShapeCount(ShapeQueryArgsExtKt.shapeCountQuery$default(srcDocId, null, 2, null));
        long loadShapeCount2 = noteProviderHolder2.getNoteShapeProvider().loadShapeCount(ShapeQueryArgsExtKt.shapeCountQuery$default(uniqueId, null, 2, null));
        if (loadShapeCount != loadShapeCount2) {
            LogFileUtils.INSTANCE.m32102e(CheckMigrateDataIntegrityAction.class, syncNoteModel.getUniqueId() + " migrate fail for shape not save complete srcDocShapeCount: " + loadShapeCount + " + dstDocShapeCount: " + loadShapeCount2);
            return false;
        }
        if (!NoteModelProviderKt.noteExist(noteProviderHolder2.getNoteProvider(), srcDocId)) {
            noteProviderHolder.purgeDocData(srcDocId);
            Paths.INSTANCE.deleteDirectory(CommonPaths.INSTANCE.appDocDir(srcDocId));
        }
        LogUtils.wTag(CheckMigrateDataIntegrityAction.class.getSimpleName(), "migrate checkDocumentIntegrity success srcDocId: " + srcDocId + " dstDocId: " + uniqueId);
        return true;
    }

    /* renamed from: n */
    public final void m45829n(List<String> importFailDocIds) {
        ProviderInfoUtils providerInfoUtils = ProviderInfoUtils.INSTANCE;
        ProviderInfo userDataProviderInfo = providerInfoUtils.getUserDataProviderInfo(this.srcUserId);
        NoteProvider noteProvider = m45830o().getNoteProvider(providerInfoUtils.getUserNoteTreeProviderInfo(this.srcUserId));
        ExcerptCollectionProvider excerptCollectionProvider = m45830o().getExcerptCollectionProvider(userDataProviderInfo);
        TemplateProvider templateProvider = m45830o().getTemplateProvider(userDataProviderInfo);
        CoverProvider coverProvider = m45830o().getCoverProvider(userDataProviderInfo);
        NoteModelProviderKt.purgeNoteTree(noteProvider, importFailDocIds);
        NoteTagProviderKt.purgeDocTagList(noteProvider, importFailDocIds);
        excerptCollectionProvider.purgeExcerptCollection();
        Paths.INSTANCE.deleteDirectory(CommonPaths.INSTANCE.appUserPbDir(this.srcUserId));
        MMKVNote mMKVNote = MMKVNote.INSTANCE;
        mMKVNote.resetTemplateOption(this.srcUserId);
        templateProvider.purgeCustomTemplateModel();
        templateProvider.purgeCustomTemplateResource(this.srcUserId);
        mMKVNote.resetCoverOption(this.srcUserId);
        coverProvider.purgeCustomCoverModel();
        coverProvider.purgeCustomCoverResource(this.srcUserId);
    }

    /* renamed from: o */
    public final DBProviderBundle m45830o() {
        return (DBProviderBundle) this.dbProviderBundle.getValue();
    }
}
