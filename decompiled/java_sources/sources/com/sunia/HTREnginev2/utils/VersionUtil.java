package com.sunia.HTREnginev2.utils;

import android.content.Context;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class VersionUtil {
    private static final String TAG = "VersionUtil";

    public static String getConfigValue(Context context, String str, String str2, String str3) {
        String str4;
        String str5;
        str4 = "1";
        try {
            String str6 = "assets/" + str;
            String str7 = File.separator;
            boolean z = !str.startsWith(str7);
            if (!z) {
                str5 = str + str7 + str2;
            } else if (str6.endsWith(str7)) {
                str5 = str6 + str2;
            } else {
                str5 = str6 + str7 + str2;
            }
            if (LogUtil.canLogD()) {
                LogUtil.m57653d(TAG, "getConfigValue configName = " + str5);
            }
            BufferedReader bufferedReader = new BufferedReader(z ? new InputStreamReader(context.getClass().getClassLoader().getResourceAsStream(str5)) : new InputStreamReader(new FileInputStream(str5)));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
            }
            JSONObject jSONObject = new JSONObject(sb.toString());
            str4 = jSONObject.has(str3) ? jSONObject.getString(str3) : "1";
            if (LogUtil.canLogD()) {
                LogUtil.m57653d(TAG, "getConfigValue key = " + str3 + ", value=" + str4);
            }
        } catch (Exception e) {
            if (LogUtil.canLogE()) {
                LogUtil.m57654e(TAG, "getConfigValue error " + e);
            }
        }
        return str4;
    }
}
