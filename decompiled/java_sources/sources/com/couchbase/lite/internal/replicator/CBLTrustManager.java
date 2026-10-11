package com.couchbase.lite.internal.replicator;

import android.net.http.X509TrustManagerExtensions;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;

/* loaded from: classes4.dex */
public final class CBLTrustManager extends AbstractCBLTrustManager {
    public CBLTrustManager(@Nullable X509Certificate x509Certificate, boolean z, @NonNull InterfaceC2217Fn.Consumer<List<Certificate>> consumer) {
        super(x509Certificate, z, consumer);
    }

    @Nullable
    public List<X509Certificate> checkServerTrusted(@Nullable X509Certificate[] x509CertificateArr, @Nullable String str, @Nullable String str2) throws CertificateException {
        List<X509Certificate> asList = asList(x509CertificateArr);
        notifyListener(asList);
        if (useCBLTrustManagement()) {
            cBLServerTrustCheck(asList, str);
            return asList;
        }
        Log.m9899d(LogDomain.NETWORK, "Extended trust check: %d, %s, %s", Integer.valueOf(asList.size()), str, str2);
        return new X509TrustManagerExtensions(getDefaultTrustManager()).checkServerTrusted(x509CertificateArr, str, str2);
    }
}
