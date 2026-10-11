package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.core.InternalCertAuthenticator;
import java.security.cert.Certificate;
import java.util.List;

/* loaded from: classes4.dex */
public class ListenerCertificateAuthenticator extends InternalCertAuthenticator {
    public ListenerCertificateAuthenticator(@NonNull List<Certificate> list) {
        super(list, null);
    }

    public ListenerCertificateAuthenticator(@NonNull ListenerCertificateAuthenticatorDelegate listenerCertificateAuthenticatorDelegate) {
        super(null, listenerCertificateAuthenticatorDelegate);
    }
}
