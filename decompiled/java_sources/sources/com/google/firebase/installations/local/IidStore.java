package com.google.firebase.installations.local;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.stats.CodePackage;
import com.google.firebase.FirebaseApp;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes6.dex */
public class IidStore {

    /* renamed from: c */
    public static final String f35936c = "com.google.android.gms.appid";

    /* renamed from: d */
    public static final String f35937d = "|S||P|";

    /* renamed from: e */
    public static final String f35938e = "|S|id";

    /* renamed from: f */
    public static final String f35939f = "|T|";

    /* renamed from: g */
    public static final String f35940g = "|";

    /* renamed from: h */
    public static final String f35941h = "token";

    /* renamed from: i */
    public static final String f35942i = "{";

    /* renamed from: j */
    public static final String[] f35943j = {"*", "FCM", CodePackage.GCM, ""};

    /* renamed from: a */
    @GuardedBy("iidPrefs")
    public final SharedPreferences f35944a;

    /* renamed from: b */
    public final String f35945b;

    public IidStore(@NonNull FirebaseApp firebaseApp) {
        this.f35944a = firebaseApp.getApplicationContext().getSharedPreferences(f35936c, 0);
        this.f35945b = m28160b(firebaseApp);
    }

    /* renamed from: b */
    public static String m28160b(FirebaseApp firebaseApp) {
        String gcmSenderId = firebaseApp.getOptions().getGcmSenderId();
        if (gcmSenderId != null) {
            return gcmSenderId;
        }
        String applicationId = firebaseApp.getOptions().getApplicationId();
        if (!applicationId.startsWith("1:") && !applicationId.startsWith("2:")) {
            return applicationId;
        }
        String[] split = applicationId.split(":");
        if (split.length != 4) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    @Nullable
    /* renamed from: c */
    public static String m28161c(@NonNull PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    /* renamed from: a */
    public final String m28162a(@NonNull String str, @NonNull String str2) {
        return f35939f + str + f35940g + str2;
    }

    /* renamed from: d */
    public final String m28163d(String str) {
        try {
            return new JSONObject(str).getString("token");
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    /* renamed from: e */
    public final PublicKey m28164e(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
            Log.w("ContentValues", "Invalid key stored " + e);
            return null;
        }
    }

    @Nullable
    /* renamed from: f */
    public final String m28165f() {
        String string;
        synchronized (this.f35944a) {
            string = this.f35944a.getString(f35938e, null);
        }
        return string;
    }

    @Nullable
    /* renamed from: g */
    public final String m28166g() {
        synchronized (this.f35944a) {
            String string = this.f35944a.getString(f35937d, null);
            if (string == null) {
                return null;
            }
            PublicKey m28164e = m28164e(string);
            if (m28164e == null) {
                return null;
            }
            return m28161c(m28164e);
        }
    }

    @Nullable
    public String readIid() {
        synchronized (this.f35944a) {
            String m28165f = m28165f();
            if (m28165f != null) {
                return m28165f;
            }
            return m28166g();
        }
    }

    @Nullable
    public String readToken() {
        synchronized (this.f35944a) {
            for (String str : f35943j) {
                String string = this.f35944a.getString(m28162a(this.f35945b, str), null);
                if (string != null && !string.isEmpty()) {
                    if (string.startsWith("{")) {
                        string = m28163d(string);
                    }
                    return string;
                }
            }
            return null;
        }
    }

    @VisibleForTesting
    public IidStore(@NonNull SharedPreferences sharedPreferences, @Nullable String str) {
        this.f35944a = sharedPreferences;
        this.f35945b = str;
    }
}
