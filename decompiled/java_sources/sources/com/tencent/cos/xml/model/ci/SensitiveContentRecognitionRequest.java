package com.tencent.cos.xml.model.ci;

import android.text.TextUtils;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes10.dex */
public class SensitiveContentRecognitionRequest extends BucketRequest {
    private boolean async;
    private String bizType;
    private String callback;
    private String cosPath;
    private String dataid;
    private String detectUrl;
    private int interval;
    private boolean largeImageDetect;
    private int maxFrames;
    private final Set<String> types;

    public SensitiveContentRecognitionRequest(String str) {
        super(str);
        this.types = new HashSet();
    }

    private void addCiParams() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it2 = this.types.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i++;
            sb.append(it2.next());
            if (i < this.types.size()) {
                sb.append(",");
            }
        }
        this.queryParameters.put("ci-process", "sensitive-content-recognition");
        if (!TextUtils.isEmpty(this.bizType)) {
            this.queryParameters.put("biz-type", this.bizType);
        }
        if (!TextUtils.isEmpty(this.detectUrl)) {
            this.queryParameters.put("detect-url", this.detectUrl);
        }
        int i2 = this.interval;
        if (i2 > 0) {
            this.queryParameters.put("interval", String.valueOf(i2));
        }
        int i3 = this.maxFrames;
        if (i3 > 0) {
            this.queryParameters.put("max-frames", String.valueOf(i3));
        }
        this.queryParameters.put("large-image-detect", this.largeImageDetect ? "1" : "0");
        this.queryParameters.put("async", this.async ? "1" : "0");
        if (!TextUtils.isEmpty(this.callback)) {
            this.queryParameters.put("callback", this.callback);
        }
        if (!TextUtils.isEmpty(this.dataid)) {
            this.queryParameters.put("dataid", this.dataid);
        }
        this.queryParameters.put("detect-type", sb.toString());
    }

    public void addType(String str) {
        this.types.add(str);
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        String str;
        super.checkParameters();
        String str2 = this.bucket;
        if (str2 != null) {
            str2.length();
        }
        String str3 = this.cosPath;
        if ((str3 == null || str3.length() < 1) && (str = this.detectUrl) != null) {
            str.length();
        }
        addCiParams();
    }

    public String getCosPath() {
        return this.cosPath;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        String str = this.bucket;
        String str2 = this.cosPath;
        if (str2 == null) {
            str2 = "";
        }
        return cosXmlServiceConfig.getUrlPath(str, str2);
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }

    public void setAsync(boolean z) {
        this.async = z;
    }

    public void setBizType(String str) {
        this.bizType = str;
    }

    public void setCallback(String str) {
        this.callback = str;
    }

    public void setCosPath(String str) {
        this.cosPath = str;
    }

    public void setDataid(String str) {
        this.dataid = str;
    }

    public void setDetectUrl(String str) {
        this.detectUrl = str;
    }

    public void setInterval(int i) {
        this.interval = i;
    }

    public void setLargeImageDetect(boolean z) {
        this.largeImageDetect = z;
    }

    public void setMaxFrames(int i) {
        this.maxFrames = i;
    }

    public SensitiveContentRecognitionRequest(String str, String str2) {
        super(str);
        this.types = new HashSet();
        setCosPath(str2);
    }
}
