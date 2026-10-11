package com.sunia.HTREnginev2;

import androidx.lifecycle.SavedStateHandle;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class rud {

    /* renamed from: a */
    public static final String f83494a = "ClearKeyUtil";

    /* renamed from: a */
    public static byte[] m57019a(byte[] bArr) {
        return Util.SDK_INT >= 27 ? bArr : Util.getUtf8Bytes(m57021c(Util.fromUtf8Bytes(bArr)));
    }

    /* renamed from: b */
    public static byte[] m57020b(byte[] bArr) {
        if (Util.SDK_INT >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(Util.fromUtf8Bytes(bArr));
            StringBuilder sb = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray(SavedStateHandle.f7923g);
            for (int i = 0; i < jSONArray.length(); i++) {
                if (i != 0) {
                    sb.append(",");
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                sb.append("{\"k\":\"");
                sb.append(m57022d(jSONObject2.getString(C4921e.f26537n)));
                sb.append("\",\"kid\":\"");
                sb.append(m57022d(jSONObject2.getString("kid")));
                sb.append("\",\"kty\":\"");
                sb.append(jSONObject2.getString("kty"));
                sb.append("\"}");
            }
            sb.append("]}");
            return Util.getUtf8Bytes(sb.toString());
        } catch (JSONException e) {
            String valueOf = String.valueOf(Util.fromUtf8Bytes(bArr));
            Log.m21490e(f83494a, valueOf.length() != 0 ? "Failed to adjust response data: ".concat(valueOf) : new String("Failed to adjust response data: "), e);
            return bArr;
        }
    }

    /* renamed from: c */
    public static String m57021c(String str) {
        return str.replace(PhoneNumberUtil.f36455s, '-').replace('/', NameUtil.USCORE);
    }

    /* renamed from: d */
    public static String m57022d(String str) {
        return str.replace('-', PhoneNumberUtil.f36455s).replace(NameUtil.USCORE, '/');
    }
}
