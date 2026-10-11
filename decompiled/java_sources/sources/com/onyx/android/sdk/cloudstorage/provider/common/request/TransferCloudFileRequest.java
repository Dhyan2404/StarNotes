package com.onyx.android.sdk.cloudstorage.provider.common.request;

import androidx.annotation.WorkerThread;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.event.CloudStorageDownloadFileEvent;
import com.onyx.android.sdk.cloudstorage.event.CloudStorageUploadFileEvent;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import com.onyx.android.sdk.data.common.download.data.ProgressInfo;
import com.onyx.android.sdk.data.common.exception.AbortException;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000 $*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001$B\u0007¢\u0006\u0004\b\"\u0010#J\u0006\u0010\u0004\u001a\u00020\u0003J\u0010\u0010\u0007\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\b\u001a\u00020\u0003J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0015J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0014J\b\u0010\u000e\u001a\u00020\u0003H\u0014J\u0016\u0010\u0012\u001a\u00020\u00032\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002R\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R@\u0010\u0018\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f\u0018\u00010\u00162\u0014\u0010\u0017\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f\u0018\u00010\u00168\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\n\u001a\u00020\t8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\n\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "onStart", "", "e", "onDone", "disposeTransfer", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "progressInfo", "", "soFarBytes", "onProgress", "checkAbort", "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "status", "c", "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "getStatus", "()Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "<set-?>", "emitter", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "getEmitter", "()Lio/reactivex/rxjava3/core/ObservableEmitter;", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "getProgressInfo", "()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "Lio/reactivex/rxjava3/disposables/Disposable;", "disposable", "Lio/reactivex/rxjava3/disposables/Disposable;", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public abstract class TransferCloudFileRequest<T> extends RxBaseRequest<T> {
    public static final long DEFAULT_PROGRESS_MIN_INTERVAL = 1200;

    @Nullable
    private ObservableEmitter<OnyxFileTransferStatus<CloudFileBean>> emitter;

    @NotNull
    private final OnyxFileTransferStatus<CloudFileBean> status = new OnyxFileTransferStatus<>();

    @NotNull
    private final ProgressInfo progressInfo = new ProgressInfo();

    @Nullable
    private Disposable disposable = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.lln
        @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
        public final void subscribe(ObservableEmitter observableEmitter) {
            TransferCloudFileRequest.m32629b(TransferCloudFileRequest.this, observableEmitter);
        }
    }).throttleFirst(1200, TimeUnit.MILLISECONDS).subscribeOn(AndroidSchedulers.mainThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C7289a(this));

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest$a */
    /* loaded from: classes7.dex */
    public static final class C7289a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ TransferCloudFileRequest<T> f41527e;

        public C7289a(TransferCloudFileRequest<T> transferCloudFileRequest) {
            this.f41527e = transferCloudFileRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OnyxFileTransferStatus<CloudFileBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f41527e.m32630c(it2);
        }
    }

    /* renamed from: b */
    public static final void m32629b(TransferCloudFileRequest this$0, ObservableEmitter e) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e, "e");
        this$0.emitter = e;
    }

    /* renamed from: c */
    public final void m32630c(OnyxFileTransferStatus<CloudFileBean> status) {
        if (status.getIsUpload()) {
            CloudStorageManager.INSTANCE.getOurInstance().postEvent(new CloudStorageUploadFileEvent(status));
        } else {
            CloudStorageManager.INSTANCE.getOurInstance().postEvent(new CloudStorageDownloadFileEvent(status));
        }
    }

    public void checkAbort() {
        if (getAbort()) {
            throw new AbortException("abort cloud file transfer");
        }
    }

    public final void disposeTransfer() {
        Disposable disposable = this.disposable;
        if (disposable != null) {
            disposable.dispose();
        }
        this.disposable = null;
        this.emitter = null;
    }

    @Nullable
    public final ObservableEmitter<OnyxFileTransferStatus<CloudFileBean>> getEmitter() {
        return this.emitter;
    }

    @NotNull
    public final ProgressInfo getProgressInfo() {
        return this.progressInfo;
    }

    @NotNull
    public final OnyxFileTransferStatus<CloudFileBean> getStatus() {
        return this.status;
    }

    public final void onDone(@Nullable Throwable e) {
        disposeTransfer();
        if (e == null) {
            this.status.setCompleteStatus();
        } else {
            e.printStackTrace();
            if (getAbort() || (e instanceof AbortException)) {
                this.status.setInvalidStatus();
            } else {
                this.status.setErrorStatus();
            }
        }
        m32630c(this.status);
    }

    @WorkerThread
    public void onProgress(@NotNull ProgressInfo progressInfo, long soFarBytes) {
        Intrinsics.checkNotNullParameter(progressInfo, "progressInfo");
        progressInfo.setSoFarBytes(soFarBytes);
        progressInfo.setProgress(((((float) progressInfo.getSoFarBytes()) * 1.0f) * 100) / ((float) progressInfo.getTotalBytes()));
        onProgress(progressInfo);
    }

    public final void onStart() {
        m32630c(this.status);
    }

    public void onProgress(@NotNull ProgressInfo progressInfo) {
        Intrinsics.checkNotNullParameter(progressInfo, "progressInfo");
        checkAbort();
        ObservableEmitter<OnyxFileTransferStatus<CloudFileBean>> observableEmitter = this.emitter;
        if (observableEmitter != null) {
            OnyxFileTransferStatus<CloudFileBean> onyxFileTransferStatus = this.status;
            onyxFileTransferStatus.updateProgressInfo(progressInfo);
            observableEmitter.onNext(onyxFileTransferStatus);
        }
    }
}
