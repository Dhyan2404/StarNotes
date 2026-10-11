package com.google.firebase.installations.local;

import androidx.annotation.NonNull;
import com.google.firebase.FirebaseApp;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes6.dex */
public class PersistedInstallation {

    /* renamed from: c */
    public static final String f35946c = "PersistedInstallation";

    /* renamed from: d */
    public static final String f35947d = "Fid";

    /* renamed from: e */
    public static final String f35948e = "AuthToken";

    /* renamed from: f */
    public static final String f35949f = "RefreshToken";

    /* renamed from: g */
    public static final String f35950g = "TokenCreationEpochInSecs";

    /* renamed from: h */
    public static final String f35951h = "ExpiresInSecs";

    /* renamed from: i */
    public static final String f35952i = "Status";

    /* renamed from: j */
    public static final String f35953j = "FisError";

    /* renamed from: a */
    public File f35954a;

    /* renamed from: b */
    @NonNull
    public final FirebaseApp f35955b;

    /* loaded from: classes6.dex */
    public enum RegistrationStatus {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public PersistedInstallation(@NonNull FirebaseApp firebaseApp) {
        this.f35955b = firebaseApp;
    }

    /* renamed from: a */
    public final File m28167a() {
        if (this.f35954a == null) {
            synchronized (this) {
                if (this.f35954a == null) {
                    this.f35954a = new File(this.f35955b.getApplicationContext().getFilesDir(), "PersistedInstallation." + this.f35955b.getPersistenceKey() + ".json");
                }
            }
        }
        return this.f35954a;
    }

    /* renamed from: b */
    public final JSONObject m28168b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(m28167a());
            while (true) {
                try {
                    int read = fileInputStream.read(bArr, 0, 16384);
                    if (read < 0) {
                        JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                        fileInputStream.close();
                        return jSONObject;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        } catch (IOException | JSONException unused) {
            return new JSONObject();
        }
    }

    public void clearForTesting() {
        m28167a().delete();
    }

    @NonNull
    public PersistedInstallationEntry insertOrUpdatePersistedInstallationEntry(@NonNull PersistedInstallationEntry persistedInstallationEntry) {
        File createTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(f35947d, persistedInstallationEntry.getFirebaseInstallationId());
            jSONObject.put(f35952i, persistedInstallationEntry.getRegistrationStatus().ordinal());
            jSONObject.put(f35948e, persistedInstallationEntry.getAuthToken());
            jSONObject.put(f35949f, persistedInstallationEntry.getRefreshToken());
            jSONObject.put(f35950g, persistedInstallationEntry.getTokenCreationEpochInSecs());
            jSONObject.put(f35951h, persistedInstallationEntry.getExpiresInSecs());
            jSONObject.put(f35953j, persistedInstallationEntry.getFisError());
            createTempFile = File.createTempFile(f35946c, "tmp", this.f35955b.getApplicationContext().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (IOException | JSONException unused) {
        }
        if (createTempFile.renameTo(m28167a())) {
            return persistedInstallationEntry;
        }
        throw new IOException("unable to rename the tmpfile to PersistedInstallation");
    }

    @NonNull
    public PersistedInstallationEntry readPersistedInstallationEntryValue() {
        JSONObject m28168b = m28168b();
        String optString = m28168b.optString(f35947d, null);
        int optInt = m28168b.optInt(f35952i, RegistrationStatus.ATTEMPT_MIGRATION.ordinal());
        String optString2 = m28168b.optString(f35948e, null);
        String optString3 = m28168b.optString(f35949f, null);
        long optLong = m28168b.optLong(f35950g, 0L);
        long optLong2 = m28168b.optLong(f35951h, 0L);
        return PersistedInstallationEntry.builder().setFirebaseInstallationId(optString).setRegistrationStatus(RegistrationStatus.values()[optInt]).setAuthToken(optString2).setRefreshToken(optString3).setTokenCreationEpochInSecs(optLong).setExpiresInSecs(optLong2).setFisError(m28168b.optString(f35953j, null)).build();
    }
}
