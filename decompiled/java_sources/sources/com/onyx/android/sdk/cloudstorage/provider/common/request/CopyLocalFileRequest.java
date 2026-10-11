package com.onyx.android.sdk.cloudstorage.provider.common.request;

import android.content.Intent;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.model.CloudFileBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.BroadCastConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\bH\u0002R\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0012R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyLocalFileRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "execute", "()Ljava/lang/Boolean;", "Ljava/io/File;", "srcFile", "destDir", "", "name", "", "a", "sourcePath", "destPath", "b", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "localFile", Constants.STRING_SIG, "c", "d", Constants.HASIDCALL_INDEX_SIG, "getCut", Constants.BOOLEAN_VALUE_SIG, "setCut", "(Z)V", "cut", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Ljava/lang/String;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CopyLocalFileRequest extends RxBaseRequest<Boolean> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CloudFileBean localFile;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String destDir;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String name;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean cut;

    public CopyLocalFileRequest(@NotNull CloudFileBean localFile, @NotNull String destDir, @NotNull String name) {
        Intrinsics.checkNotNullParameter(localFile, "localFile");
        Intrinsics.checkNotNullParameter(destDir, "destDir");
        Intrinsics.checkNotNullParameter(name, "name");
        this.localFile = localFile;
        this.destDir = destDir;
        this.name = name;
    }

    /* renamed from: a */
    public final void m32606a(File srcFile, File destDir, String name) throws Exception {
        FileUtils.forceMkdir(destDir);
        String absolutePath = srcFile.getAbsolutePath();
        String absolutePath2 = new File(destDir, name).getAbsolutePath();
        if (this.cut) {
            if (srcFile.isDirectory()) {
                FileUtils.moveDirectoryToDirectory(srcFile, destDir, true);
                if (!StringUtils.equals(FilenameUtils.getName(absolutePath), name)) {
                    FileUtils.moveFile(FileUtils.getFile(destDir.toString() + File.separator + FilenameUtils.getName(absolutePath)), FileUtils.getFile(absolutePath2));
                }
            } else {
                FileUtils.moveFile(srcFile, new File(absolutePath2));
            }
        } else if (srcFile.isDirectory()) {
            FileUtils.copyDirectoryToDirectory(srcFile, destDir);
        } else {
            FileUtils.copyFile(srcFile, new File(absolutePath2), true);
        }
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append(this.cut ? BaiduYunConstant.OPERATION_MOVE : "copy");
        sb.append(' ');
        sb.append(absolutePath);
        sb.append(" to destDir:");
        sb.append(destDir.getAbsolutePath());
        debug.m32035d(CopyLocalFileRequest.class, sb.toString(), new Object[0]);
        Intrinsics.checkNotNull(absolutePath);
        Intrinsics.checkNotNull(absolutePath2);
        m32607b(absolutePath, absolutePath2);
    }

    /* renamed from: b */
    public final void m32607b(String sourcePath, String destPath) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(sourcePath, destPath);
        Intent intent = new Intent();
        intent.setAction(this.cut ? BroadCastConstant.RECEIVER_INTENT_CUT_ACTION : BroadCastConstant.RECEIVER_INTENT_COPY_ACTION);
        intent.putExtra("name", JSONUtils.INSTANCE.toJSONString(linkedHashMap));
        ResManager.INSTANCE.getAppContext().sendBroadcast(intent);
    }

    public final boolean getCut() {
        return this.cut;
    }

    public final void setCut(boolean z) {
        this.cut = z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Boolean execute() {
        Debug.INSTANCE.m32059w(CopyLocalFileRequest.class, "localFilePath:" + this.localFile.getLocalFilePath() + ",destDir:" + this.destDir, new Object[0]);
        if (!com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.fileExist(this.localFile.getLocalFilePath())) {
            return Boolean.FALSE;
        }
        String localFilePath = this.localFile.getLocalFilePath();
        if (!(localFilePath == null || localFilePath.length() == 0)) {
            String localFilePath2 = this.localFile.getLocalFilePath();
            Intrinsics.checkNotNull(localFilePath2);
            m32606a(new File(localFilePath2), new File(this.destDir), this.name);
        }
        return Boolean.TRUE;
    }
}
