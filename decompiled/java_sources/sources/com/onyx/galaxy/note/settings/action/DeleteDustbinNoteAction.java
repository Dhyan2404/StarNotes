package com.onyx.galaxy.note.settings.action;

import android.app.Dialog;
import android.content.Context;
import com.blankj.utilcode.util.LogUtils;
import com.couchbase.lite.SelectResult;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.NoteDustbinFuncType;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.NoteCountChanged;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.event.StatisticsNoteDustbinEvent;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncForceDeletedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NotePageTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.SortProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.settings.event.DeleteDustbinNoteEvent;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\u0005H\u0002J\b\u0010\u000b\u001a\u00020\u0005H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "p", "q", "l", "m", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "context", "", "", C6999h.f39688c, "Ljava/util/List;", "noteIds", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "i", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;", "j", "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;", "sortProvider", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteDustbinNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteDustbinNoteAction.kt\ncom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n37#2,2:117\n1549#3:119\n1620#3,3:120\n1855#3,2:123\n*S KotlinDebug\n*F\n+ 1 DeleteDustbinNoteAction.kt\ncom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction\n*L\n109#1:117,2\n113#1:119\n113#1:120,3\n114#1:123,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DeleteDustbinNoteAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> noteIds;

    /* renamed from: i, reason: from kotlin metadata */
    public NoteProvider provider;

    /* renamed from: j, reason: from kotlin metadata */
    public SortProvider sortProvider;

    /* renamed from: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C12631a<T> implements Consumer {
        public C12631a() {
        }

        /* renamed from: a */
        public final void m50639a(boolean z) {
            DeleteDustbinNoteAction.this.m50637p();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50639a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C12632b<T> implements Consumer {
        public C12632b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteDustbinNoteAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C12633c<T, R> implements Function {
        public C12633c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SortProvider> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteDustbinNoteAction.this.createSortProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C12634d<T> implements Consumer {
        public C12634d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SortProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteDustbinNoteAction.this.sortProvider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$e */
    /* loaded from: classes9.dex */
    public static final class C12635e<T, R> implements Function {
        public C12635e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull SortProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteDustbinNoteAction.this.m50638q();
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$f */
    /* loaded from: classes9.dex */
    public static final class C12636f<T> implements Predicate {

        /* renamed from: e */
        public static final C12636f<T> f61423e = new C12636f<>();

        /* renamed from: a */
        public final boolean m50644a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m50644a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$g */
    /* loaded from: classes9.dex */
    public static final class C12637g<T> implements Consumer {
        public C12637g() {
        }

        /* renamed from: a */
        public final void m50645a(boolean z) {
            DeleteDustbinNoteAction.this.m50636o();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50645a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$h */
    /* loaded from: classes9.dex */
    public static final class C12638h<T> implements Consumer {
        public C12638h() {
        }

        /* renamed from: a */
        public final void m50646a(boolean z) {
            DeleteDustbinNoteAction.this.m50633l();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50646a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$i */
    /* loaded from: classes9.dex */
    public static final class C12639i<T> implements Consumer {
        public C12639i() {
        }

        /* renamed from: a */
        public final void m50647a(boolean z) {
            DeleteDustbinNoteAction.this.m50634m();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50647a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$j */
    /* loaded from: classes9.dex */
    public static final class C12640j<T> implements Consumer {
        public C12640j() {
        }

        /* renamed from: a */
        public final void m50648a(boolean z) {
            DeleteDustbinNoteAction.this.m50635n();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m50648a(((Boolean) obj).booleanValue());
        }
    }

    public DeleteDustbinNoteAction(@NotNull Context context, @NotNull List<String> noteIds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(noteIds, "noteIds");
        this.context = context;
        this.noteIds = noteIds;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> doOnNext = createNoteProviderObservable().doOnNext(new C12632b()).flatMap(new C12633c()).doOnNext(new C12634d()).observeOn(getMainUIScheduler()).flatMap(new C12635e()).filter(C12636f.f61423e).observeOn(getObserveOn()).doOnNext(new C12637g()).doOnNext(new C12638h()).doOnNext(new C12639i()).doOnNext(new C12640j()).doOnNext(new C12631a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m50633l() {
        NoteProvider noteProvider = this.provider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider = null;
        }
        NoteModelProviderKt.forceDeleteNote(noteProvider, this.noteIds);
        KSyncBundle.INSTANCE.post(new SyncForceDeletedNoteTreeEvent(this.noteIds));
        AccountDataBundle.INSTANCE.getEventBusHolder().post(NoteCountChanged.INSTANCE);
    }

    /* renamed from: m */
    public final void m50634m() {
        NoteProvider noteProvider = this.provider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider = null;
        }
        NotePageTagProviderKt.purgeDocPageTag(noteProvider, this.noteIds);
    }

    /* renamed from: n */
    public final void m50635n() {
        if (this.noteIds.isEmpty()) {
            return;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.andWith(CouchUtils.INSTANCE.inExpression("contentId", this.noteIds));
        SortProvider sortProvider = this.sortProvider;
        if (sortProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sortProvider");
            sortProvider = null;
        }
        sortProvider.deleteSortList(cBQueryArgs);
    }

    /* renamed from: o */
    public final void m50636o() {
        List mutableListOf;
        int collectionSizeOrDefault;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, this.noteIds));
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        SelectResult.C2166As property2 = SelectResult.property("title");
        Intrinsics.checkNotNullExpressionValue(property2, "property(...)");
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(property, property2);
        cBQueryArgs.setSelectResults((SelectResult[]) mutableListOf.toArray(new SelectResult[0]));
        NoteProvider noteProvider = this.provider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider = null;
        }
        List<SyncNoteModel> loadNoteListInBatch = NoteModelProviderKt.loadNoteListInBatch(noteProvider, cBQueryArgs);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadNoteListInBatch, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadNoteListInBatch.iterator();
        while (it2.hasNext()) {
            arrayList.add(LogcatGenerator.INSTANCE.generateDeletedNoteLog((SyncNoteModel) it2.next()));
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            LogUtils.file(DeleteDustbinNoteAction.class.getSimpleName() + ';' + ((String) it3.next()));
        }
    }

    /* renamed from: p */
    public final void m50637p() {
        GlobalBundle.INSTANCE.postEvent(new DeleteDustbinNoteEvent(this.noteIds));
        StatisticsBundle.INSTANCE.postEvent(new StatisticsNoteDustbinEvent(NoteDustbinFuncType.DELETE));
    }

    /* renamed from: q */
    public final Observable<Boolean> m50638q() {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        new CommonDialog.Builder(this.context).setWarning(true).setTitle(C10651R.string.hint).setMessage(C10651R.string.force_delete_note_tips).setConfirmCallback(new Function2<CommonDialog, String, Unit>() { // from class: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$showDeleteConfirmDialog$1
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
        }).setCancelCallback(new Function1<Dialog, Unit>() { // from class: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$showDeleteConfirmDialog$2
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
        }).setDismissCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.settings.action.DeleteDustbinNoteAction$showDeleteConfirmDialog$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                RxjavaKt.done(create, Boolean.FALSE);
            }
        }).create().show();
        return create;
    }
}
