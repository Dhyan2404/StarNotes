package org.mortbay.jetty.security;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Enumeration;

/* loaded from: classes13.dex */
public class PKCS12Import {
    /* renamed from: a */
    public static void m71591a(Certificate[] certificateArr) {
        for (Certificate certificate : certificateArr) {
            if (certificate instanceof X509Certificate) {
                X509Certificate x509Certificate = (X509Certificate) certificate;
                PrintStream printStream = System.err;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("subject: ");
                stringBuffer.append(x509Certificate.getSubjectDN());
                printStream.println(stringBuffer.toString());
                PrintStream printStream2 = System.err;
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("issuer: ");
                stringBuffer2.append(x509Certificate.getIssuerDN());
                printStream2.println(stringBuffer2.toString());
            }
        }
    }

    /* renamed from: b */
    public static char[] m71592b() throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(System.in);
        char[] cArr = new char[256];
        int i = 0;
        while (i < 256) {
            char read = (char) inputStreamReader.read();
            if (read == '\n' || read == '\r') {
                break;
            }
            cArr[i] = read;
            i++;
        }
        char[] cArr2 = new char[i];
        System.arraycopy(cArr, 0, cArr2, 0, i);
        return cArr2;
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length < 1) {
            System.err.println("usage: java PKCS12Import {pkcs12file} [newjksfile]");
            System.exit(1);
        }
        int i = 0;
        File file = new File(strArr[0]);
        File file2 = strArr.length > 1 ? new File(strArr[1]) : new File("newstore.jks");
        if (!file.canRead()) {
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Unable to access input keystore: ");
            stringBuffer.append(file.getPath());
            printStream.println(stringBuffer.toString());
            System.exit(2);
        }
        if (file2.exists() && !file2.canWrite()) {
            PrintStream printStream2 = System.err;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Output file is not writable: ");
            stringBuffer2.append(file2.getPath());
            printStream2.println(stringBuffer2.toString());
            System.exit(2);
        }
        KeyStore keyStore = KeyStore.getInstance("pkcs12");
        KeyStore keyStore2 = KeyStore.getInstance("jks");
        System.out.print("Enter input keystore passphrase: ");
        char[] m71592b = m71592b();
        System.out.print("Enter output keystore passphrase: ");
        char[] m71592b2 = m71592b();
        keyStore.load(new FileInputStream(file), m71592b);
        keyStore2.load(file2.exists() ? new FileInputStream(file2) : null, m71592b2);
        Enumeration<String> aliases = keyStore.aliases();
        while (aliases.hasMoreElements()) {
            String nextElement = aliases.nextElement();
            PrintStream printStream3 = System.err;
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("Alias ");
            int i2 = i + 1;
            stringBuffer3.append(i);
            stringBuffer3.append(": ");
            stringBuffer3.append(nextElement);
            printStream3.println(stringBuffer3.toString());
            if (keyStore.isKeyEntry(nextElement)) {
                PrintStream printStream4 = System.err;
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("Adding key for alias ");
                stringBuffer4.append(nextElement);
                printStream4.println(stringBuffer4.toString());
                keyStore2.setKeyEntry(nextElement, keyStore.getKey(nextElement, m71592b), m71592b2, keyStore.getCertificateChain(nextElement));
            }
            i = i2;
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        keyStore2.store(fileOutputStream, m71592b2);
        fileOutputStream.close();
    }
}
