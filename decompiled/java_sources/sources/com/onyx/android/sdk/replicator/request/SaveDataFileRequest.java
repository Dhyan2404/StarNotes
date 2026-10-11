package com.onyx.android.sdk.replicator.request;

import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.model.GetObjectResult;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.bean.SyncDataBean;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0002\u001a\u00020\u0000H\u0016R\u0014\u0010\u0006\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/request/SaveDataFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "execute", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "a", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "syncDataBean", "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;", "b", "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "dataBean", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveDataFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveDataFileRequest.kt\ncom/onyx/android/sdk/replicator/request/SaveDataFileRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveDataFileRequest extends RxBaseRequest<SaveDataFileRequest> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final SyncDataBean syncDataBean;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final GetObjectResult result;

    public SaveDataFileRequest(@NotNull SyncDataBean dataBean, @NotNull GetObjectResult result) {
        Intrinsics.checkNotNullParameter(dataBean, "dataBean");
        Intrinsics.checkNotNullParameter(result, "result");
        this.syncDataBean = dataBean;
        this.result = result;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public SaveDataFileRequest execute() throws Exception {
        byte[] bArr = new byte[2048];
        String localSavePath = this.syncDataBean.getLocalSavePath();
        StringBuilder sb = new StringBuilder();
        FileUtils fileUtils = FileUtils.INSTANCE;
        sb.append(fileUtils.getParent(localSavePath));
        sb.append(File.separator);
        sb.append(UUIDUtils.INSTANCE.rawUUID());
        String sb2 = sb.toString();
        fileUtils.deleteFile(sb2);
        fileUtils.ensureFileExists(sb2);
        if (!fileUtils.fileExist(sb2)) {
            KSyncLogUtils.INSTANCE.m35865e(SaveDataFileRequest.class, "can not create tempSaveFilePath: " + sb2);
            return this;
        }
        InputStream objectContent = this.result.getObjectContent();
        while (true) {
            try {
                int read = objectContent.read(bArr);
                if (read == -1) {
                    break;
                }
                FileUtils.INSTANCE.appendContentToFile(sb2, bArr, read);
            } finally {
            }
        }
        Unit unit = Unit.INSTANCE;
        CloseableKt.closeFinally(objectContent, null);
        FileUtils fileUtils2 = FileUtils.INSTANCE;
        fileUtils2.closeQuietly(this.result.getObjectContent());
        String calculateBase64Md5 = BinaryUtil.calculateBase64Md5(sb2);
        Intrinsics.checkNotNullExpressionValue(calculateBase64Md5, "calculateBase64Md5(...)");
        if (StringUtils.equals(calculateBase64Md5, this.result.getMetadata().getContentMD5())) {
            fileUtils2.deleteFile(localSavePath);
            new File(sb2).renameTo(new File(localSavePath));
            if (this.result.getMetadata() != null && this.result.getMetadata().getLastModified() != null) {
                new File(localSavePath).setLastModified(this.result.getMetadata().getLastModified().getTime());
            }
            return this;
        }
        fileUtils2.deleteFile(sb2);
        throw new Exception("pull data file md5 error:" + localSavePath);
    }
}
