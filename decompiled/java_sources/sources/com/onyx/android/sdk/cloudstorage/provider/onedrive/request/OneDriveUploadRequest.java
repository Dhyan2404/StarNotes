package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.common.request.TransferCloudFileRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveUploadResponseBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverErrorBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverUploadSession;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\"\u0010#J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\"\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R$\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00028\u0006@BX\u0086.¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u000b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0005\u0010 ¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveUploadRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "execute", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;", "d", "uploadSession", "", C6997f.f39671c, "", "fileLength", "", TypedValues.CycleType.S_WAVE_OFFSET, C6998g.f39679a, "", "data", "Lokhttp3/RequestBody;", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "fileBean", "<set-?>", "c", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "getFileInfo", "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", "fileInfo", "I", "blockLength", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriveUploadRequest extends TransferCloudFileRequest<OneDriverFileInfo> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean fileBean;

    /* renamed from: c, reason: from kotlin metadata */
    public OneDriverFileInfo fileInfo;

    /* renamed from: d, reason: from kotlin metadata */
    public final int blockLength;

    public OneDriveUploadRequest(@NotNull OneDriveProvider oneDriveProvider, @NotNull CloudFileBean fileBean) {
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(fileBean, "fileBean");
        this.oneDriveProvider = oneDriveProvider;
        this.fileBean = fileBean;
        this.blockLength = 3276800;
    }

    /* renamed from: d */
    public final OneDriveUploadResponseBody m32763d() throws Exception {
        Debug debug = Debug.INSTANCE;
        debug.m32035d(OneDriveUploadRequest.class, "createUploadSession start:" + this.fileBean.getCloudFilePath(), new Object[0]);
        OneDriverUploadSession oneDriverUploadSession = new OneDriverUploadSession();
        oneDriverUploadSession.getItem().setName(FilenameUtils.getName(this.fileBean.getLocalFilePath()));
        Response<OneDriveUploadResponseBody> execute = this.oneDriveProvider.getOneDriveClient().getOneDriveService().createUploadSession(this.fileBean.getCloudFilePath(), oneDriverUploadSession).execute();
        if (!execute.isSuccessful()) {
            OneDriverErrorBody.Companion companion = OneDriverErrorBody.INSTANCE;
            Intrinsics.checkNotNull(execute);
            throw companion.parseError(execute);
        }
        debug.m32035d(OneDriveUploadRequest.class, "createUploadSession finish: " + JSONUtils.INSTANCE.toJson(execute.body()), new Object[0]);
        OneDriveUploadResponseBody body = execute.body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    /* renamed from: e */
    public final RequestBody m32764e(byte[] data) {
        return RequestBody.Companion.create$default(RequestBody.INSTANCE, data, MultipartBody.FORM, 0, 0, 6, (Object) null);
    }

    /* renamed from: f */
    public final void m32765f(OneDriveUploadResponseBody uploadSession) throws Exception {
        String localFilePath = this.fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        long sizeOf = FileUtils.sizeOf(new File(localFilePath));
        getProgressInfo().setTotalBytes(sizeOf);
        int i = 0;
        while (i < sizeOf) {
            m32766g(uploadSession, sizeOf, i);
            i += this.blockLength;
        }
    }

    /* renamed from: g */
    public final OneDriveUploadResponseBody m32766g(OneDriveUploadResponseBody uploadSession, long fileLength, int offset) throws Exception {
        Debug debug = Debug.INSTANCE;
        debug.m32035d(OneDriveUploadRequest.class, "uploadBlock start: " + offset, new Object[0]);
        long j = offset;
        onProgress(getProgressInfo(), j);
        com.onyx.android.sdk.base.utils.FileUtils fileUtils = com.onyx.android.sdk.base.utils.FileUtils.INSTANCE;
        String localFilePath = this.fileBean.getLocalFilePath();
        Intrinsics.checkNotNull(localFilePath);
        byte[] block = fileUtils.getBlock(localFilePath, j, this.blockLength);
        long length = block.length;
        String str = "bytes " + offset + '-' + (j + (length - 1)) + '/' + fileLength;
        debug.m32035d(OneDriveUploadRequest.class, length + " contentRange: " + str, new Object[0]);
        Response<ResponseBody> execute = this.oneDriveProvider.getOneDriveClient().getOneDriveUploadService().upload(uploadSession.getUploadUrl(), length, str, m32764e(block)).execute();
        if (!execute.isSuccessful()) {
            OneDriverErrorBody.Companion companion = OneDriverErrorBody.INSTANCE;
            Intrinsics.checkNotNull(execute);
            throw companion.parseError(execute);
        }
        OneDriveUploadResponseBody oneDriveUploadResponseBody = new OneDriveUploadResponseBody();
        String string = execute.body().string();
        if (execute.code() == 201 || execute.code() == 200) {
            Object parseObject = JSONUtils.INSTANCE.parseObject(string, (Class<Object>) OneDriverFileInfo.class);
            Intrinsics.checkNotNull(parseObject);
            this.fileInfo = (OneDriverFileInfo) parseObject;
        } else {
            oneDriveUploadResponseBody = (OneDriveUploadResponseBody) JSONUtils.INSTANCE.parseObject(string, OneDriveUploadResponseBody.class);
        }
        debug.m32035d(OneDriveUploadRequest.class, "uploadBlock finish: " + JSONUtils.INSTANCE.toJson(string), new Object[0]);
        return oneDriveUploadResponseBody;
    }

    @NotNull
    public final OneDriverFileInfo getFileInfo() {
        OneDriverFileInfo oneDriverFileInfo = this.fileInfo;
        if (oneDriverFileInfo != null) {
            return oneDriverFileInfo;
        }
        Intrinsics.throwUninitializedPropertyAccessException("fileInfo");
        return null;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public OneDriverFileInfo execute() {
        m32765f(m32763d());
        return getFileInfo();
    }
}
