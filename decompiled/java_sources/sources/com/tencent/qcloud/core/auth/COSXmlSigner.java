package com.tencent.qcloud.core.auth;

import com.tencent.qcloud.core.common.QCloudAuthenticationException;
import com.tencent.qcloud.core.common.QCloudClientException;
import com.tencent.qcloud.core.http.QCloudHttpRequest;
import java.net.URL;
import java.util.Locale;
import org.scribe.model.ParameterList;

/* loaded from: classes10.dex */
public class COSXmlSigner implements QCloudSigner {
    static final String COS_SESSION_TOKEN = "x-cos-security-token";

    private void addAuthInHeader(QCloudHttpRequest qCloudHttpRequest, QCloudCredentials qCloudCredentials, String str) {
        qCloudHttpRequest.removeHeader("Authorization");
        qCloudHttpRequest.addHeader("Authorization", str);
        if (qCloudCredentials instanceof SessionQCloudCredentials) {
            String sessionTokenKey = getSessionTokenKey();
            qCloudHttpRequest.removeHeader(sessionTokenKey);
            qCloudHttpRequest.addHeader(sessionTokenKey, ((SessionQCloudCredentials) qCloudCredentials).getToken());
        }
    }

    private void addAuthInPara(QCloudHttpRequest qCloudHttpRequest, QCloudCredentials qCloudCredentials, String str) {
        String concat;
        URL url = qCloudHttpRequest.url();
        if (qCloudCredentials instanceof SessionQCloudCredentials) {
            str = str.concat("&token").concat("=").concat(((SessionQCloudCredentials) qCloudCredentials).getToken());
        }
        String query = url.getQuery();
        String url2 = url.toString();
        int indexOf = url2.indexOf(63);
        if (indexOf < 0) {
            concat = url2.concat("?").concat(str);
        } else {
            int length = indexOf + query.length() + 1;
            concat = url2.substring(0, length).concat(ParameterList.f115951c).concat(str).concat(url2.substring(length));
        }
        qCloudHttpRequest.setUrl(concat);
    }

    private String signature(String str, String str2) {
        byte[] hmacSha1 = Utils.hmacSha1(str, str2);
        return hmacSha1 != null ? new String(Utils.encodeHex(hmacSha1)) : "";
    }

    public String getSessionTokenKey() {
        return "x-cos-security-token";
    }

    @Override // com.tencent.qcloud.core.auth.QCloudSigner
    public void sign(QCloudHttpRequest qCloudHttpRequest, QCloudCredentials qCloudCredentials) throws QCloudClientException {
        if (qCloudCredentials == null) {
            throw new QCloudClientException(new QCloudAuthenticationException("Credentials is null."));
        }
        COSXmlSignSourceProvider cOSXmlSignSourceProvider = (COSXmlSignSourceProvider) qCloudHttpRequest.getSignProvider();
        if (cOSXmlSignSourceProvider == null) {
            throw new QCloudClientException(new QCloudAuthenticationException("No sign provider for cos xml signer."));
        }
        StringBuilder sb = new StringBuilder();
        QCloudLifecycleCredentials qCloudLifecycleCredentials = (QCloudLifecycleCredentials) qCloudCredentials;
        String keyTime = qCloudHttpRequest.getKeyTime();
        if (keyTime == null) {
            keyTime = qCloudLifecycleCredentials.getKeyTime();
        }
        cOSXmlSignSourceProvider.setSignTime(keyTime);
        String signature = signature(cOSXmlSignSourceProvider.source(qCloudHttpRequest), qCloudLifecycleCredentials.getSignKey());
        sb.append(AuthConstants.Q_SIGN_ALGORITHM);
        sb.append("=");
        sb.append(AuthConstants.SHA1);
        sb.append(ParameterList.f115951c);
        sb.append(AuthConstants.Q_AK);
        sb.append("=");
        sb.append(qCloudCredentials.getSecretId());
        sb.append(ParameterList.f115951c);
        sb.append(AuthConstants.Q_SIGN_TIME);
        sb.append("=");
        sb.append(keyTime);
        sb.append(ParameterList.f115951c);
        sb.append(AuthConstants.Q_KEY_TIME);
        sb.append("=");
        sb.append(qCloudLifecycleCredentials.getKeyTime());
        sb.append(ParameterList.f115951c);
        sb.append(AuthConstants.Q_HEADER_LIST);
        sb.append("=");
        String realHeaderList = cOSXmlSignSourceProvider.getRealHeaderList();
        Locale locale = Locale.ROOT;
        sb.append(realHeaderList.toLowerCase(locale));
        sb.append(ParameterList.f115951c);
        sb.append(AuthConstants.Q_URL_PARAM_LIST);
        sb.append("=");
        sb.append(cOSXmlSignSourceProvider.getRealParameterList().toLowerCase(locale));
        sb.append(ParameterList.f115951c);
        sb.append(AuthConstants.Q_SIGNATURE);
        sb.append("=");
        sb.append(signature);
        String sb2 = sb.toString();
        if (qCloudHttpRequest.isSignInUrl()) {
            addAuthInPara(qCloudHttpRequest, qCloudCredentials, sb2);
        } else {
            addAuthInHeader(qCloudHttpRequest, qCloudCredentials, sb2);
        }
        cOSXmlSignSourceProvider.onSignRequestSuccess(qCloudHttpRequest, qCloudCredentials, sb2);
    }
}
