package com.couchbase.lite;

import androidx.annotation.NonNull;
import java.security.cert.Certificate;
import java.util.List;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface ListenerCertificateAuthenticatorDelegate {
    boolean authenticate(@NonNull List<Certificate> list);
}
