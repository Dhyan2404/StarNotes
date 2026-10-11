package com.google.firebase.installations.remote;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.heartbeatinfo.HeartBeatController;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import com.sunia.HTREnginev2.cll;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.concurrent.ExecutionException;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes6.dex */
public class FirebaseInstallationServiceClient {

    /* renamed from: A */
    public static final String f35970A = "x-goog-api-key";

    /* renamed from: B */
    public static final int f35971B = 10000;

    /* renamed from: D */
    public static final int f35973D = 1;

    /* renamed from: F */
    public static final String f35975F = "a:";

    /* renamed from: G */
    public static final String f35976G = "Firebase-Installations";

    /* renamed from: H */
    @VisibleForTesting
    public static final String f35977H = "Invalid Expiration Timestamp.";

    /* renamed from: e */
    public static final int f35978e = 32768;

    /* renamed from: f */
    public static final int f35979f = 32769;

    /* renamed from: g */
    public static final int f35980g = 32770;

    /* renamed from: h */
    public static final int f35981h = 32771;

    /* renamed from: i */
    public static final String f35982i = "firebaseinstallations.googleapis.com";

    /* renamed from: j */
    public static final String f35983j = "projects/%s/installations";

    /* renamed from: k */
    public static final String f35984k = "projects/%s/installations/%s/authTokens:generate";

    /* renamed from: l */
    public static final String f35985l = "projects/%s/installations/%s";

    /* renamed from: m */
    public static final String f35986m = "v1";

    /* renamed from: n */
    public static final String f35987n = "FIS_v2";

    /* renamed from: o */
    public static final String f35988o = "Content-Type";

    /* renamed from: p */
    public static final String f35989p = "Accept";

    /* renamed from: q */
    public static final String f35990q = "application/json";

    /* renamed from: r */
    public static final String f35991r = "Content-Encoding";

    /* renamed from: s */
    public static final String f35992s = "gzip";

    /* renamed from: t */
    public static final String f35993t = "Cache-Control";

    /* renamed from: u */
    public static final String f35994u = "no-cache";

    /* renamed from: v */
    public static final String f35995v = "fire-installations-id";

    /* renamed from: w */
    public static final String f35996w = "x-firebase-client";

    /* renamed from: x */
    public static final String f35997x = "X-Android-Package";

    /* renamed from: y */
    public static final String f35998y = "X-Android-Cert";

    /* renamed from: z */
    public static final String f35999z = "x-goog-fis-android-iid-migration-auth";

    /* renamed from: a */
    public boolean f36000a;

    /* renamed from: b */
    public final Context f36001b;

    /* renamed from: c */
    public final Provider<HeartBeatController> f36002c;

    /* renamed from: d */
    public final cll f36003d = new cll();

    /* renamed from: C */
    public static final Pattern f35972C = Pattern.compile("[0-9]+s");

    /* renamed from: E */
    public static final Charset f35974E = Charset.forName("UTF-8");

    public FirebaseInstallationServiceClient(@NonNull Context context, @NonNull Provider<HeartBeatController> provider) {
        this.f36001b = context;
        this.f36002c = provider;
    }

    /* renamed from: a */
    public static String m28169a(@Nullable String str, @NonNull String str2, @NonNull String str3) {
        String str4;
        Object[] objArr = new Object[3];
        objArr[0] = str2;
        objArr[1] = str3;
        if (TextUtils.isEmpty(str)) {
            str4 = "";
        } else {
            str4 = ", " + str;
        }
        objArr[2] = str4;
        return String.format("Firebase options used while communicating with Firebase server APIs: %s, %s%s", objArr);
    }

    /* renamed from: b */
    public static JSONObject m28170b(@Nullable String str, @NonNull String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", f35987n);
            jSONObject.put("sdkVersion", "a:18.0.0");
            return jSONObject;
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: c */
    public static JSONObject m28171c() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:18.0.0");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            return jSONObject2;
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: f */
    public static byte[] m28172f(JSONObject jSONObject) throws IOException {
        return jSONObject.toString().getBytes("UTF-8");
    }

    /* renamed from: g */
    public static boolean m28173g(int i) {
        return i >= 200 && i < 300;
    }

    /* renamed from: h */
    public static void m28174h() {
        Log.e(f35976G, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
    }

    /* renamed from: i */
    public static void m28175i(HttpURLConnection httpURLConnection, @Nullable String str, @NonNull String str2, @NonNull String str3) {
        String m28177m = m28177m(httpURLConnection);
        if (TextUtils.isEmpty(m28177m)) {
            return;
        }
        Log.w(f35976G, m28177m);
        Log.w(f35976G, m28169a(str, str2, str3));
    }

    @VisibleForTesting
    /* renamed from: k */
    public static long m28176k(String str) {
        Preconditions.checkArgument(f35972C.matcher(str).matches(), f35977H);
        if (str == null || str.length() == 0) {
            return 0L;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    @Nullable
    /* renamed from: m */
    public static String m28177m(HttpURLConnection httpURLConnection) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        if (errorStream == null) {
            return null;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f35974E));
        try {
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                    sb.append('\n');
                }
                String format = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb);
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                }
                return format;
            } catch (IOException unused2) {
                return null;
            }
        } catch (IOException unused3) {
            bufferedReader.close();
            return null;
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException unused4) {
            }
            throw th;
        }
    }

    /* renamed from: q */
    public static void m28178q(URLConnection uRLConnection, byte[] bArr) throws IOException {
        OutputStream outputStream = uRLConnection.getOutputStream();
        if (outputStream == null) {
            throw new IOException("Cannot send request to FIS servers. No OutputStream available.");
        }
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
        try {
            gZIPOutputStream.write(bArr);
        } finally {
            try {
                gZIPOutputStream.close();
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @NonNull
    public InstallationResponse createFirebaseInstallation(@NonNull String str, @Nullable String str2, @NonNull String str3, @NonNull String str4, @Nullable String str5) throws FirebaseInstallationsException {
        int responseCode;
        InstallationResponse m28182l;
        if (!this.f36003d.m53473b()) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        URL m28180e = m28180e(String.format(f35983j, str3));
        for (int i = 0; i <= 1; i++) {
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection m28181j = m28181j(m28180e, str);
            try {
                try {
                    m28181j.setRequestMethod("POST");
                    m28181j.setDoOutput(true);
                    if (str5 != null) {
                        m28181j.addRequestProperty(f35999z, str5);
                    }
                    m28184o(m28181j, str2, str4);
                    responseCode = m28181j.getResponseCode();
                    this.f36003d.m53475f(responseCode);
                } catch (IOException | AssertionError unused) {
                }
                if (m28173g(responseCode)) {
                    m28182l = m28182l(m28181j);
                } else {
                    m28175i(m28181j, str4, str, str3);
                    if (responseCode == 429) {
                        throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.Status.TOO_MANY_REQUESTS);
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        m28174h();
                        m28182l = InstallationResponse.builder().setResponseCode(InstallationResponse.ResponseCode.BAD_CONFIG).build();
                    } else {
                        m28181j.disconnect();
                        TrafficStats.clearThreadStatsTag();
                    }
                }
                return m28182l;
            } finally {
                m28181j.disconnect();
                TrafficStats.clearThreadStatsTag();
            }
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    /* renamed from: d */
    public final String m28179d() {
        try {
            Context context = this.f36001b;
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
            if (packageCertificateHashBytes != null) {
                return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
            }
            Log.e("ContentValues", "Could not get fingerprint hash for package: " + this.f36001b.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("ContentValues", "No such package: " + this.f36001b.getPackageName(), e);
            return null;
        }
    }

    @NonNull
    public void deleteFirebaseInstallation(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) throws FirebaseInstallationsException {
        int responseCode;
        URL m28180e = m28180e(String.format(f35985l, str3, str2));
        int i = 0;
        while (i <= 1) {
            TrafficStats.setThreadStatsTag(f35980g);
            HttpURLConnection m28181j = m28181j(m28180e, str);
            try {
                m28181j.setRequestMethod("DELETE");
                m28181j.addRequestProperty("Authorization", "FIS_v2 " + str4);
                responseCode = m28181j.getResponseCode();
            } catch (IOException unused) {
            } catch (Throwable th) {
                m28181j.disconnect();
                TrafficStats.clearThreadStatsTag();
                throw th;
            }
            if (responseCode != 200 && responseCode != 401 && responseCode != 404) {
                m28175i(m28181j, null, str, str3);
                if (responseCode != 429 && (responseCode < 500 || responseCode >= 600)) {
                    m28174h();
                    throw new FirebaseInstallationsException("Bad config while trying to delete FID", FirebaseInstallationsException.Status.BAD_CONFIG);
                    break;
                }
                i++;
                m28181j.disconnect();
                TrafficStats.clearThreadStatsTag();
            }
            m28181j.disconnect();
            TrafficStats.clearThreadStatsTag();
            return;
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    /* renamed from: e */
    public final URL m28180e(String str) throws FirebaseInstallationsException {
        try {
            return new URL(String.format("https://%s/%s/%s", f35982i, f35986m, str));
        } catch (MalformedURLException e) {
            throw new FirebaseInstallationsException(e.getMessage(), FirebaseInstallationsException.Status.UNAVAILABLE);
        }
    }

    @NonNull
    public TokenResult generateAuthToken(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) throws FirebaseInstallationsException {
        int responseCode;
        TokenResult m28183n;
        if (!this.f36003d.m53473b()) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        URL m28180e = m28180e(String.format(f35984k, str3, str2));
        for (int i = 0; i <= 1; i++) {
            TrafficStats.setThreadStatsTag(32771);
            HttpURLConnection m28181j = m28181j(m28180e, str);
            try {
                try {
                    m28181j.setRequestMethod("POST");
                    m28181j.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    m28181j.setDoOutput(true);
                    m28185p(m28181j);
                    responseCode = m28181j.getResponseCode();
                    this.f36003d.m53475f(responseCode);
                } finally {
                    m28181j.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
            } catch (IOException | AssertionError unused) {
            }
            if (m28173g(responseCode)) {
                m28183n = m28183n(m28181j);
            } else {
                m28175i(m28181j, null, str, str3);
                if (responseCode != 401 && responseCode != 404) {
                    if (responseCode == 429) {
                        throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", FirebaseInstallationsException.Status.TOO_MANY_REQUESTS);
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        m28174h();
                        m28183n = TokenResult.builder().setResponseCode(TokenResult.ResponseCode.BAD_CONFIG).build();
                    } else {
                        m28181j.disconnect();
                        TrafficStats.clearThreadStatsTag();
                    }
                }
                m28183n = TokenResult.builder().setResponseCode(TokenResult.ResponseCode.AUTH_ERROR).build();
            }
            return m28183n;
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    /* renamed from: j */
    public final HttpURLConnection m28181j(URL url, String str) throws FirebaseInstallationsException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty("Accept", "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            httpURLConnection.addRequestProperty(f35997x, this.f36001b.getPackageName());
            HeartBeatController heartBeatController = this.f36002c.get();
            if (heartBeatController != null) {
                try {
                    httpURLConnection.addRequestProperty(f35996w, (String) Tasks.await(heartBeatController.getHeartBeatsHeader()));
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    Log.w("ContentValues", "Failed to get heartbeats header", e);
                } catch (ExecutionException e2) {
                    Log.w("ContentValues", "Failed to get heartbeats header", e2);
                }
            }
            httpURLConnection.addRequestProperty(f35998y, m28179d());
            httpURLConnection.addRequestProperty(f35970A, str);
            return httpURLConnection;
        } catch (IOException unused) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
    }

    /* renamed from: l */
    public final InstallationResponse m28182l(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f35974E));
        TokenResult.Builder builder = TokenResult.builder();
        InstallationResponse.Builder builder2 = InstallationResponse.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                builder2.setUri(jsonReader.nextString());
            } else if (nextName.equals("fid")) {
                builder2.setFid(jsonReader.nextString());
            } else if (nextName.equals("refreshToken")) {
                builder2.setRefreshToken(jsonReader.nextString());
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        builder.setToken(jsonReader.nextString());
                    } else if (nextName2.equals("expiresIn")) {
                        builder.setTokenExpirationTimestamp(m28176k(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                builder2.setAuthToken(builder.build());
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return builder2.setResponseCode(InstallationResponse.ResponseCode.OK).build();
    }

    /* renamed from: n */
    public final TokenResult m28183n(HttpURLConnection httpURLConnection) throws AssertionError, IOException {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f35974E));
        TokenResult.Builder builder = TokenResult.builder();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                builder.setToken(jsonReader.nextString());
            } else if (nextName.equals("expiresIn")) {
                builder.setTokenExpirationTimestamp(m28176k(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return builder.setResponseCode(TokenResult.ResponseCode.OK).build();
    }

    /* renamed from: o */
    public final void m28184o(HttpURLConnection httpURLConnection, @Nullable String str, @NonNull String str2) throws IOException {
        m28178q(httpURLConnection, m28172f(m28170b(str, str2)));
    }

    /* renamed from: p */
    public final void m28185p(HttpURLConnection httpURLConnection) throws IOException {
        m28178q(httpURLConnection, m28172f(m28171c()));
    }
}
