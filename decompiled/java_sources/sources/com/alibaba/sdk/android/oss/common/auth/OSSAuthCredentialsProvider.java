package com.alibaba.sdk.android.oss.common.auth;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.common.utils.IOUtils;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class OSSAuthCredentialsProvider extends OSSFederationCredentialProvider {

    /* renamed from: a */
    public String f12938a;

    /* renamed from: b */
    public AuthDecoder f12939b;

    /* loaded from: classes3.dex */
    public interface AuthDecoder {
        String decode(String str);
    }

    public OSSAuthCredentialsProvider(String str) {
        this.f12938a = str;
    }

    @Override // com.alibaba.sdk.android.oss.common.auth.OSSFederationCredentialProvider, com.alibaba.sdk.android.oss.common.auth.OSSCredentialProvider
    public OSSFederationToken getFederationToken() throws ClientException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f12938a).openConnection();
            httpURLConnection.setConnectTimeout(10000);
            String readStreamAsString = IOUtils.readStreamAsString(httpURLConnection.getInputStream(), "utf-8");
            AuthDecoder authDecoder = this.f12939b;
            if (authDecoder != null) {
                readStreamAsString = authDecoder.decode(readStreamAsString);
            }
            JSONObject jSONObject = new JSONObject(readStreamAsString);
            if (jSONObject.getInt("StatusCode") == 200) {
                return new OSSFederationToken(jSONObject.getString("AccessKeyId"), jSONObject.getString("AccessKeySecret"), jSONObject.getString("SecurityToken"), jSONObject.getString("Expiration"));
            }
            throw new ClientException("ErrorCode: " + jSONObject.getString("ErrorCode") + "| ErrorMessage: " + jSONObject.getString("ErrorMessage"));
        } catch (Exception e) {
            throw new ClientException(e);
        }
    }

    public void setAuthServerUrl(String str) {
        this.f12938a = str;
    }

    public void setDecoder(AuthDecoder authDecoder) {
        this.f12939b = authDecoder;
    }
}
