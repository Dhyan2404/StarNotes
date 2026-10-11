package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.ListenerAuthenticator;
import com.couchbase.lite.ListenerCertificateAuthenticatorDelegate;
import com.couchbase.lite.internal.utils.PlatformUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class InternalCertAuthenticator implements ListenerAuthenticator {
    public static final String BEGIN_CERT = "-----BEGIN CERTIFICATE-----";
    public static final String END_CERT = "-----END CERTIFICATE-----";

    @Nullable
    private final ListenerCertificateAuthenticatorDelegate delegate;

    @Nullable
    private final List<Certificate> rootCerts;

    public InternalCertAuthenticator(@Nullable List<Certificate> list, @Nullable ListenerCertificateAuthenticatorDelegate listenerCertificateAuthenticatorDelegate) {
        this.rootCerts = list;
        this.delegate = listenerCertificateAuthenticatorDelegate;
    }

    private void encodeCertificate(@NonNull PlatformUtils.Base64Encoder base64Encoder, @NonNull Certificate certificate, @NonNull PrintStream printStream) throws CertificateEncodingException {
        String encodeToString = base64Encoder.encodeToString(certificate.getEncoded());
        if (encodeToString == null) {
            return;
        }
        int length = encodeToString.length();
        printStream.println();
        printStream.println(BEGIN_CERT);
        int i = 0;
        while (i < length) {
            int i2 = i + 64;
            printStream.println(encodeToString.substring(i, Math.min(length, i2)));
            i = i2;
        }
        printStream.println(END_CERT);
    }

    @NonNull
    private byte[] encodeCertificateChain(@NonNull Collection<? extends Certificate> collection) throws CertificateEncodingException {
        PlatformUtils.Base64Encoder encoder = PlatformUtils.getEncoder();
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                PrintStream printStream = new PrintStream((OutputStream) byteArrayOutputStream, false, "UTF-8");
                try {
                    Iterator<? extends Certificate> it2 = collection.iterator();
                    while (it2.hasNext()) {
                        encodeCertificate(encoder, it2.next(), printStream);
                    }
                    printStream.flush();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    printStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            throw new CertificateEncodingException("I/O error during encoding", e);
        }
    }

    public boolean authenticate(@NonNull List<Certificate> list) {
        ListenerCertificateAuthenticatorDelegate listenerCertificateAuthenticatorDelegate = this.delegate;
        if (listenerCertificateAuthenticatorDelegate != null) {
            return listenerCertificateAuthenticatorDelegate.authenticate(list);
        }
        throw new CouchbaseLiteError("No delegate has been set");
    }

    @Nullable
    public byte[] getRootCerts() throws CouchbaseLiteException {
        List<Certificate> list = this.rootCerts;
        if (list == null) {
            return null;
        }
        try {
            return encodeCertificateChain(list);
        } catch (CertificateEncodingException e) {
            throw new CouchbaseLiteException("Failed to encode certificates in PEM format", e);
        }
    }
}
