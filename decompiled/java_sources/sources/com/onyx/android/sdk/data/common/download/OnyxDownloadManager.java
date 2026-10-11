package com.onyx.android.sdk.data.common.download;

import androidx.core.net.MailTo;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.StatusUtil;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.download.FileDownloadRequest;
import com.onyx.android.sdk.data.common.download.OnyxDownloadManager;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.download.extension.DownloadTaskKt;
import com.onyx.android.sdk.data.common.exception.AbortException;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.io.File;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001J2\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0012\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u001a\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u00192\u0006\u0010\u0013\u001a\u00020\u0014J&\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00122\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u0010\u0010\u001d\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001J\u0018\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001J\u0012\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001J\u0012\u0010!\u001a\u0004\u0018\u00010\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001J\u0018\u0010\"\u001a\u00020\u001b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00012\u0006\u0010#\u001a\u00020\u000fJ\u0010\u0010$\u001a\u00020\u001b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000Rf\u0010\b\u001aZ\u0012\f\u0012\n \n*\u0004\u0018\u00010\u00010\u0001\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\f \n*\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b0\u000b \n*,\u0012\f\u0012\n \n*\u0004\u0018\u00010\u00010\u0001\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\f \n*\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b0\u000b\u0018\u00010\r0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;", "", "()V", "DEFAULT_CONNECTION_COUNT", "", "DEFAULT_PROGRESS_MIN_INTERVAL", "TIMEOUT_MILLIS", "", "taskStatusMap", "", "kotlin.jvm.PlatformType", "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "Lcom/liulishuo/okdownload/DownloadTask;", "", "cancelTask", "", "key", "createDownloadListener", "Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;", AbstractLogger.REQUEST, "Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;", MailTo.f5529g, "Lio/reactivex/rxjava3/core/Observer;", "downloadStatus", "createObservable", "Lio/reactivex/rxjava3/core/Observable;", "enqueueTask", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "existTask", "getDownloadStatus", "getProgressInfo", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "getTask", "pauseTask", "removeFromQueue", "removeTask", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nOnyxDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxDownloadManager.kt\ncom/onyx/android/sdk/data/common/download/OnyxDownloadManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,152:1\n215#2,2:153\n*S KotlinDebug\n*F\n+ 1 OnyxDownloadManager.kt\ncom/onyx/android/sdk/data/common/download/OnyxDownloadManager\n*L\n51#1:153,2\n*E\n"})
/* loaded from: classes7.dex */
public final class OnyxDownloadManager {
    private static final int DEFAULT_CONNECTION_COUNT = 1;
    private static final int DEFAULT_PROGRESS_MIN_INTERVAL = 1500;
    public static final long TIMEOUT_MILLIS = 60000;

    @NotNull
    public static final OnyxDownloadManager INSTANCE = new OnyxDownloadManager();
    private static final Map<Object, OnyxFileTransferStatus<DownloadTask>> taskStatusMap = Collections.synchronizedMap(new LinkedHashMap());

    static {
        OkDownload.setSingletonInstance(new OkDownload.Builder(ResManager.INSTANCE.getAppContext()).build());
    }

    private OnyxDownloadManager() {
    }

    private final FileDownloadListener createDownloadListener(final FileDownloadRequest request, final Observer<OnyxFileTransferStatus<DownloadTask>> subject, final OnyxFileTransferStatus<DownloadTask> downloadStatus) {
        return new FileDownloadListener() { // from class: com.onyx.android.sdk.data.common.download.OnyxDownloadManager$createDownloadListener$1
            @Override // com.onyx.android.sdk.data.common.download.FileDownloadListener, com.liulishuo.okdownload.core.listener.DownloadListener3
            public void canceled(@NotNull DownloadTask task) {
                Intrinsics.checkNotNullParameter(task, "task");
                downloadStatus.setInvalidStatus();
                EventBusHolder eventBusHolder = request.getEventBusHolder();
                if (eventBusHolder != null) {
                    eventBusHolder.post(downloadStatus);
                }
                subject.onError(new AbortException(task.getUrl()));
            }

            @Override // com.onyx.android.sdk.data.common.download.FileDownloadListener, com.liulishuo.okdownload.core.listener.DownloadListener3
            public void completed(@NotNull DownloadTask task) {
                Intrinsics.checkNotNullParameter(task, "task");
                try {
                    downloadStatus.setCompleteStatus();
                    EventBusHolder eventBusHolder = request.getEventBusHolder();
                    if (eventBusHolder != null) {
                        eventBusHolder.post(downloadStatus);
                    }
                    request.checkFileSize();
                    request.checkFileMd5AndDelete();
                    request.moveToTarget();
                    RxjavaKt.done(subject, downloadStatus);
                } catch (Exception e) {
                    subject.onError(e);
                }
            }

            @Override // com.onyx.android.sdk.data.common.download.FileDownloadListener, com.liulishuo.okdownload.core.listener.DownloadListener3
            public void error(@NotNull DownloadTask task, @NotNull Exception e) {
                Intrinsics.checkNotNullParameter(task, "task");
                Intrinsics.checkNotNullParameter(e, "e");
                downloadStatus.setErrorStatus();
                EventBusHolder eventBusHolder = request.getEventBusHolder();
                if (eventBusHolder != null) {
                    eventBusHolder.post(downloadStatus);
                }
                subject.onError(e);
            }

            @Override // com.onyx.android.sdk.data.common.download.FileDownloadListener, com.liulishuo.okdownload.core.listener.assist.Listener1Assist.Listener1Callback
            public void progress(@NotNull DownloadTask task, long currentOffset, long totalLength) {
                Intrinsics.checkNotNullParameter(task, "task");
                downloadStatus.updateProgressInfo(currentOffset, totalLength);
                EventBusHolder eventBusHolder = request.getEventBusHolder();
                if (eventBusHolder != null) {
                    eventBusHolder.post(downloadStatus);
                }
                subject.onNext(downloadStatus);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createObservable$lambda$2(FileDownloadRequest request) {
        Intrinsics.checkNotNullParameter(request, "$request");
        INSTANCE.pauseTask(request.getTag(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createObservable$lambda$3(FileDownloadRequest request) {
        Intrinsics.checkNotNullParameter(request, "$request");
        INSTANCE.removeTask(request.getTag());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void enqueueTask(FileDownloadRequest request, FileDownloadListener listener, OnyxFileTransferStatus<DownloadTask> downloadStatus) {
        DownloadTask task = request.getTask();
        if (task != null) {
            task.enqueue(listener);
        }
        Map<Object, OnyxFileTransferStatus<DownloadTask>> taskStatusMap2 = taskStatusMap;
        Intrinsics.checkNotNullExpressionValue(taskStatusMap2, "taskStatusMap");
        taskStatusMap2.put(request.getTag(), downloadStatus);
    }

    public final boolean cancelTask(@Nullable Object key) {
        DownloadTask task = getTask(key);
        if (task == null) {
            return false;
        }
        task.cancel();
        return true;
    }

    @NotNull
    public final Observable<OnyxFileTransferStatus<DownloadTask>> createObservable(@NotNull final FileDownloadRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        DownloadTask.Builder autoCallbackToUIThread = new DownloadTask.Builder(request.getUrl(), new File(request.getPath())).setMinIntervalMillisCallbackProcess(1500).setConnectionCount(1).setPassIfAlreadyCompleted(true ^ request.getForceReDownload()).setAutoCallbackToUIThread(request.getAutoCallbackToUIThread());
        Intrinsics.checkNotNullExpressionValue(autoCallbackToUIThread, "setAutoCallbackToUIThread(...)");
        DownloadTask.Builder addBasicAuthentication = DownloadTaskKt.addBasicAuthentication(autoCallbackToUIThread, request.getUsername(), request.getPassword());
        Map<String, String> headerParams = request.getHeaderParams();
        if (headerParams != null) {
            for (Map.Entry<String, String> entry : headerParams.entrySet()) {
                addBasicAuthentication.addHeader(entry.getKey(), entry.getValue());
            }
        }
        DownloadTask build = addBasicAuthentication.build();
        build.setTag(request.getTag());
        request.setTask(build);
        final OnyxFileTransferStatus<DownloadTask> onyxFileTransferStatus = new OnyxFileTransferStatus<>();
        onyxFileTransferStatus.setEntry(build);
        onyxFileTransferStatus.setTag(build.getTag());
        onyxFileTransferStatus.setStatus(StatusUtil.Status.PENDING.ordinal());
        final FileDownloadListener createDownloadListener = createDownloadListener(request, create, onyxFileTransferStatus);
        Observable<OnyxFileTransferStatus<DownloadTask>> doFinally = create.subscribeOn(AndroidSchedulers.mainThread()).observeOn(AndroidSchedulers.mainThread()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.pgk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OnyxDownloadManager.createObservable$lambda$2(FileDownloadRequest.this);
            }
        }).doOnSubscribe(new Consumer() { // from class: com.onyx.android.sdk.data.common.download.OnyxDownloadManager$createObservable$3
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Disposable it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxDownloadManager.INSTANCE.enqueueTask(FileDownloadRequest.this, createDownloadListener, onyxFileTransferStatus);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.qgk
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OnyxDownloadManager.createObservable$lambda$3(FileDownloadRequest.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    public final boolean existTask(@Nullable Object key) {
        return getTask(key) != null;
    }

    @Nullable
    public final OnyxFileTransferStatus<DownloadTask> getDownloadStatus(@Nullable Object key) {
        return taskStatusMap.get(key);
    }

    @Nullable
    public final ProgressInfo getProgressInfo(@Nullable Object key) {
        OnyxFileTransferStatus<DownloadTask> downloadStatus = getDownloadStatus(key);
        if (downloadStatus != null) {
            return downloadStatus.getProgressInfo();
        }
        return null;
    }

    @Nullable
    public final DownloadTask getTask(@Nullable Object key) {
        OnyxFileTransferStatus<DownloadTask> onyxFileTransferStatus = taskStatusMap.get(key);
        if (onyxFileTransferStatus != null) {
            return onyxFileTransferStatus.getEntry();
        }
        return null;
    }

    public final void pauseTask(@Nullable Object key, boolean removeFromQueue) {
        DownloadTask task = getTask(key);
        if (task != null) {
            task.cancel();
        }
        if (removeFromQueue) {
            removeTask(key);
        }
    }

    public final void removeTask(@Nullable Object key) {
        taskStatusMap.remove(key);
    }
}
