package com.onyx.android.sdk.data.serverconvert.request;

import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.model.GetObjectResult;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertResultType;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertProgressEvent;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "convertEntry", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;", "eventBus", "Lorg/greenrobot/eventbus/EventBus;", "(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;Lorg/greenrobot/eventbus/EventBus;)V", "localDir", "Ljava/io/File;", "getLocalDir", "()Ljava/io/File;", "setLocalDir", "(Ljava/io/File;)V", "downLoadFile", "execute", "handleProgress", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSaveDocConvertFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveDocConvertFileRequest.kt\ncom/onyx/android/sdk/data/serverconvert/request/SaveDocConvertFileRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"})
/* loaded from: classes7.dex */
public final class SaveDocConvertFileRequest extends RxBaseRequest<ConvertEntry> {

    @NotNull
    private final ConvertEntry convertEntry;

    @NotNull
    private final EventBus eventBus;
    public File localDir;

    @NotNull
    private final GetObjectResult result;

    public SaveDocConvertFileRequest(@NotNull ConvertEntry convertEntry, @NotNull GetObjectResult result, @NotNull EventBus eventBus) {
        Intrinsics.checkNotNullParameter(convertEntry, "convertEntry");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        this.convertEntry = convertEntry;
        this.result = result;
        this.eventBus = eventBus;
    }

    private final ConvertEntry downLoadFile() {
        byte[] bArr = new byte[2048];
        Paths paths = Paths.INSTANCE;
        String absolutePath = getLocalDir().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        String obj = paths.append(paths.toPath(absolutePath), this.convertEntry.generateConvertDocName()).toAbsolutePath().toString();
        StringBuilder sb = new StringBuilder();
        FileUtils fileUtils = FileUtils.INSTANCE;
        sb.append(fileUtils.getParent(obj));
        sb.append(File.separator);
        sb.append(UUIDUtils.INSTANCE.rawUUID());
        String sb2 = sb.toString();
        fileUtils.deleteFile(sb2);
        fileUtils.ensureFileExists(sb2);
        if (!fileUtils.fileExist(sb2)) {
            this.convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
            Debug.INSTANCE.m32044e(SaveDocConvertFileRequest.class, "can not create tempSaveFilePath: " + sb2, new Object[0]);
            return this.convertEntry;
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
        if (!StringUtils.equals(calculateBase64Md5, this.result.getMetadata().getContentMD5())) {
            fileUtils2.deleteFile(sb2);
            Debug.INSTANCE.m32037d("pull data file md5 error:" + obj);
            this.convertEntry.setStatus(ConvertResultType.RESULT_FAILED);
            return this.convertEntry;
        }
        this.convertEntry.setProgressValue(95);
        handleProgress(this.eventBus, this.convertEntry);
        fileUtils2.deleteFile(obj);
        new File(sb2).renameTo(new File(obj));
        if (this.result.getMetadata() != null && this.result.getMetadata().getLastModified() != null) {
            new File(obj).setLastModified(this.result.getMetadata().getLastModified().getTime());
        }
        this.convertEntry.setDownloadLocalPath(obj);
        this.convertEntry.setStatus(ConvertResultType.RESULT_SUCCESS);
        return this.convertEntry;
    }

    private final void handleProgress(EventBus eventBus, ConvertEntry convertEntry) {
        DocConvertProgressEvent docConvertProgressEvent = new DocConvertProgressEvent();
        docConvertProgressEvent.setStatus(202);
        docConvertProgressEvent.setTaskId(convertEntry.getTaskId());
        eventBus.post(docConvertProgressEvent);
    }

    @NotNull
    public final File getLocalDir() {
        File file = this.localDir;
        if (file != null) {
            return file;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDir");
        return null;
    }

    public final void setLocalDir(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<set-?>");
        this.localDir = file;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public ConvertEntry execute() {
        return downLoadFile();
    }
}
