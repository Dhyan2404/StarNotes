package com.onyx.android.sdk.replicator.note.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountPermissionItem;
import com.onyx.android.sdk.data.account.bean.AccountPermissions;
import com.onyx.android.sdk.data.account.bean.UserStorageBean;
import com.onyx.android.sdk.data.account.request.cloud.FetchAccountPermissionRequest;
import com.onyx.android.sdk.data.account.request.cloud.UpdateUserStorageRequest;
import com.onyx.android.sdk.data.common.error.ErrorCode;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.action.CheckNoteSyncConditionAction;
import com.onyx.android.sdk.replicator.note.bean.NoteCloudSyncCheckArgs;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lio/reactivex/rxjava3/annotations/NonNull;", "mapToBool", GoogleApiAvailabilityLight.f29016b, "r", "p", "s", "q", C4921e.f26528e, "", "throwable", "v", "", "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;", "u", "", "reason", "Lcom/onyx/android/sdk/base/common/error/OnyxException;", "m", "Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;", "checkArgs", C6998g.f39679a, "Ljava/util/List;", "accountPermissionList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CheckNoteSyncConditionAction extends BaseNoteSyncAction<Unit> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteCloudSyncCheckArgs checkArgs;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public List<AccountPermissionItem> accountPermissionList;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CheckNoteSyncConditionAction$a */
    /* loaded from: classes8.dex */
    public static final class C7665a<T> implements Consumer {
        public C7665a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckNoteSyncConditionAction.this.m35039n();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CheckNoteSyncConditionAction$b */
    /* loaded from: classes8.dex */
    public static final class C7666b<T> implements Consumer {
        public C7666b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckNoteSyncConditionAction.this.m35046v(it2);
            throw OnyxErrorHandler.INSTANCE.mergeTimeoutError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CheckNoteSyncConditionAction$c */
    /* loaded from: classes8.dex */
    public static final class C7667c<T, R> implements Function {

        /* renamed from: e */
        public static final C7667c<T, R> f45391e = new C7667c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CheckNoteSyncConditionAction$d */
    /* loaded from: classes8.dex */
    public static final class C7668d<T, R> implements Function {

        /* renamed from: e */
        public static final C7668d<T, R> f45392e = new C7668d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.FALSE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CheckNoteSyncConditionAction() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* renamed from: t */
    public static final void m35037t(CheckNoteSyncConditionAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AccountDataBundle.INSTANCE.updateAccountPermission(this$0.accountPermissionList);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Unit> create() {
        Observable<Unit> doFinally = Observable.just(Unit.INSTANCE).observeOn(KSyncBundle.INSTANCE.getNetworkScheduler()).doOnNext(new C7665a()).observeOn(getMainUIScheduler()).doOnError(new C7666b()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.dtd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CheckNoteSyncConditionAction.m35037t(CheckNoteSyncConditionAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: m */
    public final OnyxException m35038m(int reason) {
        return OnyxException.INSTANCE.m31893of(ErrorType.NOTE_SYNC_FAIL, ErrorType.NOTE_SYNC_FAIL, reason).setIgnorable(true);
    }

    @NotNull
    public final Observable<Boolean> mapToBool() {
        Observable<Boolean> onErrorReturn = build().map(C7667c.f45391e).onErrorReturn(C7668d.f45392e);
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }

    /* renamed from: n */
    public final void m35039n() {
        m35043r();
        if (this.checkArgs.getCheckWifi()) {
            m35044s();
        }
        if (this.checkArgs.getCheckConfig()) {
            m35041p();
        }
        if (this.checkArgs.getCheckPermission()) {
            m35042q();
        }
        if (this.checkArgs.getCheckSpace()) {
            m35040o();
        }
    }

    /* renamed from: o */
    public final void m35040o() {
        UserStorageBean execute = new UpdateUserStorageRequest().setRecalculate(true).execute();
        if (execute.getStorageLeft() <= execute.getStorageRed()) {
            throw m35038m(ErrorCode.NOTE_SYNC_CLOUD_SPACE_NOT_ENOUGH);
        }
    }

    /* renamed from: p */
    public final void m35041p() {
        if (!MMKVBackup.INSTANCE.getCloudAutoSyncOption().get()) {
            throw m35038m(ErrorCode.NOTE_SYNC_OPTION_DISABLED);
        }
    }

    /* renamed from: q */
    public final void m35042q() {
        AccountDataBundle accountDataBundle = AccountDataBundle.INSTANCE;
        if (accountDataBundle.canSync()) {
            return;
        }
        if (accountDataBundle.hasPermissions() || !AccountPermissions.INSTANCE.hasCloudSyncPermission(m35045u())) {
            throw m35038m(ErrorCode.NOTE_SYNC_NO_PERMISSION);
        }
    }

    /* renamed from: r */
    public final void m35043r() {
        if (!AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            throw m35038m(ErrorCode.NOTE_SYNC_NOT_LOGIN);
        }
    }

    /* renamed from: s */
    public final void m35044s() {
        if (!NetworkUtils.INSTANCE.isWifiConnected(ResManager.INSTANCE.getAppContext())) {
            throw m35038m(ErrorCode.NOTE_SYNC_WIFI_NOT_CONNECTED);
        }
    }

    /* renamed from: u */
    public final List<AccountPermissionItem> m35045u() {
        List execute = new FetchAccountPermissionRequest().execute();
        this.accountPermissionList = execute;
        return execute;
    }

    /* renamed from: v */
    public final void m35046v(Throwable throwable) {
        if (this.checkArgs.getShowNetworkErrorToast() && (throwable instanceof OnyxException) && Intrinsics.areEqual(((OnyxException) throwable).getType(), "Timeout")) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C7373R.string.network_error_tips, false, 2, (Object) null);
        }
    }

    public /* synthetic */ CheckNoteSyncConditionAction(NoteCloudSyncCheckArgs noteCloudSyncCheckArgs, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new NoteCloudSyncCheckArgs() : noteCloudSyncCheckArgs);
    }

    public CheckNoteSyncConditionAction(@NotNull NoteCloudSyncCheckArgs checkArgs) {
        Intrinsics.checkNotNullParameter(checkArgs, "checkArgs");
        this.checkArgs = checkArgs;
    }
}
