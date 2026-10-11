package com.tencent.beacon.base.util;

import android.os.Build;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.tencent.beacon.base.util.g */
/* loaded from: classes10.dex */
public class C14958g {

    /* renamed from: a */
    private static boolean f92917a;

    /* renamed from: a */
    public static boolean m59408a() {
        ArrayList<String> m59412e = m59412e();
        if (m59412e == null || m59412e.size() <= 0) {
            C14954c.m59392a("[core] no response}", new Object[0]);
            return false;
        }
        Iterator<String> it2 = m59412e.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            C14954c.m59392a(next, new Object[0]);
            if (next.contains("not found")) {
                return false;
            }
        }
        C14954c.m59392a("[core] sufile}", new Object[0]);
        return true;
    }

    /* renamed from: b */
    public static boolean m59409b() {
        try {
            if (new File("/system/app/Superuser.apk").exists()) {
                C14954c.m59392a("[core] super_apk", new Object[0]);
                return true;
            }
        } catch (Exception e) {
            C14954c.m59393a(e);
        }
        return false;
    }

    /* renamed from: c */
    public static boolean m59410c() {
        String str = Build.TAGS;
        if (str == null || !str.contains("test-keys")) {
            return false;
        }
        C14954c.m59392a("[core] test-keys", new Object[0]);
        return true;
    }

    /* renamed from: d */
    public static boolean m59411d() {
        boolean z = true;
        if (f92917a) {
            return true;
        }
        if (!m59410c() && !m59409b() && !m59408a()) {
            z = false;
        }
        f92917a = z;
        return z;
    }

    /* renamed from: e */
    private static ArrayList<String> m59412e() {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Process exec = Runtime.getRuntime().exec(new String[]{"/system/bin/sh", "-c", "type su"});
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream(), Charset.forName("UTF-8")));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                arrayList.add(readLine);
            }
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(exec.getErrorStream(), Charset.forName("UTF-8")));
            while (true) {
                String readLine2 = bufferedReader2.readLine();
                if (readLine2 == null) {
                    return arrayList;
                }
                arrayList.add(readLine2);
            }
        } catch (Throwable th) {
            C14954c.m59393a(th);
            return null;
        }
    }
}
