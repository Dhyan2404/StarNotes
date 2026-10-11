package com.onyx.android.sdk.cloudstorage.provider.googledriver.action;

import com.google.api.services.drive.model.File;
import com.onyx.android.sdk.base.p018rx.RxSimpleAction;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.model.CloudNote;
import com.onyx.android.sdk.cloudstorage.model.CloudNoteBook;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageRecordProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.request.GoogleDriveSaveExportFileRequest;
import com.onyx.android.sdk.data.common.download.data.OnyxFileTransferStatus;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0003H\u0016J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\nH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveNoteAction;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/SaveCloudNoteAction;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "cloudNote", "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)V", "getProvider", BaiduYunConstant.UPLOAD, "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriverSaveNoteAction extends SaveCloudNoteAction {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriverSaveNoteAction(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull CloudNote cloudNote) {
        super(cloudNote);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(cloudNote, "cloudNote");
        this.googleDriverProvider = googleDriverProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.action.cloud.SaveCloudNoteAction
    @NotNull
    public Observable<CloudFileBean> upload(@NotNull final CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        fileBean.setAccountId(this.googleDriverProvider.getAccountId());
        GoogleDriverProvider googleDriverProvider = this.googleDriverProvider;
        CloudNoteBook noteBook = getCloudNote().getNoteBook();
        Intrinsics.checkNotNull(noteBook);
        List<String> parentTitles = noteBook.getParentTitles();
        String name = fileBean.getName();
        Intrinsics.checkNotNull(name);
        String localFilePath = fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        final GoogleDriveSaveExportFileRequest googleDriveSaveExportFileRequest = new GoogleDriveSaveExportFileRequest(googleDriverProvider, parentTitles, name, localFilePath);
        Observable<CloudFileBean> map = new RxSimpleAction(googleDriveSaveExportFileRequest, getObserveOn()).build().observeOn(getObserveOn()).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverSaveNoteAction$upload$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull File file) {
                GoogleDriverProvider googleDriverProvider2;
                GoogleDriverProvider googleDriverProvider3;
                Intrinsics.checkNotNullParameter(file, "file");
                CloudFileBean cloudFileBean = CloudFileBean.this;
                String id = file.getId();
                Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
                cloudFileBean.setUniqueId(id);
                GoogleDriveManager.Companion companion = GoogleDriveManager.INSTANCE;
                googleDriverProvider2 = this.googleDriverProvider;
                CloudStorageRecordProvider cloudStorageRecordProvider = googleDriverProvider2.getCloudStorageRecordProvider();
                googleDriverProvider3 = this.googleDriverProvider;
                CloudFileBean cloudFile = companion.toCloudFile(cloudStorageRecordProvider, file, googleDriverProvider3.getAccountId());
                OnyxFileTransferStatus<CloudFileBean> status = googleDriveSaveExportFileRequest.getStatus();
                status.setTag(cloudFile.getCloudFilePath());
                status.setNewTag(cloudFile.getUniqueId());
                status.setEntry(cloudFile);
                googleDriveSaveExportFileRequest.onDone(null);
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.cloudstorage.provider.googledriver.action.GoogleDriverSaveNoteAction$upload$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final CloudFileBean apply(@NotNull File it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return CloudFileBean.this;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public GoogleDriverProvider getDropBoxProvider() {
        return this.googleDriverProvider;
    }
}
