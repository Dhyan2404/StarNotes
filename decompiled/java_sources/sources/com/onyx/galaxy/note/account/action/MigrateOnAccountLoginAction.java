package com.onyx.galaxy.note.account.action;

import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountIntentArgs;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.replicator.account.action.LoginOnyxAccountAction;
import com.onyx.android.sdk.replicator.note.action.StartNoteDocSyncAction;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.onyx.android.sdk.universal.editor.events.app.UserNoteListImportedEvent;
import com.onyx.galaxy.note.category.action.template.ImportOfficialTemplateCoverToDBAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.editor.action.export.MigrateUserNoteListAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\tH\u0002R\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "Lcom/onyx/android/sdk/replicator/note/action/StartNoteDocSyncAction;", "l", "", "e", "", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;", C6998g.f39679a, "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;", "getArgs", "()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;", "args", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;", "copyNoteListArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMigrateOnAccountLoginAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MigrateOnAccountLoginAction.kt\ncom/onyx/galaxy/note/account/action/MigrateOnAccountLoginAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"})
/* loaded from: classes9.dex */
public final class MigrateOnAccountLoginAction extends RxBaseNoteAppAction<MigrateOnAccountLoginAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final AccountIntentArgs args;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public CopyNoteListArgs copyNoteListArgs;

    /* renamed from: com.onyx.galaxy.note.account.action.MigrateOnAccountLoginAction$a */
    /* loaded from: classes9.dex */
    public static final class C10689a<T> implements Predicate {

        /* renamed from: e */
        public static final C10689a<T> f53408e = new C10689a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull MigrateOnAccountLoginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !AccountDataBundle.INSTANCE.isAlreadyLogin();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.MigrateOnAccountLoginAction$b */
    /* loaded from: classes9.dex */
    public static final class C10690b<T, R> implements Function {
        public C10690b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoginOnyxAccountAction> apply(@NotNull MigrateOnAccountLoginAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoginOnyxAccountAction(MigrateOnAccountLoginAction.this.getArgs()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.MigrateOnAccountLoginAction$c */
    /* loaded from: classes9.dex */
    public static final class C10691c<T, R> implements Function {

        /* renamed from: e */
        public static final C10691c<T, R> f53410e = new C10691c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends MigrateUserNoteListAction> apply(@NotNull LoginOnyxAccountAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new MigrateUserNoteListAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.MigrateOnAccountLoginAction$d */
    /* loaded from: classes9.dex */
    public static final class C10692d<T> implements Consumer {
        public C10692d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull MigrateUserNoteListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MigrateOnAccountLoginAction.this.copyNoteListArgs = it2.getCopyNoteListArgs();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.MigrateOnAccountLoginAction$e */
    /* loaded from: classes9.dex */
    public static final class C10693e<T> implements Consumer {
        public C10693e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull MigrateUserNoteListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MigrateOnAccountLoginAction.this.m41790o();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.MigrateOnAccountLoginAction$f */
    /* loaded from: classes9.dex */
    public static final class C10694f<T, R> implements Function {
        public C10694f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull MigrateUserNoteListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MigrateOnAccountLoginAction.this.m41788m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.MigrateOnAccountLoginAction$g */
    /* loaded from: classes9.dex */
    public static final class C10695g<T, R> implements Function {
        public C10695g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartNoteDocSyncAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MigrateOnAccountLoginAction.this.m41787l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.MigrateOnAccountLoginAction$i */
    /* loaded from: classes9.dex */
    public static final class C10697i<T, R> implements Function {
        public C10697i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MigrateOnAccountLoginAction apply(@NotNull StartNoteDocSyncAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MigrateOnAccountLoginAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.MigrateOnAccountLoginAction$j */
    /* loaded from: classes9.dex */
    public static final class C10698j<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ StartNoteDocSyncAction f53417e;

        public C10698j(StartNoteDocSyncAction startNoteDocSyncAction) {
            this.f53417e = startNoteDocSyncAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartNoteDocSyncAction apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f53417e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.account.action.MigrateOnAccountLoginAction$k */
    /* loaded from: classes9.dex */
    public static final class C10699k<T> implements Consumer {
        public C10699k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            LogFileUtils logFileUtils = LogFileUtils.INSTANCE;
            Class<?> cls = MigrateOnAccountLoginAction.this.getClass();
            StringBuilder sb = new StringBuilder();
            sb.append("migrate import office template fail: ");
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            sb.append(stackTraceToString);
            logFileUtils.m32102e(cls, sb.toString());
        }
    }

    public MigrateOnAccountLoginAction(@NotNull AccountIntentArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<MigrateOnAccountLoginAction> create() {
        Observable<MigrateOnAccountLoginAction> map = Observable.just(this).filter(C10689a.f53408e).flatMap(new C10690b()).flatMap(C10691c.f53410e).doOnNext(new C10692d()).observeOn(getMainUIScheduler()).doOnNext(new C10693e()).flatMap(new C10694f()).flatMap(new C10695g()).observeOn(getMainUIScheduler()).doOnError(new Consumer() { // from class: com.onyx.galaxy.note.account.action.MigrateOnAccountLoginAction.h
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull Throwable p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                MigrateOnAccountLoginAction.this.m41789n(p0);
            }
        }).map(new C10697i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final AccountIntentArgs getArgs() {
        return this.args;
    }

    /* renamed from: l */
    public final Observable<StartNoteDocSyncAction> m41787l() {
        NoteCloudSyncCheckArgs noteCloudSyncCheckArgs = new NoteCloudSyncCheckArgs();
        noteCloudSyncCheckArgs.setCheckConfig(false);
        StartReplicatorBean startReplicatorBean = new StartReplicatorBean(0, false, false, false, null, null, false, 127, null);
        startReplicatorBean.setSyncAll(true);
        StartNoteDocSyncAction startNoteDocSyncAction = new StartNoteDocSyncAction(startReplicatorBean, noteCloudSyncCheckArgs);
        Observable<StartNoteDocSyncAction> onErrorReturn = startNoteDocSyncAction.build().onErrorReturn(new C10698j(startNoteDocSyncAction));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    public final Observable<?> m41788m() {
        LogUtils.wTag(MigrateOnAccountLoginAction.class.getSimpleName(), "migrate start import office template");
        Observable<ImportOfficialTemplateCoverToDBAction> doOnError = new ImportOfficialTemplateCoverToDBAction(null, 1, 0 == true ? 1 : 0).build().doOnError(new C10699k());
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        return doOnError;
    }

    /* renamed from: n */
    public final void m41789n(Throwable e) {
        String stackTraceToString;
        LogFileUtils logFileUtils = LogFileUtils.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("MigrateOnAccountLogin fail:");
        stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
        sb.append(stackTraceToString);
        logFileUtils.m32102e(MigrateOnAccountLoginAction.class, sb.toString());
    }

    /* renamed from: o */
    public final void m41790o() {
        NoteTreeBundle.INSTANCE.reset();
        CopyNoteListArgs copyNoteListArgs = this.copyNoteListArgs;
        if (copyNoteListArgs != null) {
            DocCollectionBundle.INSTANCE.postEvent(new UserNoteListImportedEvent(copyNoteListArgs));
        }
        LogUtils.wTag(MigrateOnAccountLoginAction.class.getSimpleName(), "migrate note data done, post imported event " + this.copyNoteListArgs);
    }
}
