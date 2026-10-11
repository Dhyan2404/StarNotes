package com.onyx.galaxy.note.category.action;

import android.content.Context;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.auth.request.PasswordDigestRequest;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.info.Encryption;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.editor.data.ConfigNotePasswordContext;
import com.onyx.galaxy.note.editor.view.dialog.ConfigNotePasswordDialog;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002J\b\u0010\u0010\u001a\u00020\u000eH\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/LockNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModelList", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "m", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "", C4921e.f26528e, "l", "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "context", C6999h.f39688c, "Ljava/util/List;", "noteIds", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLockNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockNoteAction.kt\ncom/onyx/galaxy/note/category/action/LockNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1855#2,2:67\n*S KotlinDebug\n*F\n+ 1 LockNoteAction.kt\ncom/onyx/galaxy/note/category/action/LockNoteAction\n*L\n44#1:67,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LockNoteAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> noteIds;

    /* renamed from: com.onyx.galaxy.note.category.action.LockNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C10905a<T, R> implements Function {
        public C10905a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LockNoteAction.this.createNoteProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LockNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C10906b<T, R> implements Function {
        public C10906b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LockNoteAction.this.m42395m(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LockNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C10907c<T> implements Consumer {
        public C10907c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LockNoteAction.this.m42396n(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.LockNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C10908d<T, R> implements Function {

        /* renamed from: e */
        public static final C10908d<T, R> f53885e = new C10908d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new UpdateNoteAction(it2, false, false, 6, null).build();
        }
    }

    public LockNoteAction(@NotNull Context context, @NotNull List<String> noteIds) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(noteIds, "noteIds");
        this.context = context;
        this.noteIds = noteIds;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable observeOn = Observable.just(m42394l()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<Boolean> flatMap = RxjavaKt.flatMapIf(observeOn, new Function1<String, Boolean>() { // from class: com.onyx.galaxy.note.category.action.LockNoteAction$create$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!StringKt.isNotBlank(it2));
            }
        }, new Function1<String, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.category.action.LockNoteAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull String it2) {
                PublishSubject m42397o;
                Intrinsics.checkNotNullParameter(it2, "it");
                m42397o = LockNoteAction.this.m42397o();
                return m42397o;
            }
        }).flatMap(new C10905a()).map(new C10906b()).doOnNext(new C10907c()).flatMap(C10908d.f53885e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final String m42394l() {
        String str = MMKVNote.INSTANCE.getNoteLockPasswordOption().get();
        return str == null ? "" : str;
    }

    /* renamed from: m */
    public final List<SyncNoteModel> m42395m(NoteProvider noteProvider) {
        return NoteModelProviderKt.loadNoteList(noteProvider, this.noteIds);
    }

    /* renamed from: n */
    public final void m42396n(List<? extends SyncNoteModel> noteModelList) {
        String execute = new PasswordDigestRequest(m42394l()).execute();
        Iterator<T> it2 = noteModelList.iterator();
        while (it2.hasNext()) {
            ((SyncNoteModel) it2.next()).setEncryption(new Encryption(4, execute));
        }
    }

    /* renamed from: o */
    public final PublishSubject<String> m42397o() {
        final PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        ConfigNotePasswordContext configNotePasswordContext = new ConfigNotePasswordContext(this.context, false, 2, null);
        configNotePasswordContext.setConfirmCallback(new Function1<String, Unit>() { // from class: com.onyx.galaxy.note.category.action.LockNoteAction$showNoteSetPasswordDialog$configNotePasswordContext$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RxjavaKt.done(create, it2);
            }
        });
        configNotePasswordContext.setCancelCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.action.LockNoteAction$showNoteSetPasswordDialog$configNotePasswordContext$1$2
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
                create.onComplete();
            }
        });
        new ConfigNotePasswordDialog(configNotePasswordContext).show();
        return create;
    }
}
