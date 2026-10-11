package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.common.internal.Preconditions;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import org.json.JSONException;

/* loaded from: classes5.dex */
public final class zzadp {
    private static final boolean zza(int i) {
        return i >= 200 && i < 300;
    }

    private static void zza(HttpURLConnection httpURLConnection, zzadm<?> zzadmVar, Type type) {
        InputStream errorStream;
        try {
            int responseCode = httpURLConnection.getResponseCode();
            if (zza(responseCode)) {
                errorStream = httpURLConnection.getInputStream();
            } else {
                errorStream = httpURLConnection.getErrorStream();
            }
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, "UTF-8"));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    } else {
                        sb.append(readLine);
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            bufferedReader.close();
            String sb2 = sb.toString();
            if (!zza(responseCode)) {
                zzadmVar.zza((String) zzacs.zza(sb2, String.class));
            } else {
                zzadmVar.zza((zzadm<?>) zzacs.zza(sb2, type));
            }
        } catch (SocketTimeoutException unused) {
            zzadmVar.zza("TIMEOUT");
        } catch (zzaah | IOException e) {
            zzadmVar.zza(e.getMessage());
        } finally {
            httpURLConnection.disconnect();
        }
    }

    public static void zza(String str, zzadm<?> zzadmVar, Type type, zzacv zzacvVar) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(60000);
            zzacvVar.zza(httpURLConnection);
            zza(httpURLConnection, zzadmVar, type);
        } catch (SocketTimeoutException unused) {
            zzadmVar.zza("TIMEOUT");
        } catch (UnknownHostException unused2) {
            zzadmVar.zza("<<Network Error>>");
        } catch (IOException e) {
            zzadmVar.zza(e.getMessage());
        }
    }

    public static void zza(String str, zzacr zzacrVar, zzadm<?> zzadmVar, Type type, zzacv zzacvVar) {
        try {
            try {
                Preconditions.checkNotNull(zzacrVar);
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setDoOutput(true);
                byte[] bytes = zzacrVar.zza().getBytes(Charset.defaultCharset());
                httpURLConnection.setFixedLengthStreamingMode(bytes.length);
                httpURLConnection.setRequestProperty("Content-Type", "application/json");
                httpURLConnection.setConnectTimeout(60000);
                zzacvVar.zza(httpURLConnection);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream(), bytes.length);
                try {
                    bufferedOutputStream.write(bytes, 0, bytes.length);
                    bufferedOutputStream.close();
                    zza(httpURLConnection, zzadmVar, type);
                } catch (Throwable th) {
                    try {
                        bufferedOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException | NullPointerException | JSONException e) {
                zzadmVar.zza(e.getMessage());
            }
        } catch (SocketTimeoutException unused) {
            zzadmVar.zza("TIMEOUT");
        } catch (UnknownHostException unused2) {
            zzadmVar.zza("<<Network Error>>");
        }
    }
}
