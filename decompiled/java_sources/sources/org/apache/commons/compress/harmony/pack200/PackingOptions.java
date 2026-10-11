package org.apache.commons.compress.harmony.pack200;

import com.google.common.reflect.ClassPath;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.compress.harmony.pack200.NewAttribute;
import org.apache.commons.compress.java.util.jar.Pack200;
import org.objectweb.asm.Attribute;

/* loaded from: classes12.dex */
public class PackingOptions {
    public static final String ERROR = "error";
    public static final String KEEP = "keep";
    public static final String PASS = "pass";
    public static final long SEGMENT_LIMIT = 1000000;
    public static final String STRIP = "strip";

    /* renamed from: q */
    public static final Attribute[] f106710q = new Attribute[0];

    /* renamed from: b */
    public boolean f106712b;

    /* renamed from: n */
    public boolean f106724n;

    /* renamed from: o */
    public String f106725o;

    /* renamed from: p */
    public Attribute[] f106726p;

    /* renamed from: a */
    public boolean f106711a = true;

    /* renamed from: c */
    public boolean f106713c = true;

    /* renamed from: d */
    public long f106714d = 1000000;

    /* renamed from: e */
    public int f106715e = 5;

    /* renamed from: f */
    public String f106716f = "keep";

    /* renamed from: g */
    public String f106717g = "keep";

    /* renamed from: h */
    public final List<String> f106718h = new ArrayList();

    /* renamed from: i */
    public String f106719i = "pass";

    /* renamed from: j */
    public final Map<String, String> f106720j = new HashMap();

    /* renamed from: k */
    public final Map<String, String> f106721k = new HashMap();

    /* renamed from: l */
    public final Map<String, String> f106722l = new HashMap();

    /* renamed from: m */
    public final Map<String, String> f106723m = new HashMap();

    /* renamed from: a */
    public final void m66978a(List<Attribute> list, Map<String, String> map, int i) {
        boolean z;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (String str : map.keySet()) {
            String str2 = map.get(str);
            Iterator<Attribute> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                NewAttribute newAttribute = (NewAttribute) it2.next();
                if (newAttribute.type.equals(str)) {
                    newAttribute.addContext(i);
                    z = true;
                    break;
                }
            }
            if (!z) {
                list.add("error".equals(str2) ? new NewAttribute.ErrorAttribute(str, i) : "strip".equals(str2) ? new NewAttribute.StripAttribute(str, i) : "pass".equals(str2) ? new NewAttribute.PassAttribute(str, i) : new NewAttribute(str, str2, i));
            }
        }
    }

    public void addClassAttributeAction(String str, String str2) {
        this.f106720j.put(str, str2);
    }

    public void addCodeAttributeAction(String str, String str2) {
        this.f106723m.put(str, str2);
    }

    public void addFieldAttributeAction(String str, String str2) {
        this.f106721k.put(str, str2);
    }

    public void addMethodAttributeAction(String str, String str2) {
        this.f106722l.put(str, str2);
    }

    public void addPassFile(String str) {
        String property = System.getProperty("file.separator");
        if (property.equals("\\")) {
            property = property + "\\";
        }
        this.f106718h.add(str.replaceAll(property, "/"));
    }

    /* renamed from: b */
    public final String m66979b(Map<String, String> map, String str, String str2) {
        return map == null ? str2 : map.getOrDefault(str, str2);
    }

    public String getDeflateHint() {
        return this.f106716f;
    }

    public int getEffort() {
        return this.f106715e;
    }

    public String getLogFile() {
        return this.f106725o;
    }

    public String getModificationTime() {
        return this.f106717g;
    }

    public long getSegmentLimit() {
        return this.f106714d;
    }

    public String getUnknownAttributeAction() {
        return this.f106719i;
    }

    public Attribute[] getUnknownAttributePrototypes() {
        if (this.f106726p == null) {
            ArrayList arrayList = new ArrayList();
            m66978a(arrayList, this.f106720j, 0);
            m66978a(arrayList, this.f106722l, 2);
            m66978a(arrayList, this.f106721k, 1);
            m66978a(arrayList, this.f106723m, 3);
            this.f106726p = (Attribute[]) arrayList.toArray(f106710q);
        }
        return this.f106726p;
    }

    public String getUnknownClassAttributeAction(String str) {
        return m66979b(this.f106720j, str, this.f106719i);
    }

    public String getUnknownCodeAttributeAction(String str) {
        return m66979b(this.f106723m, str, this.f106719i);
    }

    public String getUnknownFieldAttributeAction(String str) {
        return m66979b(this.f106721k, str, this.f106719i);
    }

    public String getUnknownMethodAttributeAction(String str) {
        return m66979b(this.f106722l, str, this.f106719i);
    }

    public boolean isGzip() {
        return this.f106711a;
    }

    public boolean isKeepDeflateHint() {
        return "keep".equals(this.f106716f);
    }

    public boolean isKeepFileOrder() {
        return this.f106713c;
    }

    public boolean isPassFile(String str) {
        Iterator<String> it2 = this.f106718h.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            if (str.equals(next)) {
                return true;
            }
            if (!next.endsWith(ClassPath.f35080d)) {
                if (!next.endsWith("/")) {
                    next = next + "/";
                }
                return str.startsWith(next);
            }
        }
        return false;
    }

    public boolean isStripDebug() {
        return this.f106712b;
    }

    public boolean isVerbose() {
        return this.f106724n;
    }

    public void removePassFile(String str) {
        this.f106718h.remove(str);
    }

    public void setDeflateHint(String str) {
        if ("keep".equals(str) || "true".equals(str) || "false".equals(str)) {
            this.f106716f = str;
            return;
        }
        throw new IllegalArgumentException("Bad argument: -H " + str + " ? deflate hint should be either true, false or keep (default)");
    }

    public void setEffort(int i) {
        this.f106715e = i;
    }

    public void setGzip(boolean z) {
        this.f106711a = z;
    }

    public void setKeepFileOrder(boolean z) {
        this.f106713c = z;
    }

    public void setLogFile(String str) {
        this.f106725o = str;
    }

    public void setModificationTime(String str) {
        if ("keep".equals(str) || Pack200.Packer.LATEST.equals(str)) {
            this.f106717g = str;
            return;
        }
        throw new IllegalArgumentException("Bad argument: -m " + str + " ? transmit modtimes should be either latest or keep (default)");
    }

    public void setQuiet(boolean z) {
        this.f106724n = !z;
    }

    public void setSegmentLimit(long j) {
        this.f106714d = j;
    }

    public void setStripDebug(boolean z) {
        this.f106712b = z;
    }

    public void setUnknownAttributeAction(String str) {
        this.f106719i = str;
        if ("pass".equals(str) || "error".equals(str) || "strip".equals(str)) {
            return;
        }
        throw new IllegalArgumentException("Incorrect option for -U, " + str);
    }

    public void setVerbose(boolean z) {
        this.f106724n = z;
    }
}
