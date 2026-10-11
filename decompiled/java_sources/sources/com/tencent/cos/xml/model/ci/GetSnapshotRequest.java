package com.tencent.cos.xml.model.ci;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.object.GetObjectRequest;

/* loaded from: classes10.dex */
public class GetSnapshotRequest extends GetObjectRequest {
    private float time;

    public GetSnapshotRequest(String str, String str2, String str3, String str4, float f) {
        super(str, str2, str3, str4);
        this.time = f;
        this.queryParameters.put("ci-process", "snapshot");
        this.queryParameters.put("time", String.valueOf(f));
    }

    @Override // com.tencent.cos.xml.model.object.GetObjectRequest, com.tencent.cos.xml.model.object.ObjectRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
    }

    @Override // com.tencent.cos.xml.model.object.GetObjectRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    public void setFormat(String str) {
        this.queryParameters.put(Constants.ATTRNAME_FORMAT, str);
    }

    public void setHeight(int i) {
        this.queryParameters.put("height", String.valueOf(i));
    }

    public void setMode(String str) {
        this.queryParameters.put(Constants.ATTRNAME_MODE, str);
    }

    public void setRotate(String str) {
        this.queryParameters.put("rotate", str);
    }

    public void setWidth(int i) {
        this.queryParameters.put("width", String.valueOf(i));
    }
}
