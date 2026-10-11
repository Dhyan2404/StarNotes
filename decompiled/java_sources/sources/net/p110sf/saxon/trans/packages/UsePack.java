package net.p110sf.saxon.trans.packages;

import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.style.PackageVersionRanges;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class UsePack {
    public Location location;
    public String packageName;
    public PackageVersionRanges ranges;

    public UsePack(String str, String str2, Location location) throws XPathException {
        this.packageName = str;
        this.ranges = new PackageVersionRanges(str2 == null ? "*" : str2);
        this.location = location;
    }
}
