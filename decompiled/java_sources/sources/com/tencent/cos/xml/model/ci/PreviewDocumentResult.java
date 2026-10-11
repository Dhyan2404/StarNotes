package com.tencent.cos.xml.model.ci;

import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.exception.CosXmlServiceException;
import com.tencent.cos.xml.model.object.GetObjectResult;
import com.tencent.qcloud.core.http.HttpResponse;

/* loaded from: classes10.dex */
public class PreviewDocumentResult extends GetObjectResult {
    private String contentType;
    private String errNo;
    private String previewFilePath;
    private String sheetName;
    private int totalPage;
    private int totalSheet;

    public PreviewDocumentResult(String str) {
        this.previewFilePath = str;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getErrNo() {
        return this.errNo;
    }

    public String getPreviewFilePath() {
        return this.previewFilePath;
    }

    public String getSheetName() {
        return this.sheetName;
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public int getTotalSheet() {
        return this.totalSheet;
    }

    @Override // com.tencent.cos.xml.model.object.GetObjectResult, com.tencent.cos.xml.model.CosXmlResult
    public void parseResponseBody(HttpResponse httpResponse) throws CosXmlClientException, CosXmlServiceException {
        super.parseResponseBody(httpResponse);
        String header = httpResponse.header("X-Total-Page");
        if (header != null) {
            try {
                this.totalPage = Integer.parseInt(header);
            } catch (Error unused) {
            }
        }
        this.contentType = httpResponse.header("Content-Type");
        this.errNo = httpResponse.header("X-ErrNo\t");
        String header2 = httpResponse.header("X-Total-Sheet");
        if (header2 != null) {
            try {
                this.totalSheet = Integer.parseInt(header2);
            } catch (Error unused2) {
            }
        }
        this.sheetName = httpResponse.header("X-Sheet-Name");
    }
}
