package com.onyx.galaxy.note.category.action;

import android.content.Context;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.EditNoteNameFrom;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.event.StatisticsEditNoteNameEvent;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OnEditListNoteEvent;
import com.onyx.galaxy.note.category.view.dialog.EditListNoteDialog;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u0003H\u0002R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/EditListNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, C4921e.f26528e, "", "name", "l", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "model", "", "m", GoogleApiAvailabilityLight.f29016b, "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "context", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "i", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", CouchFieldKey.KEY_PROVIDER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class EditListNoteAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final SyncNoteModel model;

    /* renamed from: i, reason: from kotlin metadata */
    public NoteProvider provider;

    /* renamed from: com.onyx.galaxy.note.category.action.EditListNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C10840a<T> implements Consumer {
        public C10840a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditListNoteAction.this.provider = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditListNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C10841b<T, R> implements Function {
        public C10841b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditListNoteAction.this.m42274n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditListNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C10842c<T, R> implements Function {
        public C10842c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EditListNoteAction.this.m42272l(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditListNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C10843d<T, R> implements Function {
        public C10843d() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42279a(boolean z) {
            return EditListNoteAction.this.m42275o(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42279a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditListNoteAction$e */
    /* loaded from: classes9.dex */
    public static final class C10844e<T> implements Consumer {
        public C10844e() {
        }

        /* renamed from: a */
        public final void m42280a(boolean z) {
            EditListNoteAction editListNoteAction = EditListNoteAction.this;
            editListNoteAction.m42273m(editListNoteAction.model);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m42280a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditListNoteAction$f */
    /* loaded from: classes9.dex */
    public static final class C10845f<T, R> implements Function {

        /* renamed from: e */
        public static final C10845f<T, R> f53780e = new C10845f<>();

        @NotNull
        /* renamed from: a */
        public final Boolean m42281a(boolean z) {
            return Boolean.TRUE;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42281a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.EditListNoteAction$g */
    /* loaded from: classes9.dex */
    public static final class C10846g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ boolean f53781e;

        public C10846g(boolean z) {
            this.f53781e = z;
        }

        @NotNull
        /* renamed from: a */
        public final Boolean m42282a(boolean z) {
            return Boolean.valueOf(this.f53781e);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42282a(((Boolean) obj).booleanValue());
        }
    }

    public EditListNoteAction(@NotNull Context context, @NotNull SyncNoteModel model) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(model, "model");
        this.context = context;
        this.model = model;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> observeOn = createNoteProviderObservable().doOnNext(new C10840a()).observeOn(getMainUIScheduler()).flatMap(new C10841b()).observeOn(getObserveOn()).flatMap(new C10842c()).flatMap(new C10843d()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final Observable<Boolean> m42272l(String name) {
        boolean isBlank;
        List listOf;
        isBlank = StringsKt__StringsJVMKt.isBlank(name);
        if (isBlank) {
            Observable<Boolean> just = Observable.just(Boolean.TRUE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        int integer = ResManager.INSTANCE.getInteger(C10651R.integer.folder_name_max_input_length);
        NoteProvider noteProvider = this.provider;
        if (noteProvider == null) {
            Intrinsics.throwUninitializedPropertyAccessException(CouchFieldKey.KEY_PROVIDER);
            noteProvider = null;
        }
        boolean hasDuplicatedName = NoteModelProviderKt.hasDuplicatedName(noteProvider, name, new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.galaxy.note.category.action.EditListNoteAction$edit$hasDuplicatedName$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                invoke2(cBQueryArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CBQueryArgs hasDuplicatedName2) {
                Intrinsics.checkNotNullParameter(hasDuplicatedName2, "$this$hasDuplicatedName");
                CouchUtils couchUtils = CouchUtils.INSTANCE;
                hasDuplicatedName2.andWith(couchUtils.equalExpression("type", Integer.valueOf(EditListNoteAction.this.model.getType())));
                hasDuplicatedName2.andWith(couchUtils.equalOrNullExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, EditListNoteAction.this.model.getParentUniqueId()));
            }
        });
        if (name.length() > integer || hasDuplicatedName) {
            Observable<Boolean> just2 = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        this.model.setTitle(name);
        this.model.beforeSave();
        Debug.INSTANCE.m32035d(EditListNoteAction.class, "edit folder SyncNoteModel:" + JSONUtils.INSTANCE.toJson(this.model) + ' ', new Object[0]);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.model);
        Observable map = new UpdateNoteAction(listOf, false, false, 6, null).build().doOnNext(new C10844e()).map(C10845f.f53780e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final void m42273m(SyncNoteModel model) {
        List listOf;
        StatisticsBundle.INSTANCE.postEvent(new StatisticsEditNoteNameEvent(EditNoteNameFrom.EDIT_DIALOG));
        DocCollectionBundle.INSTANCE.postEvent(new OnEditListNoteEvent(model));
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(model.getUniqueId());
        kSyncBundle.post(new SyncChangedNoteTreeEvent(listOf));
    }

    /* renamed from: n */
    public final Observable<String> m42274n() {
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        new EditListNoteDialog(this.context, this.model.getTitle(), new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.category.action.EditListNoteAction$showEditDialog$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RxjavaKt.done(create, it2);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }
        }, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.action.EditListNoteAction$showEditDialog$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                RxjavaKt.done(create, "");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        }).show();
        return create;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.reactivex.rxjava3.core.Observable<java.lang.Boolean> m42275o(boolean r2) {
        /*
            r1 = this;
            com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel r1 = r1.model
            java.lang.String r1 = r1.getParentUniqueId()
            if (r2 == 0) goto L33
            if (r1 == 0) goto L13
            boolean r0 = kotlin.text.StringsKt.isBlank(r1)
            if (r0 == 0) goto L11
            goto L13
        L11:
            r0 = 0
            goto L14
        L13:
            r0 = 1
        L14:
            if (r0 == 0) goto L17
            goto L33
        L17:
            com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction r0 = new com.onyx.android.sdk.universal.editor.action.thumbnail.UpdateFolderCoverAction
            java.util.List r1 = kotlin.collections.CollectionsKt.listOf(r1)
            r0.<init>(r1)
            io.reactivex.rxjava3.core.Observable r1 = r0.build()
            com.onyx.galaxy.note.category.action.EditListNoteAction$g r0 = new com.onyx.galaxy.note.category.action.EditListNoteAction$g
            r0.<init>(r2)
            io.reactivex.rxjava3.core.Observable r1 = r1.map(r0)
            java.lang.String r2 = "map(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            return r1
        L33:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r2)
            io.reactivex.rxjava3.core.Observable r1 = io.reactivex.rxjava3.core.Observable.just(r1)
            java.lang.String r2 = "just(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.action.EditListNoteAction.m42275o(boolean):io.reactivex.rxjava3.core.Observable");
    }
}
