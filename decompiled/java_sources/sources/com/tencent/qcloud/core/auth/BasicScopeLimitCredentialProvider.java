package com.tencent.qcloud.core.auth;

import com.tencent.qcloud.core.common.QCloudClientException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes10.dex */
public abstract class BasicScopeLimitCredentialProvider implements ScopeLimitCredentialProvider {
    private static final int MAX_CACHE_CREDENTIAL_SIZE = 100;
    private Map<Integer, SessionQCloudCredentials> credentialPairs = new HashMap(100);

    private synchronized void cacheCredentialsAndCleanUp(int i, SessionQCloudCredentials sessionQCloudCredentials) {
        Iterator<Map.Entry<Integer, SessionQCloudCredentials>> it2 = this.credentialPairs.entrySet().iterator();
        while (it2.hasNext()) {
            if (!it2.next().getValue().isValid()) {
                it2.remove();
            }
        }
        if (this.credentialPairs.size() > 100) {
            int size = this.credentialPairs.size() - 100;
            Iterator<Map.Entry<Integer, SessionQCloudCredentials>> it3 = this.credentialPairs.entrySet().iterator();
            while (it3.hasNext()) {
                int i2 = size - 1;
                if (size <= 0) {
                    break;
                }
                it3.remove();
                size = i2;
            }
        }
        this.credentialPairs.put(Integer.valueOf(i), sessionQCloudCredentials);
    }

    private synchronized SessionQCloudCredentials lookupValidCredentials(int i) {
        SessionQCloudCredentials sessionQCloudCredentials = this.credentialPairs.get(Integer.valueOf(i));
        if (sessionQCloudCredentials != null) {
            if (sessionQCloudCredentials.isValid()) {
                return sessionQCloudCredentials;
            }
        }
        return null;
    }

    public abstract SessionQCloudCredentials fetchNewCredentials(STSCredentialScope[] sTSCredentialScopeArr) throws QCloudClientException;

    @Override // com.tencent.qcloud.core.auth.ScopeLimitCredentialProvider
    public SessionQCloudCredentials getCredentials(STSCredentialScope[] sTSCredentialScopeArr) throws QCloudClientException {
        int hashCode = STSCredentialScope.jsonify(sTSCredentialScopeArr).hashCode();
        SessionQCloudCredentials lookupValidCredentials = lookupValidCredentials(hashCode);
        if (lookupValidCredentials != null) {
            return lookupValidCredentials;
        }
        SessionQCloudCredentials fetchNewCredentials = fetchNewCredentials(sTSCredentialScopeArr);
        cacheCredentialsAndCleanUp(hashCode, fetchNewCredentials);
        return fetchNewCredentials;
    }

    @Override // com.tencent.qcloud.core.auth.QCloudCredentialProvider
    public void refresh() {
    }

    @Override // com.tencent.qcloud.core.auth.QCloudCredentialProvider
    public QCloudCredentials getCredentials() throws QCloudClientException {
        throw new UnsupportedOperationException("not support ths op");
    }
}
