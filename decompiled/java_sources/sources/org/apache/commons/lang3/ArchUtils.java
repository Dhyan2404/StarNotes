package org.apache.commons.lang3;

import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.arch.Processor;

/* loaded from: classes12.dex */
public class ArchUtils {

    /* renamed from: a */
    public static final Map<String, Processor> f107356a = new HashMap();

    static {
        m67204c();
    }

    /* renamed from: a */
    public static void m67202a(String str, Processor processor) throws IllegalStateException {
        Map<String, Processor> map = f107356a;
        if (!map.containsKey(str)) {
            map.put(str, processor);
            return;
        }
        throw new IllegalStateException("Key " + str + " already exists in processor map");
    }

    /* renamed from: b */
    public static void m67203b(Processor processor, String... strArr) throws IllegalStateException {
        for (String str : strArr) {
            m67202a(str, processor);
        }
    }

    /* renamed from: c */
    public static void m67204c() {
        m67209h();
        m67210i();
        m67205d();
        m67206e();
        m67207f();
        m67208g();
    }

    /* renamed from: d */
    public static void m67205d() {
        m67203b(new Processor(Processor.Arch.BIT_32, Processor.Type.IA_64), "ia64_32", "ia64n");
    }

    /* renamed from: e */
    public static void m67206e() {
        m67203b(new Processor(Processor.Arch.BIT_64, Processor.Type.IA_64), "ia64", "ia64w");
    }

    /* renamed from: f */
    public static void m67207f() {
        m67203b(new Processor(Processor.Arch.BIT_32, Processor.Type.PPC), "ppc", "power", "powerpc", "power_pc", "power_rs");
    }

    /* renamed from: g */
    public static void m67208g() {
        m67203b(new Processor(Processor.Arch.BIT_64, Processor.Type.PPC), "ppc64", "power64", "powerpc64", "power_pc64", "power_rs64");
    }

    public static Processor getProcessor() {
        return getProcessor(SystemUtils.OS_ARCH);
    }

    /* renamed from: h */
    public static void m67209h() {
        m67203b(new Processor(Processor.Arch.BIT_32, Processor.Type.X86), "x86", "i386", "i486", "i586", "i686", "pentium");
    }

    /* renamed from: i */
    public static void m67210i() {
        m67203b(new Processor(Processor.Arch.BIT_64, Processor.Type.X86), "x86_64", "amd64", "em64t", "universal");
    }

    public static Processor getProcessor(String str) {
        return f107356a.get(str);
    }
}
