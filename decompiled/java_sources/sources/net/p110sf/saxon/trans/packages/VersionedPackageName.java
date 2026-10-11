package net.p110sf.saxon.trans.packages;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.style.PackageVersion;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class VersionedPackageName {
    public String packageName;
    public PackageVersion packageVersion;

    public VersionedPackageName(String str, PackageVersion packageVersion) {
        this.packageName = str;
        this.packageVersion = packageVersion;
    }

    public boolean equals(Object obj) {
        if (obj instanceof VersionedPackageName) {
            VersionedPackageName versionedPackageName = (VersionedPackageName) obj;
            if (this.packageName.equals(versionedPackageName.packageName) && this.packageVersion.equals(versionedPackageName.packageVersion)) {
                return true;
            }
        }
        return false;
    }

    public boolean equalsIgnoringSuffix(VersionedPackageName versionedPackageName) {
        return this.packageName.equals(versionedPackageName.packageName) && this.packageVersion.equalsIgnoringSuffix(versionedPackageName.packageVersion);
    }

    public int hashCode() {
        return this.packageVersion.hashCode() ^ this.packageName.hashCode();
    }

    public String toString() {
        return this.packageName + " (" + this.packageVersion.toString() + MotionUtils.f31762d;
    }

    public VersionedPackageName(String str, String str2) throws XPathException {
        this.packageName = str;
        this.packageVersion = new PackageVersion(str2);
    }
}
