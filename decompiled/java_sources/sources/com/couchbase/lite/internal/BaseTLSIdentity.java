package com.couchbase.lite.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4KeyPair;
import com.couchbase.lite.internal.utils.Preconditions;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public class BaseTLSIdentity implements AutoCloseable {
    public static final String CERT_ATTRIBUTE_COMMON_NAME = "CN";
    public static final String CERT_ATTRIBUTE_COUNTRY = "C";
    public static final String CERT_ATTRIBUTE_EMAIL_ADDRESS = "rfc822Name";
    public static final String CERT_ATTRIBUTE_GIVEN_NAME = "GN";
    public static final String CERT_ATTRIBUTE_HOSTNAME = "dNSName";
    public static final String CERT_ATTRIBUTE_IP_ADDRESS = "iPAddress";
    public static final String CERT_ATTRIBUTE_LOCALITY = "locality";
    public static final String CERT_ATTRIBUTE_ORGANIZATION = "O";
    public static final String CERT_ATTRIBUTE_ORGANIZATION_UNIT = "OU";
    public static final String CERT_ATTRIBUTE_POSTAL_ADDRESS = "postalAddress";
    public static final String CERT_ATTRIBUTE_POSTAL_CODE = "postalCode";
    public static final String CERT_ATTRIBUTE_PSEUDONYM = "pseudonym";
    public static final String CERT_ATTRIBUTE_REGISTERED_ID = "registeredID";
    public static final String CERT_ATTRIBUTE_STATE_OR_PROVINCE = "ST";
    public static final String CERT_ATTRIBUTE_SURNAME = "SN";
    public static final String CERT_ATTRIBUTE_URL = "uniformResourceIdentifier";

    @NonNull
    private final List<Certificate> certificates;

    @NonNull
    private final String keyAlias;

    @NonNull
    private final C4KeyPair keyPair;

    public BaseTLSIdentity(@NonNull String str, @NonNull C4KeyPair c4KeyPair, @NonNull List<Certificate> list) {
        this.keyAlias = (String) Preconditions.assertNotNull(str, "key alias");
        this.keyPair = (C4KeyPair) Preconditions.assertNotNull(c4KeyPair, "key pair");
        this.certificates = (List) Preconditions.assertNotEmpty(list, "cert chain");
    }

    @Nullable
    public static String getAlias(@Nullable BaseTLSIdentity baseTLSIdentity) {
        if (baseTLSIdentity == null) {
            return null;
        }
        return baseTLSIdentity.getAlias();
    }

    @Nullable
    public static Certificate getCert(@Nullable BaseTLSIdentity baseTLSIdentity) {
        if (baseTLSIdentity == null) {
            return null;
        }
        return baseTLSIdentity.getCert();
    }

    @NonNull
    public static KeyStoreManager getManager() {
        return KeyStoreManager.getInstance();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.keyPair.close();
    }

    @NonNull
    public List<Certificate> getCerts() {
        return this.certificates;
    }

    @NonNull
    public Date getExpiration() {
        return ((X509Certificate) getCert()).getNotAfter();
    }

    @NonNull
    public C4KeyPair getKeyPair() {
        return this.keyPair;
    }

    @NonNull
    public String getAlias() {
        return this.keyAlias;
    }

    @NonNull
    public Certificate getCert() {
        return this.certificates.get(0);
    }
}
