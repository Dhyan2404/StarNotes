package com.onyx.android.sdk.data.serverconvert.action;

import android.annotation.SuppressLint;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType;
import com.onyx.android.sdk.data.serverconvert.convertor.DocConvertFactory;
import com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B7\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b¢\u0006\u0002\u0010\nJ\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\u0012H\u0016J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0002H\u0003R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;", "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "data", "", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "localConvertList", "", "networkConvertList", "(Ljava/util/List;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V", "getData", "()Ljava/util/List;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "getLocalConvertList", "getNetworkConvertList", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "requestSaveConvertFile", "convertEntry", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DownloadFilesAction extends RxBaseCovertAction<ConvertEntry> {

    @NotNull
    private final List<ConvertEntry> data;

    @NotNull
    private final EventBus eventBus;

    @NotNull
    private final List<ConvertEntry> localConvertList;

    @NotNull
    private final List<ConvertEntry> networkConvertList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadFilesAction(@NotNull List<ConvertEntry> data, @NotNull EventBus eventBus, @NotNull List<ConvertEntry> localConvertList, @NotNull List<ConvertEntry> networkConvertList) {
        super(eventBus);
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        Intrinsics.checkNotNullParameter(localConvertList, "localConvertList");
        Intrinsics.checkNotNullParameter(networkConvertList, "networkConvertList");
        this.data = data;
        this.eventBus = eventBus;
        this.localConvertList = localConvertList;
        this.networkConvertList = networkConvertList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CheckResult"})
    public final Observable<ConvertEntry> requestSaveConvertFile(final ConvertEntry convertEntry) {
        String ossDownloadKey = convertEntry.getOssDownloadKey();
        if (ossDownloadKey == null || ossDownloadKey.length() == 0) {
            convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
            Observable<ConvertEntry> just = Observable.just(convertEntry);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final int progressValue = convertEntry.getProgressValue();
        final int i = 95;
        DocConvertFactory.INSTANCE.getInstance().ensureDocConvert(convertEntry.getConvertType()).downloadFile(convertEntry, new OnFileTransferListener() { // from class: com.onyx.android.sdk.data.serverconvert.action.DownloadFilesAction$requestSaveConvertFile$1
            @Override // com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener
            public void onProgress(long progress, long total) {
                int i2 = i;
                convertEntry.setProgressValue((int) (progressValue + ((i2 - r1) * (((float) progress) / ((float) total)))));
                DownloadFilesAction downloadFilesAction = this;
                downloadFilesAction.handleProgress(convertEntry, downloadFilesAction.getLocalConvertList(), this.getNetworkConvertList());
            }

            @Override // com.onyx.android.sdk.data.serverconvert.convertor.OnFileTransferListener
            public void onResult(boolean isSuccess, @Nullable String fileKey, @Nullable String filePath) {
                if (!isSuccess || filePath == null) {
                    convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
                    Debug.INSTANCE.m32037d("convert  [download] failed!");
                } else {
                    convertEntry.setDownloadLocalPath(filePath);
                    convertEntry.setStatus(ConvertResultType.RESULT_SUCCESS);
                    Debug.INSTANCE.m32037d("convert  [download] end");
                }
                convertEntry.setProgressValue(95);
                DownloadFilesAction downloadFilesAction = this;
                downloadFilesAction.handleProgress(convertEntry, downloadFilesAction.getLocalConvertList(), this.getNetworkConvertList());
                RxjavaKt.done(create, convertEntry);
            }
        });
        return create;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ConvertEntry> create() {
        Observable<ConvertEntry> flatMap = Observable.just(this).observeOn(getObserveOn()).flatMap(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.DownloadFilesAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ClusterInfo> apply(@NotNull DownloadFilesAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return DownloadFilesAction.this.ensureClusterInfo();
            }
        }).observeOn(getObserveOn()).flatMap(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.DownloadFilesAction$create$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ConvertEntry> apply(@NotNull ClusterInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Observable.fromIterable(DownloadFilesAction.this.getData());
            }
        }).flatMap(new Function() { // from class: com.onyx.android.sdk.data.serverconvert.action.DownloadFilesAction$create$3
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends ConvertEntry> apply(@NotNull ConvertEntry it2) {
                Observable requestSaveConvertFile;
                Intrinsics.checkNotNullParameter(it2, "it");
                requestSaveConvertFile = DownloadFilesAction.this.requestSaveConvertFile(it2);
                return requestSaveConvertFile;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final List<ConvertEntry> getData() {
        return this.data;
    }

    @NotNull
    public final EventBus getEventBus() {
        return this.eventBus;
    }

    @NotNull
    public final List<ConvertEntry> getLocalConvertList() {
        return this.localConvertList;
    }

    @NotNull
    public final List<ConvertEntry> getNetworkConvertList() {
        return this.networkConvertList;
    }
}
