package com.tencent.cos.xml.model.object;

import androidx.annotation.NonNull;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.tencent.cos.xml.CosXmlBaseService;
import com.tencent.cos.xml.common.COSACL;
import com.tencent.cos.xml.common.COSRequestHeaderKey;
import com.tencent.cos.xml.common.ClientErrorCode;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.listener.CosXmlProgressListener;
import com.tencent.cos.xml.model.tag.ACLAccount;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.io.File;
import java.io.InputStream;
import java.util.Map;

/* loaded from: classes10.dex */
public final class AppendObjectRequest extends ObjectRequest {
    private byte[] data;
    private long fileLength;
    public InputStream inputStream;
    private long position;
    private CosXmlProgressListener progressListener;
    private String srcPath;

    private AppendObjectRequest(String str, String str2) {
        super(str, str2);
        this.position = 0L;
    }

    @Override // com.tencent.cos.xml.model.object.ObjectRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
        String str = this.srcPath;
        if (str == null && this.data == null && this.inputStream == null) {
            throw new CosXmlClientException(ClientErrorCode.INVALID_ARGUMENT.getCode(), "Data Source must not be null");
        }
        if (str != null && !new File(this.srcPath).exists()) {
            throw new CosXmlClientException(ClientErrorCode.INVALID_ARGUMENT.getCode(), "upload file does not exist");
        }
    }

    public byte[] getData() {
        return this.data;
    }

    public long getFileLength() {
        if (this.srcPath != null) {
            this.fileLength = new File(this.srcPath).length();
        } else {
            if (this.data != null) {
                this.fileLength = r0.length;
            }
        }
        return this.fileLength;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "POST";
    }

    public long getPosition() {
        return this.position;
    }

    public CosXmlProgressListener getProgressListener() {
        return this.progressListener;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put(RequestParameters.SUBRESOURCE_APPEND, null);
        this.queryParameters.put("position", String.valueOf(this.position));
        return this.queryParameters;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        if (this.srcPath != null) {
            return RequestBodySerializer.file(getContentType(), new File(this.srcPath));
        }
        byte[] bArr = this.data;
        if (bArr != null) {
            return RequestBodySerializer.bytes(null, bArr);
        }
        if (this.inputStream != null) {
            return RequestBodySerializer.stream(getContentType(), new File(CosXmlBaseService.appCachePath, String.valueOf(System.currentTimeMillis())), this.inputStream);
        }
        return null;
    }

    public String getSrcPath() {
        return this.srcPath;
    }

    public void setCacheControl(@NonNull String str) {
        addHeader("Cache-Control", str);
    }

    public void setContentDisposition(@NonNull String str) {
        addHeader("Content-Disposition", str);
    }

    public void setContentEncodeing(@NonNull String str) {
        addHeader("Content-Encoding", str);
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }

    public void setExpires(@NonNull String str) {
        addHeader("Expires", str);
    }

    public void setPosition(long j) {
        if (j < 0) {
            this.position = 0L;
        }
        this.position = j;
    }

    public void setProgressListener(CosXmlProgressListener cosXmlProgressListener) {
        this.progressListener = cosXmlProgressListener;
    }

    public void setSrcPath(String str) {
        this.srcPath = str;
    }

    public void setXCOSACL(String str) {
        if (str != null) {
            addHeader("x-cos-acl", str);
        }
    }

    public void setXCOSGrantRead(ACLAccount aCLAccount) {
        if (aCLAccount != null) {
            addHeader(COSRequestHeaderKey.X_COS_GRANT_READ, aCLAccount.getAccount());
        }
    }

    public void setXCOSGrantWrite(ACLAccount aCLAccount) {
        if (aCLAccount != null) {
            addHeader(COSRequestHeaderKey.X_COS_GRANT_WRITE, aCLAccount.getAccount());
        }
    }

    public void setXCOSMeta(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        addHeader(str, str2);
    }

    public void setXCOSReadWrite(ACLAccount aCLAccount) {
        if (aCLAccount != null) {
            addHeader(COSRequestHeaderKey.X_COS_GRANT_FULL_CONTROL, aCLAccount.getAccount());
        }
    }

    public void setXCOSACL(COSACL cosacl) {
        if (cosacl != null) {
            addHeader("x-cos-acl", cosacl.getAcl());
        }
    }

    public AppendObjectRequest(String str, String str2, String str3, long j) {
        this(str, str2);
        this.srcPath = str3;
        this.position = j;
    }

    public AppendObjectRequest(String str, String str2, byte[] bArr, long j) {
        this(str, str2);
        this.data = bArr;
        this.position = j;
    }

    public AppendObjectRequest(String str, String str2, InputStream inputStream, long j) {
        this(str, str2);
        this.inputStream = inputStream;
        this.position = j;
    }
}
