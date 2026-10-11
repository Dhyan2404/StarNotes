package com.onyx.android.sdk.data.common.download.data.action;

import com.couchbase.lite.internal.core.C4Replicator;
import com.liulishuo.okdownload.DownloadTask;
import com.onyx.android.sdk.base.common.wakelock.OnyxWakeLockHolder;
import com.onyx.android.sdk.base.common.wakelock.WakeLockHolder;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.download.FileDownloadRequest;
import com.onyx.android.sdk.data.common.download.OnyxDownloadManager;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.common.download.data.action.DownloadAction;
import com.onyx.android.sdk.data.common.exception.ContentException;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B'\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ\u0014\u0010=\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020>H\u0014J\b\u0010?\u001a\u00020@H\u0004J\u0014\u0010A\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020>H\u0002J\b\u0010B\u001a\u00020\fH\u0002R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R&\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0012R\u001a\u0010!\u001a\u00020\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010'\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0012\"\u0004\b)\u0010*R\u001a\u0010+\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u000e\"\u0004\b-\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u001c\u00100\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0012\"\u0004\b2\u0010*R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u0012R\u001c\u00104\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0012\"\u0004\b6\u0010*R\u001a\u00107\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<¨\u0006C"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "Lcom/liulishuo/okdownload/DownloadTask;", "url", "", "filePath", "tag", "", CouchFieldKey.KEY_MD5, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V", "checkMD5", "", "getCheckMD5", Constants.BOOLEAN_VALUE_SIG, "setCheckMD5", "(Z)V", "getFilePath", "()Ljava/lang/String;", "fileSize", "", "getFileSize", "()Ljava/lang/Long;", "setFileSize", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "headerParams", "", "getHeaderParams", "()Ljava/util/Map;", "setHeaderParams", "(Ljava/util/Map;)V", "getMd5", "notificationIcon", "", "getNotificationIcon", "()I", "setNotificationIcon", "(I)V", "password", "getPassword", "setPassword", "(Ljava/lang/String;)V", "pathAsDirectory", "getPathAsDirectory", "setPathAsDirectory", "getTag", "()Ljava/lang/Object;", "targetPath", "getTargetPath", "setTargetPath", "getUrl", C4Replicator.REPLICATOR_AUTH_USER_NAME, "getUsername", "setUsername", "wakeLockHolder", "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;", "getWakeLockHolder", "()Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;", "setWakeLockHolder", "(Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "createDownloadRequest", "Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;", "createObservable", "predicateCondition", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class DownloadAction extends RxBaseAction<OnyxFileTransferStatus<DownloadTask>> {
    private boolean checkMD5;

    @NotNull
    private final String filePath;

    @Nullable
    private Long fileSize;

    @NotNull
    private Map<String, String> headerParams;

    @Nullable
    private final String md5;
    private int notificationIcon;

    @Nullable
    private String password;
    private boolean pathAsDirectory;

    @NotNull
    private final Object tag;

    @Nullable
    private String targetPath;

    @NotNull
    private final String url;

    @Nullable
    private String username;

    @NotNull
    private WakeLockHolder wakeLockHolder;

    public DownloadAction(@NotNull String url, @NotNull String filePath, @NotNull Object tag, @Nullable String str) {
        Map<String, String> mutableMapOf;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.url = url;
        this.filePath = filePath;
        this.tag = tag;
        this.md5 = str;
        this.checkMD5 = true;
        this.wakeLockHolder = new OnyxWakeLockHolder(false, 1, null);
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(Constant.HEADER_USER_AGENT, Util.userAgent));
        this.headerParams = mutableMapOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<OnyxFileTransferStatus<DownloadTask>> createObservable() {
        Observable<OnyxFileTransferStatus<DownloadTask>> doFinally = OnyxDownloadManager.INSTANCE.createObservable(createDownloadRequest()).observeOn(AndroidSchedulers.mainThread()).doOnSubscribe(new Consumer() { // from class: com.onyx.android.sdk.data.common.download.data.action.DownloadAction$createObservable$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Disposable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                DownloadAction.this.getWakeLockHolder().acquireWakeLock(DownloadAction.this.getAppContext(), "");
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.uff
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DownloadAction.createObservable$lambda$0(DownloadAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createObservable$lambda$0(DownloadAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.wakeLockHolder.releaseWakeLock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean predicateCondition() throws ContentException {
        String str = this.url;
        if (str == null || str.length() == 0) {
            throw ContentException.INSTANCE.urlInvalidException();
        }
        String str2 = this.filePath;
        if (str2 == null || str2.length() == 0) {
            throw ContentException.INSTANCE.filePathInvalidException();
        }
        return !OnyxDownloadManager.INSTANCE.existTask(this.tag);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<OnyxFileTransferStatus<DownloadTask>> create() {
        Observable<OnyxFileTransferStatus<DownloadTask>> flatMap = Observable.just(this).filter(new Predicate() { // from class: com.onyx.android.sdk.data.common.download.data.action.DownloadAction$create$1
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(@NotNull DownloadAction it2) {
                boolean predicateCondition;
                Intrinsics.checkNotNullParameter(it2, "it");
                predicateCondition = DownloadAction.this.predicateCondition();
                return predicateCondition;
            }
        }).flatMap(new Function() { // from class: com.onyx.android.sdk.data.common.download.data.action.DownloadAction$create$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends OnyxFileTransferStatus<DownloadTask>> apply(@NotNull DownloadAction it2) {
                Observable createObservable;
                Intrinsics.checkNotNullParameter(it2, "it");
                createObservable = DownloadAction.this.createObservable();
                return createObservable;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final FileDownloadRequest createDownloadRequest() {
        FileDownloadRequest fileDownloadRequest = new FileDownloadRequest(this.url, this.filePath);
        fileDownloadRequest.setFileSize(this.fileSize);
        fileDownloadRequest.setTargetPath(this.targetPath);
        fileDownloadRequest.setHeaderParams(this.headerParams);
        return fileDownloadRequest;
    }

    public final boolean getCheckMD5() {
        return this.checkMD5;
    }

    @NotNull
    public final String getFilePath() {
        return this.filePath;
    }

    @Nullable
    public final Long getFileSize() {
        return this.fileSize;
    }

    @NotNull
    public final Map<String, String> getHeaderParams() {
        return this.headerParams;
    }

    @Nullable
    public final String getMd5() {
        return this.md5;
    }

    public final int getNotificationIcon() {
        return this.notificationIcon;
    }

    @Nullable
    public final String getPassword() {
        return this.password;
    }

    public final boolean getPathAsDirectory() {
        return this.pathAsDirectory;
    }

    @NotNull
    public final Object getTag() {
        return this.tag;
    }

    @Nullable
    public final String getTargetPath() {
        return this.targetPath;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    @Nullable
    public final String getUsername() {
        return this.username;
    }

    @NotNull
    public final WakeLockHolder getWakeLockHolder() {
        return this.wakeLockHolder;
    }

    public final void setCheckMD5(boolean z) {
        this.checkMD5 = z;
    }

    public final void setFileSize(@Nullable Long l) {
        this.fileSize = l;
    }

    public final void setHeaderParams(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.headerParams = map;
    }

    public final void setNotificationIcon(int i) {
        this.notificationIcon = i;
    }

    public final void setPassword(@Nullable String str) {
        this.password = str;
    }

    public final void setPathAsDirectory(boolean z) {
        this.pathAsDirectory = z;
    }

    public final void setTargetPath(@Nullable String str) {
        this.targetPath = str;
    }

    public final void setUsername(@Nullable String str) {
        this.username = str;
    }

    public final void setWakeLockHolder(@NotNull WakeLockHolder wakeLockHolder) {
        Intrinsics.checkNotNullParameter(wakeLockHolder, "<set-?>");
        this.wakeLockHolder = wakeLockHolder;
    }
}
