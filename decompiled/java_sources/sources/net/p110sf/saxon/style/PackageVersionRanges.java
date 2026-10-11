package net.p110sf.saxon.style;

import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.trans.XPathException;
import org.xmlresolver.cache.ResourceCache;

/* loaded from: classes11.dex */
public class PackageVersionRanges {

    /* renamed from: a */
    public final ArrayList<C18521a> f101767a = new ArrayList<>();

    /* renamed from: net.sf.saxon.style.PackageVersionRanges$a */
    /* loaded from: classes11.dex */
    public static class C18521a {

        /* renamed from: a */
        public final String f101768a;

        /* renamed from: b */
        public PackageVersion f101769b;

        /* renamed from: c */
        public PackageVersion f101770c;

        /* renamed from: d */
        public boolean f101771d;

        /* renamed from: e */
        public boolean f101772e;

        public C18521a(String str) throws XPathException {
            this.f101771d = false;
            this.f101772e = false;
            this.f101768a = str;
            if ("*".equals(str)) {
                this.f101771d = true;
                return;
            }
            if (str.endsWith("+")) {
                this.f101769b = new PackageVersion(str.replace("+", ""));
                this.f101770c = PackageVersion.MAX_VALUE;
                return;
            }
            if (str.endsWith(ResourceCache.defaultPattern)) {
                this.f101772e = true;
                this.f101769b = new PackageVersion(str.replace(ResourceCache.defaultPattern, ""));
                return;
            }
            if (!str.matches(".*\\s*to\\s+.*")) {
                PackageVersion packageVersion = new PackageVersion(str);
                this.f101769b = packageVersion;
                this.f101770c = packageVersion;
                return;
            }
            String[] split = str.split("\\s*to\\s+");
            if (split.length <= 2) {
                this.f101769b = split[0].equals("") ? PackageVersion.ZERO : new PackageVersion(split[0]);
                this.f101770c = new PackageVersion(split[1]);
            } else {
                throw new XPathException("Invalid version range:" + str, "XTSE0020");
            }
        }

        /* renamed from: a */
        public boolean m63933a(PackageVersion packageVersion) {
            if (this.f101771d) {
                return true;
            }
            return this.f101772e ? this.f101769b.isPrefix(packageVersion) : this.f101769b.compareTo(packageVersion) <= 0 && packageVersion.compareTo(this.f101770c) <= 0;
        }

        public String toString() {
            return this.f101768a;
        }
    }

    public PackageVersionRanges(String str) throws XPathException {
        for (String str2 : str.trim().split("\\s*,\\s*")) {
            this.f101767a.add(new C18521a(str2));
        }
    }

    public boolean contains(PackageVersion packageVersion) {
        Iterator<C18521a> it2 = this.f101767a.iterator();
        while (it2.hasNext()) {
            if (it2.next().m63933a(packageVersion)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        if (this.f101767a.size() == 1) {
            return this.f101767a.get(0).toString();
        }
        StringBuilder sb = new StringBuilder(256);
        Iterator<C18521a> it2 = this.f101767a.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().toString());
            sb.append(",");
        }
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }
}
