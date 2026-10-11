package com.google.firebase.auth.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.p124firebaseauthapi.zzafm;
import com.google.android.gms.internal.p124firebaseauthapi.zzaft;
import com.google.android.gms.internal.p124firebaseauthapi.zzxy;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuthProvider;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.TotpMultiFactorGenerator;
import com.google.firebase.auth.TotpMultiFactorInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes6.dex */
public final class zzbv {

    /* renamed from: a */
    public Context f35740a;

    /* renamed from: b */
    public String f35741b;

    /* renamed from: c */
    public SharedPreferences f35742c;

    /* renamed from: d */
    public Logger f35743d;

    public zzbv(Context context, String str) {
        Preconditions.checkNotNull(context);
        this.f35741b = Preconditions.checkNotEmpty(str);
        this.f35740a = context.getApplicationContext();
        this.f35742c = this.f35740a.getSharedPreferences(String.format("com.google.firebase.auth.api.Store.%s", this.f35741b), 0);
        this.f35743d = new Logger("StorageHelpers", new String[0]);
    }

    @Nullable
    /* renamed from: a */
    public final zzac m27998a(JSONObject jSONObject) {
        JSONArray jSONArray;
        JSONArray jSONArray2;
        zzae zza;
        try {
            String string = jSONObject.getString("cachedTokenState");
            String string2 = jSONObject.getString("applicationName");
            boolean z = jSONObject.getBoolean("anonymous");
            String string3 = jSONObject.getString("version");
            String str = string3 != null ? string3 : "2";
            JSONArray jSONArray3 = jSONObject.getJSONArray("userInfos");
            int length = jSONArray3.length();
            if (length == 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                arrayList.add(zzy.zza(jSONArray3.getString(i)));
            }
            zzac zzacVar = new zzac(FirebaseApp.getInstance(string2), arrayList);
            if (!TextUtils.isEmpty(string)) {
                zzacVar.zza(zzafm.zzb(string));
            }
            if (!z) {
                zzacVar.zzb();
            }
            zzacVar.zza(str);
            if (jSONObject.has("userMetadata") && (zza = zzae.zza(jSONObject.getJSONObject("userMetadata"))) != null) {
                zzacVar.zza(zza);
            }
            if (jSONObject.has("userMultiFactorInfo") && (jSONArray2 = jSONObject.getJSONArray("userMultiFactorInfo")) != null) {
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    JSONObject jSONObject2 = new JSONObject(jSONArray2.getString(i2));
                    String optString = jSONObject2.optString(MultiFactorInfo.FACTOR_ID_KEY);
                    arrayList2.add("phone".equals(optString) ? PhoneMultiFactorInfo.zza(jSONObject2) : Objects.equals(optString, TotpMultiFactorGenerator.FACTOR_ID) ? TotpMultiFactorInfo.zza(jSONObject2) : null);
                }
                zzacVar.zzc(arrayList2);
            }
            if (jSONObject.has("passkeyInfo") && (jSONArray = jSONObject.getJSONArray("passkeyInfo")) != null) {
                ArrayList arrayList3 = new ArrayList();
                for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                    arrayList3.add(zzaft.zza(new JSONObject(jSONArray.getString(i3))));
                }
                zzacVar.zzb(arrayList3);
            }
            return zzacVar;
        } catch (zzxy | ArrayIndexOutOfBoundsException | IllegalArgumentException | JSONException e) {
            this.f35743d.wtf(e);
            return null;
        }
    }

    @Nullable
    /* renamed from: b */
    public final String m27999b(FirebaseUser firebaseUser) {
        JSONObject jSONObject = new JSONObject();
        if (!zzac.class.isAssignableFrom(firebaseUser.getClass())) {
            return null;
        }
        zzac zzacVar = (zzac) firebaseUser;
        try {
            jSONObject.put("cachedTokenState", zzacVar.zze());
            jSONObject.put("applicationName", zzacVar.zza().getName());
            jSONObject.put("type", "com.google.firebase.auth.internal.DefaultFirebaseUser");
            if (zzacVar.zzj() != null) {
                JSONArray jSONArray = new JSONArray();
                List<zzy> zzj = zzacVar.zzj();
                int size = zzj.size();
                if (zzj.size() > 30) {
                    this.f35743d.m22195w("Provider user info list size larger than max size, truncating list to %d. Actual list size: %d", 30, Integer.valueOf(zzj.size()));
                    size = 30;
                }
                boolean z = false;
                for (int i = 0; i < size; i++) {
                    zzy zzyVar = zzj.get(i);
                    if (zzyVar.getProviderId().equals(FirebaseAuthProvider.PROVIDER_ID)) {
                        z = true;
                    }
                    if (i == size - 1 && !z) {
                        break;
                    }
                    jSONArray.put(zzyVar.zzb());
                }
                if (!z) {
                    int i2 = size - 1;
                    while (true) {
                        if (i2 >= zzj.size() || i2 < 0) {
                            break;
                        }
                        zzy zzyVar2 = zzj.get(i2);
                        if (zzyVar2.getProviderId().equals(FirebaseAuthProvider.PROVIDER_ID)) {
                            jSONArray.put(zzyVar2.zzb());
                            z = true;
                            break;
                        }
                        if (i2 == zzj.size() - 1) {
                            jSONArray.put(zzyVar2.zzb());
                        }
                        i2++;
                    }
                    if (!z) {
                        this.f35743d.m22195w("Malformed user object! No Firebase Auth provider id found. Provider user info list size: %d, trimmed size: %d", Integer.valueOf(zzj.size()), Integer.valueOf(size));
                        if (zzj.size() < 5) {
                            StringBuilder sb = new StringBuilder("Provider user info list:\n");
                            Iterator<zzy> it2 = zzj.iterator();
                            while (it2.hasNext()) {
                                sb.append(String.format("Provider - %s\n", it2.next().getProviderId()));
                            }
                            this.f35743d.m22195w(sb.toString(), new Object[0]);
                        }
                    }
                }
                jSONObject.put("userInfos", jSONArray);
            }
            jSONObject.put("anonymous", zzacVar.isAnonymous());
            jSONObject.put("version", "2");
            if (zzacVar.getMetadata() != null) {
                jSONObject.put("userMetadata", ((zzae) zzacVar.getMetadata()).zza());
            }
            List<MultiFactorInfo> enrolledFactors = ((zzag) zzacVar.getMultiFactor()).getEnrolledFactors();
            if (enrolledFactors != null && !enrolledFactors.isEmpty()) {
                JSONArray jSONArray2 = new JSONArray();
                for (int i3 = 0; i3 < enrolledFactors.size(); i3++) {
                    jSONArray2.put(enrolledFactors.get(i3).toJson());
                }
                jSONObject.put("userMultiFactorInfo", jSONArray2);
            }
            List<zzaft> zzf = zzacVar.zzf();
            if (zzf != null && !zzf.isEmpty()) {
                JSONArray jSONArray3 = new JSONArray();
                for (int i4 = 0; i4 < zzf.size(); i4++) {
                    jSONArray3.put(zzaft.zza(zzf.get(i4)));
                }
                jSONObject.put("passkeyInfo", jSONArray3);
            }
            return jSONObject.toString();
        } catch (Exception e) {
            this.f35743d.wtf("Failed to turn object into JSON", e, new Object[0]);
            throw new zzxy(e);
        }
    }

    @Nullable
    public final FirebaseUser zza() {
        String string = this.f35742c.getString("com.google.firebase.auth.FIREBASE_USER", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            if (jSONObject.has("type") && "com.google.firebase.auth.internal.DefaultFirebaseUser".equalsIgnoreCase(jSONObject.optString("type"))) {
                return m27998a(jSONObject);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public final void zzb(FirebaseUser firebaseUser) {
        Preconditions.checkNotNull(firebaseUser);
        String m27999b = m27999b(firebaseUser);
        if (TextUtils.isEmpty(m27999b)) {
            return;
        }
        this.f35742c.edit().putString("com.google.firebase.auth.FIREBASE_USER", m27999b).apply();
    }

    @Nullable
    public final zzafm zza(FirebaseUser firebaseUser) {
        Preconditions.checkNotNull(firebaseUser);
        String string = this.f35742c.getString(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", firebaseUser.getUid()), null);
        if (string != null) {
            return zzafm.zzb(string);
        }
        return null;
    }

    public final void zza(String str) {
        this.f35742c.edit().remove(str).apply();
    }

    public final void zza(FirebaseUser firebaseUser, zzafm zzafmVar) {
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(zzafmVar);
        this.f35742c.edit().putString(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", firebaseUser.getUid()), zzafmVar.zzf()).apply();
    }
}
