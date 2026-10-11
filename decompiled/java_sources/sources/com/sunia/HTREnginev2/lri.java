package com.sunia.HTREnginev2;

import com.google.android.material.motion.MotionUtils;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes12.dex */
public final class lri extends AbstractC14637x4 {

    /* renamed from: a */
    public static final lri f76810a = new lri();

    /* renamed from: a */
    public String m55500a() {
        return "processors: " + Runtime.getRuntime().availableProcessors() + ", architecture: " + m55504e("os.arch") + m55505f("-", "sun.arch.data.model") + m55505f(", instruction sets: ", "sun.cpu.isalist");
    }

    /* renamed from: b */
    public String m55501b() {
        return "default locale: " + Locale.getDefault() + ", platform encoding: " + m55504e("file.encoding");
    }

    /* renamed from: c */
    public String m55502c() {
        return m55504e("os.name") + " " + m55504e("os.version") + m55505f(" ", "sun.os.patch.level") + ", architecture: " + m55504e("os.arch") + m55505f("-", "sun.arch.data.model");
    }

    /* renamed from: d */
    public String m55503d() {
        return m55504e("java.runtime.name") + " (build " + m55504e("java.runtime.version") + ") from " + m55504e("java.vendor");
    }

    /* renamed from: e */
    public final String m55504e(String str) {
        return s6n.f83860a.lookup(str);
    }

    /* renamed from: f */
    public final String m55505f(String str, String str2) {
        String m55504e = m55504e(str2);
        if (StringUtils.isEmpty(m55504e)) {
            return "";
        }
        return str + m55504e;
    }

    /* renamed from: g */
    public String m55506g() {
        return m55504e("java.vm.name") + " (build " + m55504e("java.vm.version") + ", " + m55504e("java.vm.info") + MotionUtils.f31762d;
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1097462182:
                if (str.equals("locale")) {
                    c = 0;
                    break;
                }
                break;
            case 3556:
                if (str.equals("os")) {
                    c = 1;
                    break;
                }
                break;
            case 3767:
                if (str.equals("vm")) {
                    c = 2;
                    break;
                }
                break;
            case 116909544:
                if (str.equals(sod.f84368v)) {
                    c = 3;
                    break;
                }
                break;
            case 351608024:
                if (str.equals("version")) {
                    c = 4;
                    break;
                }
                break;
            case 1550962648:
                if (str.equals("runtime")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return m55501b();
            case 1:
                return m55502c();
            case 2:
                return m55506g();
            case 3:
                return m55500a();
            case 4:
                return "Java version " + m55504e("java.version");
            case 5:
                return m55503d();
            default:
                throw new IllegalArgumentException(str);
        }
    }
}
