package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Strings;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class zzafn implements zzacu<zzafn> {
    private static final String zza = "zzafn";

    @Nullable
    private String zzb;
    private zzaq<zzafx> zzc;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacu
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzafn zza(String str) throws zzaah {
        zzaq<zzafx> zza2;
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.zzb = Strings.emptyToNull(jSONObject.optString("recaptchaKey"));
            if (jSONObject.has("recaptchaEnforcementState")) {
                JSONArray optJSONArray = jSONObject.optJSONArray("recaptchaEnforcementState");
                if (optJSONArray != null && optJSONArray.length() != 0) {
                    zzap zzg = zzaq.zzg();
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                        zzg.zza(jSONObject2 == null ? zzafx.zza(null, null) : zzafx.zza(Strings.emptyToNull(jSONObject2.optString(CouchFieldKey.KEY_PROVIDER)), Strings.emptyToNull(jSONObject2.optString("enforcementState"))));
                    }
                    zza2 = zzg.zza();
                    this.zzc = zza2;
                }
                zza2 = zzaq.zza(new ArrayList());
                this.zzc = zza2;
            }
            return this;
        } catch (NullPointerException | JSONException e) {
            throw zzahe.zza(e, zza, str);
        }
    }

    public final boolean zzb(String str) {
        Preconditions.checkNotEmpty(str);
        zzaq<zzafx> zzaqVar = this.zzc;
        String str2 = null;
        if (zzaqVar != null && !zzaqVar.isEmpty()) {
            zzaq<zzafx> zzaqVar2 = this.zzc;
            int size = zzaqVar2.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                zzafx zzafxVar = zzaqVar2.get(i);
                i++;
                zzafx zzafxVar2 = zzafxVar;
                String zza2 = zzafxVar2.zza();
                String zzb = zzafxVar2.zzb();
                if (zza2 != null && zzb != null && zzb.equals(str)) {
                    str2 = zzafxVar2.zza();
                    break;
                }
            }
        }
        if (str2 == null) {
            return false;
        }
        return str2.equals("ENFORCE") || str2.equals("AUDIT");
    }

    @Nullable
    public final String zza() {
        return this.zzb;
    }
}
