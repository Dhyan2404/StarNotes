package com.onyx.galaxy.note.category.action;

import android.app.Dialog;
import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction;
import com.onyx.android.sdk.universal.editor.events.note.DeleteTagShapesEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnDeleteTagEvent;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.settings.data.NoteConfigKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\u0006\u0010!\u001a\u00020\f\u0012\u0006\u0010$\u001a\u00020\u0005\u0012\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001b0%¢\u0006\u0004\b.\u0010/J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\tH\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0010\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u000eH\u0002J\b\u0010\u0012\u001a\u00020\u000eH\u0002J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\tH\u0002J\u0016\u0010\u0016\u001a\u00020\u000e2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00130\tH\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010$\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001b0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010+\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000f\u0010*R\u001c\u0010,\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010'R\u001c\u0010-\u001a\b\u0012\u0004\u0012\u00020\f0\t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010'¨\u00060"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/DeleteTagAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "pageCount", "u", "s", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "r", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "t", "", "l", "q", "p", C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "m", "pageTagList", GoogleApiAvailabilityLight.f29016b, "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "context", "", C6999h.f39688c, Constants.STRING_SIG, "title", "i", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "node", "j", "I", "tagCount", "", C4921e.f26537n, "Ljava/util/List;", "tagIds", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteTagProvider", "notes", "tags", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;ILjava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteTagAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteTagAction.kt\ncom/onyx/galaxy/note/category/action/DeleteTagAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,215:1\n766#2:216\n857#2,2:217\n1855#2,2:219\n1603#2,9:221\n1855#2:230\n1856#2:232\n1612#2:233\n766#2:234\n857#2,2:235\n1549#2:237\n1620#2,3:238\n1855#2,2:241\n1855#2,2:244\n1#3:231\n215#4:243\n216#4:246\n*S KotlinDebug\n*F\n+ 1 DeleteTagAction.kt\ncom/onyx/galaxy/note/category/action/DeleteTagAction\n*L\n78#1:216\n78#1:217,2\n159#1:219,2\n164#1:221,9\n164#1:230\n164#1:232\n164#1:233\n165#1:234\n165#1:235,2\n167#1:237\n167#1:238,3\n189#1:241,2\n205#1:244,2\n164#1:231\n204#1:243\n204#1:246\n*E\n"})
/* loaded from: classes9.dex */
public final class DeleteTagAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String title;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final SyncTagModel node;

    /* renamed from: j, reason: from kotlin metadata */
    public final int tagCount;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<String> tagIds;

    /* renamed from: l, reason: from kotlin metadata */
    public NoteProvider noteTagProvider;

    /* renamed from: m, reason: from kotlin metadata */
    public List<? extends SyncNoteModel> notes;

    /* renamed from: n, reason: from kotlin metadata */
    public List<? extends SyncTagModel> tags;

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteTagAction$a */
    /* loaded from: classes9.dex */
    public static final class C10825a<T> implements Consumer {
        public C10825a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteTagAction.this.noteTagProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteTagAction$b */
    /* loaded from: classes9.dex */
    public static final class C10826b<T, R> implements Function {
        public C10826b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteTagAction.this.m42248r();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteTagAction$c */
    /* loaded from: classes9.dex */
    public static final class C10827c<T> implements Consumer {
        public C10827c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteTagAction.this.notes = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteTagAction$d */
    /* loaded from: classes9.dex */
    public static final class C10828d<T, R> implements Function {
        public C10828d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncTagModel> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteTagAction.this.m42250t();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteTagAction$e */
    /* loaded from: classes9.dex */
    public static final class C10829e<T> implements Consumer {
        public C10829e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncTagModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteTagAction.this.tags = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteTagAction$f */
    /* loaded from: classes9.dex */
    public static final class C10830f<T, R> implements Function {
        public C10830f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull List<? extends SyncTagModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Integer.valueOf(DeleteTagAction.this.m42249s());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteTagAction$g */
    /* loaded from: classes9.dex */
    public static final class C10831g<T, R> implements Function {
        public C10831g() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42258a(int i) {
            return DeleteTagAction.this.m42251u(i);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42258a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteTagAction$h */
    /* loaded from: classes9.dex */
    public static final class C10832h<T> implements Consumer {
        public C10832h() {
        }

        /* renamed from: a */
        public final void m42259a(boolean z) {
            if (z) {
                DeleteTagAction.this.m42242l();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42259a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteTagAction$i */
    /* loaded from: classes9.dex */
    public static final class C10833i<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<String> f53754e;

        public C10833i(List<String> list) {
            this.f53754e = list;
        }

        /* renamed from: a */
        public final void m42260a(boolean z) {
            KSyncBundle.INSTANCE.post(new SyncChangedNoteTreeEvent(this.f53754e));
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42260a(((Boolean) obj).booleanValue());
        }
    }

    public DeleteTagAction(@NotNull Context context, @NotNull String title, @NotNull SyncTagModel node, int i, @NotNull List<String> tagIds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(node, "node");
        Intrinsics.checkNotNullParameter(tagIds, "tagIds");
        this.context = context;
        this.title = title;
        this.node = node;
        this.tagCount = i;
        this.tagIds = tagIds;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = createNoteProviderObservable().doOnNext(new C10825a()).map(new C10826b()).doOnNext(new C10827c()).map(new C10828d()).doOnNext(new C10829e()).map(new C10830f()).observeOn(getMainUIScheduler()).flatMap(new C10831g()).observeOn(getObserveOn()).doOnNext(new C10832h()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final void m42242l() {
        m42246p();
        m42247q();
        m42245o();
    }

    /* renamed from: m */
    public final List<PageTagModel> m42243m() {
        List<PageTagModel> emptyList;
        if (CollectionKt.isNullOrEmpty(this.tagIds)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        NoteProvider noteProvider = this.noteTagProvider;
        NoteProvider noteProvider2 = null;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteTagProvider");
            noteProvider = null;
        }
        List<PageTagModel> loadPageTagList = NotePageTagProviderKt.loadPageTagList(noteProvider, NotePageTagProviderKt.createEnabledPageTagQueryArgs(this.tagIds));
        for (PageTagModel pageTagModel : loadPageTagList) {
            pageTagModel.setStatus(1);
            pageTagModel.resetRevisionId();
        }
        NoteProvider noteProvider3 = this.noteTagProvider;
        if (noteProvider3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteTagProvider");
        } else {
            noteProvider2 = noteProvider3;
        }
        NotePageTagProviderKt.savePageTagModels(noteProvider2, loadPageTagList);
        DocCollectionBundle.INSTANCE.postEvent(new DeleteTagShapesEvent(this.tagIds));
        return loadPageTagList;
    }

    /* renamed from: n */
    public final void m42244n(List<? extends PageTagModel> pageTagList) {
        List<? extends PageTagModel> list = pageTagList;
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        for (Map.Entry entry : CollectionKt.toMapCollection(list, new Function1<PageTagModel, String>() { // from class: com.onyx.galaxy.note.category.action.DeleteTagAction$deletePageTagThumbnail$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull PageTagModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getDocumentId();
            }
        }, new Function1<PageTagModel, String>() { // from class: com.onyx.galaxy.note.category.action.DeleteTagAction$deletePageTagThumbnail$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull PageTagModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getPageUniqueId();
            }
        }, new Function0<Set<String>>() { // from class: com.onyx.galaxy.note.category.action.DeleteTagAction$deletePageTagThumbnail$3
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Set<String> invoke() {
                return new LinkedHashSet();
            }
        }).entrySet()) {
            for (String str : (Iterable) entry.getValue()) {
                CBQueryArgs createEnabledPageTagQueryArgs = NotePageTagProviderKt.createEnabledPageTagQueryArgs((String) entry.getKey(), str);
                NoteProvider noteProvider = this.noteTagProvider;
                if (noteProvider == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("noteTagProvider");
                    noteProvider = null;
                }
                if (NotePageTagProviderKt.loadPageTagListCount(noteProvider, createEnabledPageTagQueryArgs) <= 0) {
                    FileUtils.INSTANCE.deleteFile(ThumbnailPaths.INSTANCE.appPageThumbnailPath((String) entry.getKey(), str).toAbsolutePath().toString());
                }
            }
        }
    }

    /* renamed from: o */
    public final void m42245o() {
        m42244n(m42243m());
    }

    /* renamed from: p */
    public final void m42246p() {
        List distinct;
        int collectionSizeOrDefault;
        List mutableList;
        List<? extends SyncNoteModel> list;
        boolean isBlank;
        List<? extends SyncNoteModel> list2 = this.notes;
        if (list2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list2 = null;
        }
        for (SyncNoteModel syncNoteModel : list2) {
            CollectionsKt__MutableCollectionsKt.removeAll((List) syncNoteModel.getTagIdList(), (Function1) new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.category.action.DeleteTagAction$deleteTagInNote$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull String it2) {
                    List list3;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    list3 = DeleteTagAction.this.tagIds;
                    return Boolean.valueOf(list3.contains(it2));
                }
            });
            syncNoteModel.beforeSave();
        }
        List<? extends SyncNoteModel> list3 = this.notes;
        if (list3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list3 = null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list3.iterator();
        while (it2.hasNext()) {
            String parentUniqueId = ((SyncNoteModel) it2.next()).getParentUniqueId();
            if (parentUniqueId != null) {
                arrayList.add(parentUniqueId);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            isBlank = StringsKt__StringsJVMKt.isBlank((String) obj);
            if (!isBlank) {
                arrayList2.add(obj);
            }
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList2);
        List<? extends SyncNoteModel> list4 = this.notes;
        if (list4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list4 = null;
        }
        List<? extends SyncNoteModel> list5 = list4;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list5, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it3 = list5.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((SyncNoteModel) it3.next()).getUniqueId());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList3);
        CollectionKt.safeAddAll(mutableList, this.tagIds);
        new UpdateFolderCoverAction(distinct).build().subscribe();
        List<? extends SyncNoteModel> list6 = this.notes;
        if (list6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        } else {
            list = list6;
        }
        new UpdateNoteAction(list, false, false, 6, null).build().doOnNext(new C10833i(mutableList)).subscribe();
    }

    /* renamed from: q */
    public final void m42247q() {
        NoteProvider noteProvider = this.noteTagProvider;
        List<? extends SyncTagModel> list = null;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteTagProvider");
            noteProvider = null;
        }
        List<? extends SyncTagModel> list2 = this.tags;
        if (list2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tags");
        } else {
            list = list2;
        }
        NoteTagProviderKt.deleteTagList(noteProvider, list);
        DocCollectionBundle.INSTANCE.postEvent(new OnDeleteTagEvent(this.node));
        Debug.INSTANCE.m32042d(Reflection.getOrCreateKotlinClass(DeleteTagAction.class), "delete tag SyncTagModel:" + JSONUtils.INSTANCE.toJson(this.node) + ' ', new Object[0]);
    }

    /* renamed from: r */
    public final List<SyncNoteModel> m42248r() {
        CBQueryArgs noteByTagIdsArgs = NoteConfigKt.getNoteByTagIdsArgs(this.tagIds);
        noteByTagIdsArgs.m72251setLimit(4000);
        noteByTagIdsArgs.setSelectResults(SyncNoteModel.INSTANCE.getNoteSelectResult());
        NoteProvider noteProvider = this.noteTagProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteTagProvider");
            noteProvider = null;
        }
        return NoteModelProviderKt.loadNoteListInBatch(noteProvider, noteByTagIdsArgs);
    }

    /* renamed from: s */
    public final int m42249s() {
        if (CollectionKt.isNullOrEmpty(this.tagIds)) {
            return 0;
        }
        NoteProvider noteProvider = this.noteTagProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteTagProvider");
            noteProvider = null;
        }
        return (int) NotePageTagProviderKt.loadPageTagListCount(noteProvider, NotePageTagProviderKt.createEnabledPageTagQueryArgs(this.tagIds));
    }

    /* renamed from: t */
    public final List<SyncTagModel> m42250t() {
        CBQueryArgs createDocTagQueryArgs = NoteTagProviderKt.createDocTagQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = createDocTagQueryArgs.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, this.tagIds));
        NoteProvider noteProvider = this.noteTagProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteTagProvider");
            noteProvider = null;
        }
        return NoteTagProviderKt.loadTagList(noteProvider, andWith);
    }

    /* renamed from: u */
    public final Observable<Boolean> m42251u(int pageCount) {
        int lastIndexOf$default;
        List<? extends SyncNoteModel> list = this.notes;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notes");
            list = null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (true) {
            boolean z = false;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            SyncNoteModel syncNoteModel = (SyncNoteModel) next;
            if (syncNoteModel.isDocument() && syncNoteModel.isEnabled()) {
                z = true;
            }
            if (z) {
                arrayList.add(next);
            }
        }
        int size = arrayList.size() + pageCount;
        if (size == 0) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        String valueOf = String.valueOf(size);
        String string = this.context.getString(this.tagCount > 0 ? C10651R.string.dialog_delete_tag_content_with_tag : C10651R.string.dialog_delete_tag_content);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(string, Arrays.copyOf(new Object[]{this.title, valueOf}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) format, valueOf, 0, false, 6, (Object) null);
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(this.context.getColor(C10651R.color.text_enable));
        String format2 = String.format(format, Arrays.copyOf(new Object[]{this.title, this.context}, 2));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        SpannableString spannableString = new SpannableString(format2);
        spannableString.setSpan(foregroundColorSpan, lastIndexOf$default, valueOf.length() + lastIndexOf$default, 33);
        new CommonDialog.Builder(this.context).setTitle(C10651R.string.dialog_delete_tag_title).setContentSpannable(spannableString).setConfirmText(C10651R.string.confirm).setCancelText(C10651R.string.cancel).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.category.action.DeleteTagAction$showConfirmDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CommonDialog commonDialog, String str) {
                invoke2(commonDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CommonDialog commonDialog, @NotNull String str) {
                Intrinsics.checkNotNullParameter(commonDialog, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                RxjavaKt.done(create, Boolean.TRUE);
            }
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.category.action.DeleteTagAction$showConfirmDialog$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Dialog dialog) {
                invoke2(dialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Dialog dialog) {
                RxjavaKt.done(create, Boolean.FALSE);
            }
        }).setCancelable(false).create().show();
        return create;
    }
}
