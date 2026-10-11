package org.apache.poi.poifs.crypt.dsig.services;

import java.io.IOException;
import org.apache.poi.poifs.crypt.dsig.SignatureConfig;

/* loaded from: classes12.dex */
public interface TimeStampHttpClient {

    /* loaded from: classes12.dex */
    public interface TimeStampHttpClientResponse {
        byte[] getResponseBytes();

        int getResponseCode();

        default boolean isOK() {
            return getResponseCode() == 200;
        }
    }

    TimeStampHttpClientResponse get(String str) throws IOException;

    void init(SignatureConfig signatureConfig);

    boolean isFollowRedirects();

    boolean isIgnoreHttpsCertificates();

    TimeStampHttpClientResponse post(String str, byte[] bArr) throws IOException;

    void setBasicAuthentication(String str, String str2);

    void setContentTypeIn(String str);

    void setContentTypeOut(String str);

    void setFollowRedirects(boolean z);

    void setIgnoreHttpsCertificates(boolean z);
}
