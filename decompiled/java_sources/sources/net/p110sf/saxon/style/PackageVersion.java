package net.p110sf.saxon.style;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class PackageVersion implements Comparable<PackageVersion> {
    public List<Integer> parts;
    public String suffix;
    public static PackageVersion ZERO = new PackageVersion(new int[]{0});
    public static PackageVersion ONE = new PackageVersion(new int[]{1});
    public static PackageVersion MAX_VALUE = new PackageVersion(new int[]{Integer.MAX_VALUE});

    public PackageVersion(int[] iArr) {
        this.parts = new ArrayList(iArr.length);
        for (int i : iArr) {
            this.parts.add(Integer.valueOf(i));
        }
        m63932b();
    }

    /* renamed from: a */
    public static boolean m63931a(List<Integer> list, List<Integer> list2) {
        return list.equals(list2);
    }

    /* renamed from: b */
    public final void m63932b() {
        for (int size = this.parts.size() - 1; size > 0 && this.parts.get(size).intValue() == 0; size--) {
            this.parts.remove(size);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PackageVersion)) {
            return false;
        }
        PackageVersion packageVersion = (PackageVersion) obj;
        if (!m63931a(this.parts, packageVersion.parts)) {
            return false;
        }
        String str = this.suffix;
        return str != null ? str.equals(packageVersion.suffix) : packageVersion.suffix == null;
    }

    public boolean equalsIgnoringSuffix(PackageVersion packageVersion) {
        return this.parts.equals(packageVersion.parts);
    }

    public int hashCode() {
        Iterator<Integer> it2 = this.parts.iterator();
        int i = 772211;
        while (it2.hasNext()) {
            i = (i << 3) ^ it2.next().intValue();
        }
        String str = this.suffix;
        return str != null ? (i << 3) ^ str.hashCode() : i;
    }

    public boolean isPrefix(PackageVersion packageVersion) {
        if (packageVersion.parts.size() < this.parts.size()) {
            return false;
        }
        for (int i = 0; i < this.parts.size(); i++) {
            if (!this.parts.get(i).equals(packageVersion.parts.get(i))) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Integer num : this.parts) {
            sb.append(".");
            sb.append(num);
        }
        if (!this.parts.isEmpty()) {
            sb = new StringBuilder(sb.substring(1));
        }
        if (this.suffix != null) {
            sb.append("-");
            sb.append(this.suffix);
        }
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(PackageVersion packageVersion) {
        List<Integer> list = packageVersion.parts;
        int size = this.parts.size() - list.size();
        int min = Math.min(this.parts.size(), list.size());
        for (int i = 0; i < min; i++) {
            int compareTo = this.parts.get(i).compareTo(list.get(i));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (size == 0) {
            String str = this.suffix;
            if (str != null) {
                String str2 = packageVersion.suffix;
                if (str2 == null) {
                    return -1;
                }
                return str.compareTo(str2);
            }
            if (packageVersion.suffix != null) {
                return 1;
            }
        }
        return size;
    }

    public PackageVersion(String str) throws XPathException {
        String str2;
        this.parts = new ArrayList();
        if (str.contains("-")) {
            int indexOf = str.indexOf(45);
            String substring = str.substring(indexOf + 1);
            this.suffix = substring;
            if (NameChecker.isValidNCName(substring)) {
                str2 = str.substring(0, indexOf);
            } else {
                throw new XPathException("Illegal NCName as package-version NamePart: " + str, "XTSE0020");
            }
        } else {
            str2 = str;
        }
        if (!str2.equals("")) {
            if (!str2.startsWith(".")) {
                if (!str2.endsWith(".")) {
                    for (String str3 : str2.trim().split("\\.")) {
                        try {
                            this.parts.add(Integer.valueOf(str3));
                        } catch (NumberFormatException e) {
                            throw new XPathException("Error in package-version: " + e.getMessage(), "XTSE0020");
                        }
                    }
                    m63932b();
                    return;
                }
                throw new XPathException("The package-version cannot end with '.'", "XTSE0020");
            }
            throw new XPathException("The package-version cannot start with '.'", "XTSE0020");
        }
        throw new XPathException("No numeric component of package-version: " + str, "XTSE0020");
    }
}
