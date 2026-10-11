package com.onyx.android.sdk.cloudstorage.provider.aliyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0017\u0010\u0018R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR*\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;", "", C6997f.f39671c, Constants.STRING_SIG, "getFileId", "()Ljava/lang/String;", "setFileId", "(Ljava/lang/String;)V", "fileId", C6998g.f39679a, "getUploadId", "setUploadId", RequestParameters.UPLOAD_ID, "", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;", C6999h.f39688c, "Ljava/util/List;", "getPartInfoList", "()Ljava/util/List;", "setPartInfoList", "(Ljava/util/List;)V", "partInfoList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Part", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunUploadSession extends AliYunFileCreate {

    /* renamed from: f, reason: from kotlin metadata */
    @JSONField(alternateNames = {"file_id"})
    @Nullable
    public String fileId;

    /* renamed from: g, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.ALI_YUN_UPLOAD_ID})
    @Nullable
    public String uploadId;

    /* renamed from: h, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.ALI_YUN_PART_INFO_LIST})
    @Nullable
    public List<Part> partInfoList;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001e\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\b¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession$Part;", "Ljava/io/Serializable;", "()V", CouchFieldKey.KEY_CONTENT_TYPE, "", "getContentType", "()Ljava/lang/String;", "setContentType", "(Ljava/lang/String;)V", BreakpointSQLiteKey.ETAG, "getEtag", "setEtag", RequestParameters.PART_NUMBER, "", "getPartNumber", "()I", "setPartNumber", "(I)V", "partSize", "", "getPartSize", "()J", "setPartSize", "(J)V", "uploadUrl", "getUploadUrl", "setUploadUrl", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Part implements Serializable {

        @JSONField(alternateNames = {"content_type"})
        @Nullable
        private String contentType;

        @Nullable
        private String etag;

        @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.ALI_YUN_PART_NUMBER})
        private int partNumber;

        @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.ALI_YUN_PART_SIZE})
        private long partSize;

        @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.ALI_YUN_UPLOAD_URL})
        @Nullable
        private String uploadUrl;

        @Nullable
        public final String getContentType() {
            return this.contentType;
        }

        @Nullable
        public final String getEtag() {
            return this.etag;
        }

        public final int getPartNumber() {
            return this.partNumber;
        }

        public final long getPartSize() {
            return this.partSize;
        }

        @Nullable
        public final String getUploadUrl() {
            return this.uploadUrl;
        }

        public final void setContentType(@Nullable String str) {
            this.contentType = str;
        }

        public final void setEtag(@Nullable String str) {
            this.etag = str;
        }

        public final void setPartNumber(int i) {
            this.partNumber = i;
        }

        public final void setPartSize(long j) {
            this.partSize = j;
        }

        public final void setUploadUrl(@Nullable String str) {
            this.uploadUrl = str;
        }
    }

    @Nullable
    public final String getFileId() {
        return this.fileId;
    }

    @Nullable
    public final List<Part> getPartInfoList() {
        return this.partInfoList;
    }

    @Nullable
    public final String getUploadId() {
        return this.uploadId;
    }

    public final void setFileId(@Nullable String str) {
        this.fileId = str;
    }

    public final void setPartInfoList(@Nullable List<Part> list) {
        this.partInfoList = list;
    }

    public final void setUploadId(@Nullable String str) {
        this.uploadId = str;
    }
}
