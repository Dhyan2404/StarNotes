package com.onyx.galaxy.note.settings.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.NoteDustbinFuncType;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.event.StatisticsNoteDustbinEvent;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction;
import com.onyx.galaxy.note.category.action.UpdateNoteAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnRecoverNoteEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u000f¢\u0006\u0004\b \u0010!J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\u0005H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\b\u0010\f\u001a\u00020\u0005H\u0002J\b\u0010\r\u001a\u00020\u0005H\u0002J\b\u0010\u000e\u001a\u00020\u0005H\u0002J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u0005H\u0002R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00130\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0015R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001e\u0010\u0015¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "t", "u", "s", "q", "m", "v", "r", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "p", "l", "", C6998g.f39679a, "Ljava/util/List;", "noteIds", "", C6999h.f39688c, "changedDocIds", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "i", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "j", "notes", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRestoreDustbinNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RestoreDustbinNoteAction.kt\ncom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1855#2,2:181\n1855#2,2:183\n1603#2,9:185\n1855#2:194\n1856#2:196\n1612#2:197\n766#2:198\n857#2,2:199\n1855#2,2:201\n1549#2:203\n1620#2,3:204\n1549#2:207\n1620#2,3:208\n1549#2:211\n1620#2,3:212\n1855#2,2:215\n1#3:195\n*S KotlinDebug\n*F\n+ 1 RestoreDustbinNoteAction.kt\ncom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction\n*L\n75#1:181,2\n93#1:183,2\n100#1:185,9\n100#1:194\n100#1:196\n100#1:197\n101#1:198\n101#1:199,2\n107#1:201,2\n169#1:203\n169#1:204,3\n172#1:207\n172#1:208,3\n172#1:211\n172#1:212,3\n174#1:215,2\n100#1:195\n*E\n"})
/* loaded from: classes9.dex */
public final class RestoreDustbinNoteAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> noteIds;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> changedDocIds;

    /* renamed from: i, reason: from kotlin metadata */
    public NoteProvider provider;

    /* renamed from: j, reason: from kotlin metadata */
    public List<? extends SyncNoteModel> notes;

    /* renamed from: com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C12649a<T> implements Consumer {
        public C12649a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RestoreDustbinNoteAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C12650b<T> implements Consumer {
        public C12650b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RestoreDustbinNoteAction restoreDustbinNoteAction = RestoreDustbinNoteAction.this;
            restoreDustbinNoteAction.notes = restoreDustbinNoteAction.m50690p();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C12651c<T, R> implements Function {
        public C12651c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RestoreDustbinNoteAction.this.m50693s();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C12652d<T, R> implements Function {
        public C12652d() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m50700a(boolean z) {
            return RestoreDustbinNoteAction.this.m50695u();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m50700a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction$e */
    /* loaded from: classes9.dex */
    public static final class C12653e<T, R> implements Function {
        public C12653e() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m50701a(boolean z) {
            return RestoreDustbinNoteAction.this.m50696v();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m50701a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction$f */
    /* loaded from: classes9.dex */
    public static final class C12654f<T> implements Consumer {
        public C12654f() {
        }

        /* renamed from: a */
        public final void m50702a(boolean z) {
            RestoreDustbinNoteAction.this.m50694t();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50702a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction$g */
    /* loaded from: classes9.dex */
    public static final class C12655g<T, R> implements Function {

        /* renamed from: e */
        public static final C12655g<T, R> f61456e = new C12655g<>();

        @NotNull
        /* renamed from: a */
        public final Boolean m50703a(boolean z) {
            return Boolean.TRUE;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m50703a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction$h */
    /* loaded from: classes9.dex */
    public static final class C12656h<T> implements Consumer {
        public C12656h() {
        }

        /* renamed from: a */
        public final void m50704a(boolean z) {
            RestoreDustbinNoteAction.this.m50691q();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50704a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction$i */
    /* loaded from: classes9.dex */
    public static final class C12657i<T, R> implements Function {

        /* renamed from: e */
        public static final C12657i<T, R> f61458e = new C12657i<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull StartNoteDocSyncAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction$j */
    /* loaded from: classes9.dex */
    public static final class C12658j<T, R> implements Function {

        /* renamed from: e */
        public static final C12658j<T, R> f61459e = new C12658j<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.FALSE;
        }
    }

    public RestoreDustbinNoteAction(@NotNull List<String> noteIds) {
        Intrinsics.checkNotNullParameter(noteIds, "noteIds");
        this.noteIds = noteIds;
        this.changedDocIds = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = createNoteProviderObservable().doOnNext(new C12649a()).doOnNext(new C12650b()).flatMap(new C12651c()).flatMap(new C12652d()).flatMap(new C12653e()).doOnNext(new C12654f()).map(C12655g.f61456e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m50686l() {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        List<? extends SyncNoteModel> list = this.notes;
        NoteProvider noteProvider = null;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        }
        if (list.isEmpty()) {
            return;
        }
        CBQueryArgs createPageTagQueryArgs = NotePageTagProviderKt.createPageTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        createPageTagQueryArgs.andWith(couchUtils.nullOrEqualExpression("status", 1));
        List<? extends SyncNoteModel> list2 = this.notes;
        if (list2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list2 = null;
        }
        List<? extends SyncNoteModel> list3 = list2;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list3.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SyncNoteModel) it2.next()).getUniqueId());
        }
        createPageTagQueryArgs.andWith(couchUtils.inExpression("documentId", arrayList));
        NoteProvider noteProvider2 = this.provider;
        if (noteProvider2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider2 = null;
        }
        List<PageTagModel> loadPageTagList = NotePageTagProviderKt.loadPageTagList(noteProvider2, createPageTagQueryArgs);
        NoteProvider noteProvider3 = this.provider;
        if (noteProvider3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider3 = null;
        }
        List<PageTagModel> list4 = loadPageTagList;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list4, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list4.iterator();
        while (it3.hasNext()) {
            arrayList2.add(((PageTagModel) it3.next()).getTagId());
        }
        List<SyncTagModel> loadTagById = NoteTagProviderKt.loadTagById(noteProvider3, arrayList2);
        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadTagById, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
        Iterator<T> it4 = loadTagById.iterator();
        while (it4.hasNext()) {
            arrayList3.add(((SyncTagModel) it4.next()).getUniqueId());
        }
        for (PageTagModel pageTagModel : list4) {
            pageTagModel.setStatus(!arrayList3.contains(pageTagModel.getTagId()) ? 1 : 0);
            pageTagModel.resetRevisionId();
        }
        NoteProvider noteProvider4 = this.provider;
        if (noteProvider4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
        } else {
            noteProvider = noteProvider4;
        }
        NotePageTagProviderKt.savePageTagModels(noteProvider, loadPageTagList);
    }

    /* renamed from: m */
    public final void m50687m() {
        NoteProvider noteProvider;
        List<? extends SyncNoteModel> list = this.notes;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        }
        for (SyncNoteModel syncNoteModel : list) {
            NoteProvider noteProvider2 = this.provider;
            if (noteProvider2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
                noteProvider = null;
            } else {
                noteProvider = noteProvider2;
            }
            String title = syncNoteModel.getTitle();
            Intrinsics.checkNotNull(title);
            syncNoteModel.setTitle(NoteModelProviderKt.generateUniqueName$default(noteProvider, title, "_1", null, 4, null));
            syncNoteModel.beforeSave();
        }
    }

    /* renamed from: n */
    public final void m50688n() {
        List<? extends SyncNoteModel> list = this.notes;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        }
        for (final SyncNoteModel syncNoteModel : list) {
            NoteProvider noteProvider = this.provider;
            if (noteProvider == null) {
                Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
                noteProvider = null;
            }
            boolean hasNoteData = NoteModelProviderKt.hasNoteData(noteProvider, new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction$handleParentId$hasData$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                    invoke2(cBQueryArgs);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull CBQueryArgs hasNoteData2) {
                    Intrinsics.checkNotNullParameter(hasNoteData2, "$this$hasNoteData");
                    CouchUtils couchUtils = CouchUtils.INSTANCE;
                    hasNoteData2.andWith(couchUtils.equalOrNullExpression(CouchFieldKey.KEY_UNIQUE_ID, SyncNoteModel.this.getParentUniqueId()));
                    hasNoteData2.andWith(couchUtils.equalExpression("type", 0));
                }
            });
            syncNoteModel.setStatus(1);
            if (!hasNoteData) {
                syncNoteModel.setParentUniqueId(null);
            }
            CollectionKt.safeAdd(this.changedDocIds, syncNoteModel.getParentUniqueId());
        }
    }

    /* renamed from: o */
    public final void m50689o() {
        List<? extends SyncNoteModel> list = this.notes;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        }
        Iterator<? extends SyncNoteModel> it2 = list.iterator();
        while (it2.hasNext()) {
            List<String> tagIdList = it2.next().getTagIdList();
            if (tagIdList.isEmpty()) {
                return;
            }
            Iterator<String> it3 = tagIdList.iterator();
            while (it3.hasNext()) {
                final String next = it3.next();
                NoteProvider noteProvider = this.provider;
                if (noteProvider == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
                    noteProvider = null;
                }
                if (NoteTagProviderKt.hasNoteTag(noteProvider, new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.galaxy.note.settings.action.RestoreDustbinNoteAction$handleTagId$hasNoteTag$1
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
                    public final void invoke2(@NotNull CBQueryArgs hasNoteTag) {
                        Intrinsics.checkNotNullParameter(hasNoteTag, "$this$hasNoteTag");
                        hasNoteTag.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, next));
                    }
                })) {
                    CollectionKt.safeAdd(this.changedDocIds, next);
                } else {
                    it3.remove();
                }
            }
        }
    }

    /* renamed from: p */
    public final List<SyncNoteModel> m50690p() {
        List<SyncNoteModel> emptyList;
        if (CollectionKt.isNullOrEmpty(this.noteIds)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.m72251setLimit(4000);
        cBQueryArgs.setSelectResults(SyncNoteModel.INSTANCE.getNoteSelectResult());
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, this.noteIds));
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 0));
        cBQueryArgs.andWith(couchUtils.equalExpression("type", 1));
        NoteProvider noteProvider = this.provider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider = null;
        }
        return NoteModelProviderKt.loadNoteListInBatch(noteProvider, cBQueryArgs);
    }

    /* renamed from: q */
    public final void m50691q() {
        DocCollectionBundle.INSTANCE.postEvent(new OnRecoverNoteEvent());
        KSyncBundle.INSTANCE.post(new SyncChangedNoteTreeEvent(this.changedDocIds));
    }

    /* renamed from: r */
    public final void m50692r() {
        List<? extends SyncNoteModel> list = this.notes;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            VirtualModelProvider userVirtualModelProvider = KSyncBundle.INSTANCE.getUserVirtualModelProvider(((SyncNoteModel) it2.next()).getUniqueId());
            VirtualDocModel loadVirtualDocModel = userVirtualModelProvider.loadVirtualDocModel();
            if (loadVirtualDocModel != null) {
                loadVirtualDocModel.setViewportId("");
                userVirtualModelProvider.saveVirtualDocModel(loadVirtualDocModel);
            }
        }
    }

    /* renamed from: s */
    public final Observable<Boolean> m50693s() {
        List<? extends SyncNoteModel> list;
        List<? extends SyncNoteModel> list2 = this.notes;
        if (list2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list2 = null;
        }
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(this.changedDocIds, ((SyncNoteModel) it2.next()).getUniqueId());
        }
        m50687m();
        m50688n();
        m50689o();
        m50686l();
        m50692r();
        List<? extends SyncNoteModel> list3 = this.notes;
        if (list3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        } else {
            list = list3;
        }
        Observable<Boolean> doOnNext = new UpdateNoteAction(list, false, false, 6, null).build().doOnNext(new C12656h());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: t */
    public final void m50694t() {
        StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteDustbinEvent(NoteDustbinFuncType.RESTORE));
    }

    /* renamed from: u */
    public final Observable<Boolean> m50695u() {
        NoteCloudSyncCheckArgs noteCloudSyncCheckArgs = new NoteCloudSyncCheckArgs();
        noteCloudSyncCheckArgs.setCheckConfig(false);
        Observable<Boolean> onErrorReturn = new StartNoteDocSyncAction(new StartReplicatorBean(0, false, false, false, CollectionKt.copy(this.noteIds), null, false, 111, null), noteCloudSyncCheckArgs).build().map(C12657i.f61458e).onErrorReturn(C12658j.f61459e);
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }

    /* renamed from: v */
    public final Observable<Boolean> m50696v() {
        List<? extends SyncNoteModel> list = this.notes;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            String parentUniqueId = ((SyncNoteModel) it2.next()).getParentUniqueId();
            if (parentUniqueId != null) {
                arrayList.add(parentUniqueId);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (StringKt.isNotBlank((String) obj)) {
                arrayList2.add(obj);
            }
        }
        return new UpdateFolderCoverAction(arrayList2).build();
    }
}
