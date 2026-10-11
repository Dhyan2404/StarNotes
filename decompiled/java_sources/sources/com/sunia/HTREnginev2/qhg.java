package com.sunia.HTREnginev2;

import com.google.android.material.motion.MotionUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

/* loaded from: classes10.dex */
public abstract class qhg {

    /* renamed from: com.sunia.HTREnginev2.qhg$a */
    /* loaded from: classes10.dex */
    public static class C14304a extends qhg {

        /* renamed from: a */
        public final String f82052a;

        public C14304a(String str) {
            this.f82052a = str;
        }

        @Override // com.sunia.HTREnginev2.qhg
        /* renamed from: c */
        public long mo55564c(File file) {
            return 0L;
        }

        @Override // com.sunia.HTREnginev2.qhg
        /* renamed from: d */
        public String mo55565d() {
            return "Unknown (" + this.f82052a + MotionUtils.f31762d;
        }

        @Override // com.sunia.HTREnginev2.qhg
        /* renamed from: e */
        public long mo55566e(File file) {
            return 0L;
        }
    }

    /* renamed from: a */
    public static BufferedReader m56693a(String[] strArr) throws IOException {
        return new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(strArr).getInputStream()));
    }

    /* renamed from: b */
    public static qhg m56694b() {
        String lowerCase = System.getProperty("os.name").toLowerCase();
        return lowerCase.contains("windows") ? new m7o() : (lowerCase.contains("linux") || lowerCase.contains("sun os") || lowerCase.contains("sunos") || lowerCase.contains("solaris") || lowerCase.contains("mpe/ix") || lowerCase.contains("hp-ux") || lowerCase.contains("aix") || lowerCase.contains("freebsd") || lowerCase.contains("irix") || lowerCase.contains("digital unix") || lowerCase.contains("unix") || lowerCase.contains("mac os x")) ? new ptn() : new C14304a(lowerCase);
    }

    /* renamed from: c */
    public abstract long mo55564c(File file);

    /* renamed from: d */
    public abstract String mo55565d();

    /* renamed from: e */
    public abstract long mo55566e(File file);
}
