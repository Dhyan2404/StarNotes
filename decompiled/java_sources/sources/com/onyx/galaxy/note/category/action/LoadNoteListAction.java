package com.onyx.galaxy.note.category.action;

import android.graphics.BitmapFactory;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBeanList;
import com.onyx.android.sdk.replicator.note.bean.SortData;
import com.onyx.android.sdk.replicator.note.data.thumbnail.ThumbnailRes;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.progress.SyncProgressBundle;
import com.onyx.android.sdk.replicator.progress.bean.SyncDocProgress;
import com.onyx.android.sdk.replicator.progress.p037db.SyncProgressProvider;
import com.onyx.galaxy.note.category.action.sync.LoadNoteSyncProgressAction;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b$\u0010%J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\fH\u0002J\u001a\u0010\u0013\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", GoogleApiAvailabilityLight.f29016b, "noteModelBeanList", C4921e.f26528e, "p", "s", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "noteModelBean", "q", "Lcom/onyx/android/sdk/base/data/Orientation;", "l", "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;", "syncDocProgress", "r", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", C6998g.f39679a, "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "Lcom/onyx/android/sdk/replicator/note/bean/SortData;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/bean/SortData;", "manualSortData", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "i", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;", "j", "Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;", "syncProgressProvider", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadNoteListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1549#2:125\n1620#2,3:126\n1855#2,2:129\n766#2:131\n857#2,2:132\n1549#2:134\n1620#2,3:135\n1855#2,2:138\n*S KotlinDebug\n*F\n+ 1 LoadNoteListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteListAction\n*L\n60#1:125\n60#1:126,3\n62#1:129,2\n76#1:131\n76#1:132,2\n76#1:134\n76#1:135,3\n84#1:138,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadNoteListAction extends BaseNoteManagementAction<NoteModelBeanList> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public CBQueryArgs queryArgs;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final SortData manualSortData;

    /* renamed from: i, reason: from kotlin metadata */
    public NoteProvider noteProvider;

    /* renamed from: j, reason: from kotlin metadata */
    public SyncProgressProvider syncProgressProvider;

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteListAction$a */
    /* loaded from: classes9.dex */
    public static final class C10873a<T> implements Consumer {
        public C10873a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadNoteListAction.this.noteProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteListAction$b */
    /* loaded from: classes9.dex */
    public static final class C10874b<T> implements Consumer {
        public C10874b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadNoteListAction.this.m42329m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteListAction$c */
    /* loaded from: classes9.dex */
    public static final class C10875c<T, R> implements Function {
        public C10875c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteModelBeanList apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadNoteListAction.this.m42330n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteListAction$d */
    /* loaded from: classes9.dex */
    public static final class C10876d<T, R> implements Function {
        public C10876d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteModelBeanList> apply(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadNoteListAction.this.m42331o(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteListAction$e */
    /* loaded from: classes9.dex */
    public static final class C10877e<T, R> implements Function {
        public C10877e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteModelBeanList> apply(@NotNull NoteModelBeanList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadNoteListAction.this.m42332p(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteListAction$f */
    /* loaded from: classes9.dex */
    public static final class C10878f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NoteModelBeanList f53833f;

        public C10878f(NoteModelBeanList noteModelBeanList) {
            this.f53833f = noteModelBeanList;
        }

        /* renamed from: a */
        public final void m42341a(@NotNull LoadNoteSyncProgressAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LoadNoteListAction.this.m42335s(this.f53833f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m42341a((LoadNoteSyncProgressAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LoadNoteListAction$g */
    /* loaded from: classes9.dex */
    public static final class C10879g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ NoteModelBeanList f53834e;

        public C10879g(NoteModelBeanList noteModelBeanList) {
            this.f53834e = noteModelBeanList;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteModelBeanList apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f53834e;
        }
    }

    public /* synthetic */ LoadNoteListAction(CBQueryArgs cBQueryArgs, SortData sortData, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cBQueryArgs, (i & 2) != 0 ? null : sortData);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<NoteModelBeanList> create() {
        Observable<NoteModelBeanList> observeOn = createNoteProviderObservable().doOnNext(new C10873a()).doOnNext(new C10874b()).map(new C10875c()).flatMap(new C10876d()).flatMap(new C10877e()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final Orientation m42328l(NoteModelBean noteModelBean) {
        String obj = ThumbnailPaths.INSTANCE.appThumbnailPath(noteModelBean.getUniqueId()).toAbsolutePath().toString();
        if (!new File(obj).exists()) {
            Debug debug = Debug.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append("thumbnail doest not exists return orientation by file:");
            Orientation orientation = Orientation.PORTRAIT;
            sb.append(orientation);
            debug.m32035d(LoadNoteListAction.class, sb.toString(), new Object[0]);
            return orientation;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(obj, options);
        Orientation orientation2 = options.outHeight >= options.outWidth ? Orientation.PORTRAIT : Orientation.LANDSCAPE;
        Debug.INSTANCE.m32035d(LoadNoteListAction.class, "decode cover thumbnail orientation by file:" + orientation2, new Object[0]);
        return orientation2;
    }

    /* renamed from: m */
    public final void m42329m() {
        this.syncProgressProvider = KSyncBundle.INSTANCE.getUserSyncProgressProvider(AccountDataBundle.INSTANCE.getSyncUserId());
    }

    /* renamed from: n */
    public final NoteModelBeanList m42330n() {
        int collectionSizeOrDefault;
        NoteModelBeanList noteModelBeanList = new NoteModelBeanList();
        CBQueryArgs m72249clone = this.queryArgs.m72249clone();
        m72249clone.m72251setLimit(4000);
        m72249clone.setSelectResults(SyncNoteModel.INSTANCE.getNoteSelectResult());
        NoteProvider noteProvider = this.noteProvider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteProvider");
            noteProvider = null;
        }
        List<SyncNoteModel> loadNoteListInBatch = NoteModelProviderKt.loadNoteListInBatch(noteProvider, m72249clone);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadNoteListInBatch, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadNoteListInBatch.iterator();
        while (it2.hasNext()) {
            arrayList.add(new NoteModelBean((SyncNoteModel) it2.next()));
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            m42333q((NoteModelBean) it3.next());
        }
        noteModelBeanList.addAll(arrayList);
        return noteModelBeanList;
    }

    /* renamed from: o */
    public final Observable<NoteModelBeanList> m42331o(NoteModelBeanList noteModelBeanList) {
        SortData sortData = this.manualSortData;
        if (sortData != null) {
            return new LoadNoteSortDataAction(noteModelBeanList, sortData).build();
        }
        Observable<NoteModelBeanList> just = Observable.just(noteModelBeanList);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: p */
    public final Observable<NoteModelBeanList> m42332p(NoteModelBeanList noteModelBeanList) {
        int collectionSizeOrDefault;
        List list;
        ArrayList arrayList = new ArrayList();
        for (NoteModelBean noteModelBean : noteModelBeanList) {
            if (noteModelBean.isDocument()) {
                arrayList.add(noteModelBean);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((NoteModelBean) it2.next()).getUniqueId());
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList2);
        Observable<NoteModelBeanList> map = new LoadNoteSyncProgressAction(list).build().map(new C10878f(noteModelBeanList)).map(new C10879g(noteModelBeanList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final void m42333q(final NoteModelBean noteModelBean) {
        if (noteModelBean.isLibrary()) {
            return;
        }
        ThumbnailRes thumbnailRes = noteModelBean.getThumbnailRes();
        noteModelBean.setPortrait(((Orientation) AnyKt.getOrElse(thumbnailRes != null ? thumbnailRes.getOrientation() : null, new Function0<Orientation>() { // from class: com.onyx.galaxy.note.category.action.LoadNoteListAction$setIsPortrait$orientation$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Orientation invoke() {
                Orientation m42328l;
                m42328l = LoadNoteListAction.this.m42328l(noteModelBean);
                return m42328l;
            }
        })).isPortrait());
    }

    /* renamed from: r */
    public final void m42334r(NoteModelBean noteModelBean, SyncDocProgress syncDocProgress) {
        if (noteModelBean.isDocument()) {
            noteModelBean.setDocProgress(syncDocProgress);
        }
    }

    /* renamed from: s */
    public final void m42335s(NoteModelBeanList noteModelBeanList) {
        for (NoteModelBean noteModelBean : noteModelBeanList) {
            m42334r(noteModelBean, SyncProgressBundle.INSTANCE.getSyncProgressMap().get(noteModelBean.getUniqueId()));
        }
    }

    public LoadNoteListAction(@NotNull CBQueryArgs queryArgs, @Nullable SortData sortData) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        this.queryArgs = queryArgs;
        this.manualSortData = sortData;
    }
}
