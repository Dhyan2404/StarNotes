package com.onyx.android.sdk.replicator.request;

import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0012\u0010\u000eJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0000H\u0016R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\b\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/request/ComputeDataFileMD5Request;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "fileLength", "setFileLength", "execute", "", "a", Constants.STRING_SIG, "filePath", "b", "getMd5", "()Ljava/lang/String;", "setMd5", "(Ljava/lang/String;)V", CouchFieldKey.KEY_MD5, "c", "J", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ComputeDataFileMD5Request extends RxBaseRequest<ComputeDataFileMD5Request> {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public final String filePath;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String md5;

    /* renamed from: c, reason: from kotlin metadata */
    public long fileLength;

    public ComputeDataFileMD5Request(@Nullable String str) {
        this.filePath = str;
    }

    @Nullable
    public final String getMd5() {
        return this.md5;
    }

    @NotNull
    public final ComputeDataFileMD5Request setFileLength(long fileLength) {
        this.fileLength = fileLength;
        return this;
    }

    public final void setMd5(@Nullable String str) {
        this.md5 = str;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public ComputeDataFileMD5Request execute() throws Exception {
        String calculateBase64Md5;
        if (this.fileLength > 0) {
            calculateBase64Md5 = FileUtils.INSTANCE.computeFullMD5Checksum(new File(this.filePath));
        } else {
            calculateBase64Md5 = BinaryUtil.calculateBase64Md5(this.filePath);
        }
        this.md5 = calculateBase64Md5;
        return this;
    }
}
