package com.tencent.qimei.p102v;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p085f.C16778b;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.sdk.p099S.DataFormatter;

/* renamed from: com.tencent.qimei.v.c */
/* loaded from: classes10.dex */
public class C16845c {

    /* renamed from: a */
    public static final String f93677a = "qAucMjh7lsNepLGw";

    @NonNull
    /* renamed from: a */
    public final DataFormatter m60124a(String str) {
        DataFormatter dataFormatter;
        try {
            dataFormatter = (DataFormatter) new Gson().fromJson(str, DataFormatter.class);
        } catch (Throwable th) {
            C16806a.m59992a(th);
            dataFormatter = null;
        }
        return dataFormatter == null ? new DataFormatter() : dataFormatter;
    }

    /* renamed from: a */
    public DataFormatter m60125a(String str, String str2) {
        String str3;
        DataFormatter dataFormatter = new DataFormatter();
        if (TextUtils.isEmpty(str)) {
            return dataFormatter;
        }
        try {
            str3 = C16762a.m59870a(str, str2);
        } catch (Exception e) {
            C16806a.m59992a(e);
            str3 = null;
        }
        return !TextUtils.isEmpty(str3) ? m60124a(str3) : dataFormatter;
    }

    /* renamed from: a */
    public String m60126a(DataFormatter dataFormatter, String str) {
        try {
            String json = new Gson().toJson(dataFormatter);
            return TextUtils.isEmpty(json) ? "" : C16762a.m59880b(json, str);
        } catch (Throwable th) {
            C16806a.m59992a(th);
            return "";
        }
    }

    /* renamed from: a */
    public DataFormatter m60123a() {
        DataFormatter dataFormatter = new DataFormatter();
        synchronized (DataFormatter.class) {
            DataFormatter[] dataFormatterArr = new DataFormatter[1];
            C16806a.m59995b("SpreadQM", "readFromCache blockRead result %b", Boolean.valueOf(new C16778b().m59932a("spread_data", new C16844b(this, dataFormatterArr), 2)));
            DataFormatter dataFormatter2 = dataFormatterArr[0];
            if (dataFormatter2 != null) {
                dataFormatter = dataFormatter2;
            }
        }
        return dataFormatter;
    }

    /* renamed from: a */
    public void m60127a(@NonNull DataFormatter dataFormatter) {
        synchronized (DataFormatter.class) {
            C16806a.m59995b("SpreadQM", "writeToCache blockWrite result %b", Boolean.valueOf(new C16778b().m59932a("spread_data", new C16843a(this, m60123a(), dataFormatter), 3)));
        }
    }
}
