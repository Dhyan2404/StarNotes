package com.onyx.android.sdk.data.common.net;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.security.SecureRandom;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/net/X509TrustAllSSLSocketFactory;", "", "()V", "isValid", "", Constants.BOOLEAN_VALUE_SIG, "sslSocketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "getSslSocketFactory", "()Ljavax/net/ssl/SSLSocketFactory;", "setSslSocketFactory", "(Ljavax/net/ssl/SSLSocketFactory;)V", "trustManager", "Ljavax/net/ssl/X509TrustManager;", "getTrustManager", "()Ljavax/net/ssl/X509TrustManager;", "setTrustManager", "(Ljavax/net/ssl/X509TrustManager;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class X509TrustAllSSLSocketFactory {

    @Nullable
    private SSLSocketFactory sslSocketFactory;

    @Nullable
    private X509TrustManager trustManager;

    public X509TrustAllSSLSocketFactory() {
        try {
            this.trustManager = new X509TrustAllCertsManager();
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new X509TrustManager[]{this.trustManager}, new SecureRandom());
            this.sslSocketFactory = sSLContext.getSocketFactory();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Nullable
    public final SSLSocketFactory getSslSocketFactory() {
        return this.sslSocketFactory;
    }

    @Nullable
    public final X509TrustManager getTrustManager() {
        return this.trustManager;
    }

    public final boolean isValid() {
        return (this.trustManager == null || this.sslSocketFactory == null) ? false : true;
    }

    public final void setSslSocketFactory(@Nullable SSLSocketFactory sSLSocketFactory) {
        this.sslSocketFactory = sSLSocketFactory;
    }

    public final void setTrustManager(@Nullable X509TrustManager x509TrustManager) {
        this.trustManager = x509TrustManager;
    }
}
