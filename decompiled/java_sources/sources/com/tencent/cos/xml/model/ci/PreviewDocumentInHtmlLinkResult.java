package com.tencent.cos.xml.model.ci;

import android.text.TextUtils;
import com.tencent.cos.xml.common.ClientErrorCode;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.exception.CosXmlServiceException;
import com.tencent.cos.xml.model.CosXmlResult;
import com.tencent.qcloud.core.http.HttpResponse;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class PreviewDocumentInHtmlLinkResult extends CosXmlResult {
    private String previewUrl;

    public String getPreviewUrl() {
        return this.previewUrl;
    }

    @Override // com.tencent.cos.xml.model.CosXmlResult
    public void parseResponseBody(HttpResponse httpResponse) throws CosXmlClientException, CosXmlServiceException {
        super.parseResponseBody(httpResponse);
        try {
            String string = httpResponse.string();
            if (TextUtils.isEmpty(string)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(string);
            if (jSONObject.has("PreviewUrl")) {
                this.previewUrl = jSONObject.getString("PreviewUrl");
            }
        } catch (IOException e) {
            throw new CosXmlClientException(ClientErrorCode.POOR_NETWORK.getCode(), e);
        } catch (JSONException e2) {
            throw new CosXmlClientException(ClientErrorCode.SERVERERROR.getCode(), e2);
        }
    }
}
