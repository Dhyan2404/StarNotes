package com.couchbase.lite.internal.replicator;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.StringUtils;
import com.sunia.HTREnginev2.cyi;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes4.dex */
public abstract class AbstractCBLTrustManager implements X509TrustManager {
    private final boolean acceptOnlySelfSignedServerCertificate;

    @NonNull
    private final AtomicReference<X509TrustManager> defaultTrustManager = new AtomicReference<>();

    @Nullable
    private final X509Certificate pinnedServerCertificate;

    @NonNull
    private final InterfaceC2217Fn.Consumer<List<Certificate>> serverCertsListener;

    public AbstractCBLTrustManager(@Nullable X509Certificate x509Certificate, boolean z, @NonNull InterfaceC2217Fn.Consumer<List<Certificate>> consumer) {
        this.pinnedServerCertificate = x509Certificate;
        this.acceptOnlySelfSignedServerCertificate = z;
        this.serverCertsListener = consumer;
    }

    private boolean isSelfSignedCertificate(@NonNull X509Certificate x509Certificate) {
        try {
            x509Certificate.verify(x509Certificate.getPublicKey());
            return x509Certificate.getSubjectDN().equals(x509Certificate.getIssuerDN());
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    @NonNull
    public final List<X509Certificate> asList(@Nullable X509Certificate[] x509CertificateArr) {
        return x509CertificateArr == null ? Collections.emptyList() : Arrays.asList(x509CertificateArr);
    }

    public final void cBLServerTrustCheck(@Nullable List<X509Certificate> list, @Nullable String str) throws CertificateException {
        LogDomain logDomain = LogDomain.NETWORK;
        Object[] objArr = new Object[2];
        int i = 0;
        objArr[0] = Integer.valueOf(list == null ? 0 : list.size());
        objArr[1] = str;
        Log.m9899d(logDomain, "CBL trust check: %d, %s", objArr);
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("No server certificates");
        }
        if (StringUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Empty auth type");
        }
        X509Certificate x509Certificate = list.get(0);
        x509Certificate.checkValidity();
        if (this.pinnedServerCertificate == null) {
            if (list.size() != 1 || !isSelfSignedCertificate(x509Certificate)) {
                throw new CertificateException("Server did not present the expected single, self-signed certificate");
            }
        } else {
            while (!this.pinnedServerCertificate.equals(x509Certificate)) {
                i++;
                if (i >= list.size()) {
                    throw new CertificateException("The pinned certificate did not match any certificate in the server chain");
                }
                x509Certificate = list.get(i);
                x509Certificate.checkValidity();
            }
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(@Nullable X509Certificate[] x509CertificateArr, @Nullable String str) {
        throw new UnsupportedOperationException("checkClientTrusted(X509Certificate[], String) not supported for client");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(@Nullable X509Certificate[] x509CertificateArr, @Nullable String str) throws CertificateException {
        List<X509Certificate> asList = asList(x509CertificateArr);
        notifyListener(asList);
        if (useCBLTrustManagement()) {
            cBLServerTrustCheck(asList, str);
            return;
        }
        LogDomain logDomain = LogDomain.NETWORK;
        Object[] objArr = new Object[2];
        objArr[0] = Integer.valueOf(x509CertificateArr == null ? 0 : x509CertificateArr.length);
        objArr[1] = str;
        Log.m9899d(logDomain, "Default trust check: %d, %s", objArr);
        getDefaultTrustManager().checkServerTrusted(x509CertificateArr, str);
    }

    @Override // javax.net.ssl.X509TrustManager
    @NonNull
    public X509Certificate[] getAcceptedIssuers() {
        return useCBLTrustManagement() ? new X509Certificate[0] : getDefaultTrustManager().getAcceptedIssuers();
    }

    @NonNull
    public final X509TrustManager getDefaultTrustManager() {
        X509TrustManager x509TrustManager = this.defaultTrustManager.get();
        if (x509TrustManager != null) {
            return x509TrustManager;
        }
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            int length = trustManagers.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                TrustManager trustManager = trustManagers[i];
                if (trustManager instanceof X509TrustManager) {
                    x509TrustManager = (X509TrustManager) trustManager;
                    break;
                }
                i++;
            }
            if (x509TrustManager == null) {
                throw new UnsupportedOperationException("Cannot find an X509TrustManager");
            }
            cyi.m53538a(this.defaultTrustManager, null, x509TrustManager);
            return this.defaultTrustManager.get();
        } catch (KeyStoreException | NoSuchAlgorithmException e) {
            throw new UnsupportedOperationException("Cannot find the default trust manager", e);
        }
    }

    public final void notifyListener(@NonNull List<X509Certificate> list) {
        this.serverCertsListener.accept(Collections.unmodifiableList(list));
    }

    public final boolean useCBLTrustManagement() {
        return this.acceptOnlySelfSignedServerCertificate || this.pinnedServerCertificate != null;
    }
}
