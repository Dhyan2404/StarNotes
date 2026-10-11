package com.onyx.galaxy.note.category.action;

import android.content.Context;
import androidx.core.net.MailTo;
import com.couchbase.lite.internal.core.C4Replicator;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.auth.action.PasswordAuthAction;
import com.onyx.android.sdk.auth.request.PasswordDigestRequest;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.data.info.Encryption;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.AuthNoteAction;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.editor.data.AuthenticateNotePasswordContext;
import com.onyx.galaxy.note.editor.view.dialog.NoteAuthenticatePasswordDialog;
import com.onyx.galaxy.note.utils.NoteLockUtils;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0014¢\u0006\u0004\b \u0010!J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0002J&\u0010\u0011\u001a\u00020\u00102\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001e\u0010\u001c¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/AuthNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C4Replicator.REPLICATOR_OPTION_AUTHENTICATION, C4921e.f26528e, "fingerPrintSuccess", "p", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "r", MailTo.f5529g, "Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;", "dialog", "", "pwd", "", "s", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteProvider", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "q", "Landroid/content/Context;", C6998g.f39679a, "Landroid/content/Context;", "activityContext", C6999h.f39688c, "Ljava/util/List;", "noteIds", "i", "noteModelList", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAuthNoteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthNoteAction.kt\ncom/onyx/galaxy/note/category/action/AuthNoteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n288#2,2:107\n*S KotlinDebug\n*F\n+ 1 AuthNoteAction.kt\ncom/onyx/galaxy/note/category/action/AuthNoteAction\n*L\n47#1:107,2\n*E\n"})
/* loaded from: classes9.dex */
public final class AuthNoteAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> noteIds;

    /* renamed from: i, reason: from kotlin metadata */
    public List<? extends SyncNoteModel> noteModelList;

    /* renamed from: com.onyx.galaxy.note.category.action.AuthNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C10750a<T, R> implements Function {
        public C10750a() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42108a(boolean z) {
            return AuthNoteAction.this.m42103o();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42108a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.AuthNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C10751b<T, R> implements Function {
        public C10751b() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m42109a(boolean z) {
            return AuthNoteAction.this.m42104p(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m42109a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.AuthNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C10752c<T, R> implements Function {
        public C10752c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NoteProvider> apply(@NotNull AuthNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AuthNoteAction.this.createNoteProviderObservable();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.AuthNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C10753d<T, R> implements Function {
        public C10753d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncNoteModel> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AuthNoteAction.this.m42105q(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.AuthNoteAction$e */
    /* loaded from: classes9.dex */
    public static final class C10754e<T> implements Consumer {
        public C10754e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AuthNoteAction.this.noteModelList = it2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.AuthNoteAction$f */
    /* loaded from: classes9.dex */
    public static final class C10755f<T, R> implements Function {
        public C10755f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull List<? extends SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AuthNoteAction.this.auth();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.AuthNoteAction$g */
    /* loaded from: classes9.dex */
    public static final class C10756g<T, R> implements Function {

        /* renamed from: e */
        public static final C10756g<T, R> f53618e = new C10756g<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull AuthNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            String str = MMKVNote.INSTANCE.getNoteLockPasswordOption().get();
            if (str == null) {
                str = "";
            }
            return new PasswordDigestRequest(str).execute();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.AuthNoteAction$h */
    /* loaded from: classes9.dex */
    public static final class C10757h<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ String f53619e;

        public C10757h(String str) {
            this.f53619e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new PasswordAuthAction(it2, this.f53619e).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.AuthNoteAction$i */
    /* loaded from: classes9.dex */
    public static final class C10758i<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ PublishSubject<Boolean> f53620e;

        public C10758i(PublishSubject<Boolean> publishSubject) {
            this.f53620e = publishSubject;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f53620e.onError(it2);
        }
    }

    public AuthNoteAction(@NotNull Context activityContext, @NotNull List<String> noteIds) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(noteIds, "noteIds");
        this.activityContext = activityContext;
        this.noteIds = noteIds;
    }

    /* renamed from: t */
    public static final void m42100t(boolean z) {
        ToastUtils.INSTANCE.show(C10651R.string.note_pwd_error, true);
    }

    /* renamed from: u */
    public static final void m42101u(PublishSubject subject, boolean z) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        RxjavaKt.done(subject, Boolean.TRUE);
    }

    /* renamed from: v */
    public static final void m42102v(NoteAuthenticatePasswordDialog dialog, boolean z) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        dialog.dismiss();
    }

    public final Observable<Boolean> auth() {
        Object obj;
        List<? extends SyncNoteModel> list = this.noteModelList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noteModelList");
            list = null;
        }
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((SyncNoteModel) obj).hasEncryption()) {
                break;
            }
        }
        SyncNoteModel syncNoteModel = (SyncNoteModel) obj;
        if (syncNoteModel != null) {
            Encryption encryption = syncNoteModel.getEncryption();
            if ((encryption != null ? encryption.getDigest() : null) != null) {
                Observable<Boolean> flatMap = Observable.just(Boolean.TRUE).observeOn(getMainUIScheduler()).flatMap(new C10750a()).flatMap(new C10751b());
                Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
                return flatMap;
            }
        }
        Observable<Boolean> just = Observable.just(Boolean.TRUE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> flatMap = Observable.just(this).flatMap(new C10752c()).map(new C10753d()).observeOn(getObserveOn()).doOnNext(new C10754e()).flatMap(new C10755f());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: o */
    public final Observable<Boolean> m42103o() {
        NoteLockUtils noteLockUtils = NoteLockUtils.INSTANCE;
        if (noteLockUtils.checkNoteFingerUnLockAvailable(this.activityContext)) {
            return noteLockUtils.showFingerPrintAuthDialog(this.activityContext);
        }
        Observable<Boolean> just = Observable.just(Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: p */
    public final Observable<Boolean> m42104p(boolean fingerPrintSuccess) {
        if (!fingerPrintSuccess) {
            return m42106r();
        }
        Observable<Boolean> just = Observable.just(Boolean.TRUE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: q */
    public final List<SyncNoteModel> m42105q(NoteProvider noteProvider) {
        return NoteModelProviderKt.loadNoteList(noteProvider, this.noteIds);
    }

    /* renamed from: r */
    public final PublishSubject<Boolean> m42106r() {
        final PublishSubject<Boolean> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        AuthenticateNotePasswordContext authenticateNotePasswordContext = new AuthenticateNotePasswordContext(this.activityContext, false, 2, null);
        authenticateNotePasswordContext.setConfirmCallback(new Function2<NoteAuthenticatePasswordDialog, String, Unit>() { // from class: com.onyx.galaxy.note.category.action.AuthNoteAction$showAuthNotePasswordDialog$authContext$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(NoteAuthenticatePasswordDialog noteAuthenticatePasswordDialog, String str) {
                invoke2(noteAuthenticatePasswordDialog, str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteAuthenticatePasswordDialog dialog, @NotNull String pwd) {
                Intrinsics.checkNotNullParameter(dialog, "dialog");
                Intrinsics.checkNotNullParameter(pwd, "pwd");
                AuthNoteAction.this.m42107s(create, dialog, pwd);
            }
        });
        authenticateNotePasswordContext.setCancelCallback(new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.action.AuthNoteAction$showAuthNotePasswordDialog$authContext$1$2
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
        new NoteAuthenticatePasswordDialog(authenticateNotePasswordContext).show();
        return create;
    }

    /* renamed from: s */
    public final void m42107s(final PublishSubject<Boolean> subject, final NoteAuthenticatePasswordDialog dialog, String pwd) {
        Observable observeOn = Observable.just(this).observeOn(getObserveOn()).map(C10756g.f53618e).flatMap(new C10757h(pwd)).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        RxjavaKt.doOnNextIfTrue(RxjavaKt.doOnNextIfTrue(RxjavaKt.doOnNextIfFalse(observeOn, new Consumer() { // from class: com.sunia.HTREnginev2.si
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                AuthNoteAction.m42100t(((Boolean) obj).booleanValue());
            }
        }), new Consumer() { // from class: com.sunia.HTREnginev2.ti
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                AuthNoteAction.m42101u(PublishSubject.this, ((Boolean) obj).booleanValue());
            }
        }), new Consumer() { // from class: com.sunia.HTREnginev2.ui
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                AuthNoteAction.m42102v(NoteAuthenticatePasswordDialog.this, ((Boolean) obj).booleanValue());
            }
        }).doOnError(new C10758i(subject)).subscribe();
    }
}
