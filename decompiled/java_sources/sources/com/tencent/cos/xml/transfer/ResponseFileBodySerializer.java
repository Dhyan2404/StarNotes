package com.tencent.cos.xml.transfer;

import android.content.ContentResolver;
import android.net.Uri;
import com.tencent.cos.xml.model.object.GetObjectResult;
import com.tencent.qcloud.core.common.QCloudClientException;
import com.tencent.qcloud.core.common.QCloudServiceException;
import com.tencent.qcloud.core.http.HttpResponse;
import com.tencent.qcloud.core.http.ResponseFileConverter;

/* loaded from: classes10.dex */
public class ResponseFileBodySerializer<T2> extends ResponseFileConverter<T2> {
    private GetObjectResult getObjectResult;

    public ResponseFileBodySerializer(GetObjectResult getObjectResult, String str, long j) {
        super(str, j);
        this.getObjectResult = getObjectResult;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:?, code lost:
    
        throw r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parseCOSXMLError(com.tencent.qcloud.core.http.HttpResponse r3) throws com.tencent.cos.xml.exception.CosXmlServiceException, com.tencent.cos.xml.exception.CosXmlClientException {
        /*
            r2 = this;
            int r2 = r3.code()
            r0 = 200(0xc8, float:2.8E-43)
            if (r2 < r0) goto Ld
            r0 = 300(0x12c, float:4.2E-43)
            if (r2 >= r0) goto Ld
            return
        Ld:
            java.lang.String r0 = r3.message()
            com.tencent.cos.xml.exception.CosXmlServiceException r1 = new com.tencent.cos.xml.exception.CosXmlServiceException
            r1.<init>(r0)
            r1.setStatusCode(r2)
            java.lang.String r2 = "x-cos-request-id"
            java.lang.String r2 = r3.header(r2)
            r1.setRequestId(r2)
            java.io.InputStream r2 = r3.byteStream()
            if (r2 == 0) goto L53
            com.tencent.cos.xml.model.tag.CosError r3 = new com.tencent.cos.xml.model.tag.CosError
            r3.<init>()
            com.tencent.cos.xml.utils.BaseXmlSlimParser.parseError(r2, r3)     // Catch: java.io.IOException -> L45 org.xmlpull.v1.XmlPullParserException -> L52
            java.lang.String r2 = r3.code     // Catch: java.io.IOException -> L45 org.xmlpull.v1.XmlPullParserException -> L52
            r1.setErrorCode(r2)     // Catch: java.io.IOException -> L45 org.xmlpull.v1.XmlPullParserException -> L52
            java.lang.String r2 = r3.message     // Catch: java.io.IOException -> L45 org.xmlpull.v1.XmlPullParserException -> L52
            r1.setErrorMessage(r2)     // Catch: java.io.IOException -> L45 org.xmlpull.v1.XmlPullParserException -> L52
            java.lang.String r2 = r3.requestId     // Catch: java.io.IOException -> L45 org.xmlpull.v1.XmlPullParserException -> L52
            r1.setRequestId(r2)     // Catch: java.io.IOException -> L45 org.xmlpull.v1.XmlPullParserException -> L52
            java.lang.String r2 = r3.resource     // Catch: java.io.IOException -> L45 org.xmlpull.v1.XmlPullParserException -> L52
            r1.setServiceName(r2)     // Catch: java.io.IOException -> L45 org.xmlpull.v1.XmlPullParserException -> L52
            goto L53
        L45:
            r2 = move-exception
            com.tencent.cos.xml.exception.CosXmlClientException r3 = new com.tencent.cos.xml.exception.CosXmlClientException
            com.tencent.cos.xml.common.ClientErrorCode r0 = com.tencent.cos.xml.common.ClientErrorCode.POOR_NETWORK
            int r0 = r0.getCode()
            r3.<init>(r0, r2)
            throw r3
        L52:
            throw r1
        L53:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.cos.xml.transfer.ResponseFileBodySerializer.parseCOSXMLError(com.tencent.qcloud.core.http.HttpResponse):void");
    }

    @Override // com.tencent.qcloud.core.http.ResponseFileConverter, com.tencent.qcloud.core.http.ResponseBodyConverter
    public T2 convert(HttpResponse httpResponse) throws QCloudClientException, QCloudServiceException {
        parseCOSXMLError(httpResponse);
        this.getObjectResult.parseResponseBody(httpResponse);
        super.convert(httpResponse);
        return (T2) this.getObjectResult;
    }

    public ResponseFileBodySerializer(GetObjectResult getObjectResult, Uri uri, ContentResolver contentResolver, long j) {
        super(uri, contentResolver, j);
        this.getObjectResult = getObjectResult;
    }
}
