package net.p110sf.saxon.trans.packages;

import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.style.Compilation;
import net.p110sf.saxon.style.PackageVersion;
import net.p110sf.saxon.style.PackageVersionRanges;
import net.p110sf.saxon.style.PrincipalStylesheetModule;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trans.CompilerInfo;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class PackageLibrary {

    /* renamed from: e */
    public static final /* synthetic */ boolean f102397e = false;

    /* renamed from: a */
    public final Configuration f102398a;

    /* renamed from: b */
    public final CompilerInfo f102399b;

    /* renamed from: c */
    public Map<String, List<PackageVersion>> f102400c;

    /* renamed from: d */
    public Map<VersionedPackageName, PackageDetails> f102401d;

    public PackageLibrary(CompilerInfo compilerInfo) {
        this.f102400c = new HashMap();
        this.f102401d = new HashMap();
        this.f102399b = compilerInfo;
        this.f102398a = compilerInfo.getConfiguration();
    }

    /* renamed from: a */
    public final void m64504a(StylesheetPackage stylesheetPackage, PackageDetails packageDetails) throws XPathException {
        String packageName = stylesheetPackage.getPackageName();
        String str = packageDetails.baseName;
        if (str != null) {
            if (!str.equals(packageName)) {
                throw new XPathException("Base name of package (" + packageDetails.baseName + ") does not match the value in the XSLT source (" + packageName + MotionUtils.f31762d);
            }
        } else if (!packageDetails.nameAndVersion.packageName.equals(packageName)) {
            throw new XPathException("Registered name of package (" + packageDetails.nameAndVersion.packageName + ") does not match the value in the XSLT source (" + packageName + MotionUtils.f31762d);
        }
        PackageVersion packageVersion = stylesheetPackage.getPackageVersion();
        if (packageVersion.equals(packageDetails.nameAndVersion.packageVersion)) {
            return;
        }
        throw new XPathException("Registered version number of package (" + packageDetails.nameAndVersion.packageVersion + ") does not match the value in the XSLT source (" + packageVersion + MotionUtils.f31762d);
    }

    public synchronized void addPackage(StylesheetPackage stylesheetPackage) {
        VersionedPackageName versionedPackageName = new VersionedPackageName(stylesheetPackage.getPackageName(), stylesheetPackage.getPackageVersion());
        PackageDetails packageDetails = new PackageDetails();
        packageDetails.nameAndVersion = versionedPackageName;
        packageDetails.loadedPackage = stylesheetPackage;
        if (versionedPackageName.packageName != null) {
            this.f102401d.put(versionedPackageName, packageDetails);
            addPackage(packageDetails);
        }
    }

    /* renamed from: b */
    public final void m64505b(PackageDetails packageDetails, List<VersionedPackageName> list) throws XPathException {
        if (packageDetails.beingProcessed == Thread.currentThread()) {
            StringBuilder sb = new StringBuilder(1024);
            Iterator<VersionedPackageName> it2 = list.iterator();
            while (it2.hasNext()) {
                sb.append(it2.next().packageName);
                sb.append(", ");
            }
            sb.append("and ");
            sb.append(packageDetails.nameAndVersion.packageName);
            throw new XPathException("There is a cycle of package dependencies involving " + ((Object) sb), "XTSE3005");
        }
    }

    public synchronized PackageDetails findDetailsForAlias(String str) {
        PackageDetails packageDetails;
        packageDetails = null;
        for (PackageDetails packageDetails2 : this.f102401d.values()) {
            if (str.equals(packageDetails2.shortName)) {
                if (packageDetails != null) {
                    throw new IllegalStateException("Non-unique shortName in package library: " + str);
                }
                packageDetails = packageDetails2;
            }
        }
        return packageDetails;
    }

    public synchronized PackageDetails findPackage(String str, PackageVersionRanges packageVersionRanges) {
        HashSet<PackageDetails> hashSet = new HashSet();
        List<PackageVersion> list = this.f102400c.get(str);
        PackageDetails packageDetails = null;
        if (list == null) {
            return null;
        }
        int i = Integer.MIN_VALUE;
        for (PackageVersion packageVersion : list) {
            PackageDetails packageDetails2 = this.f102401d.get(new VersionedPackageName(str, packageVersion));
            if (packageVersionRanges.contains(packageVersion)) {
                hashSet.add(packageDetails2);
                int i2 = packageDetails2.priority;
                if (i2 > i) {
                    i = i2;
                }
            }
        }
        if (hashSet.isEmpty()) {
            return null;
        }
        if (hashSet.size() == 1) {
            Iterator it2 = hashSet.iterator();
            if (!it2.hasNext()) {
                return null;
            }
            return (PackageDetails) it2.next();
        }
        new HashSet();
        if (i == Integer.MIN_VALUE) {
            for (PackageDetails packageDetails3 : hashSet) {
                if (packageDetails == null || packageDetails3.nameAndVersion.packageVersion.compareTo(packageDetails.nameAndVersion.packageVersion) > 0) {
                    packageDetails = packageDetails3;
                }
            }
        } else {
            for (PackageDetails packageDetails4 : hashSet) {
                int i3 = packageDetails4.priority;
                PackageVersion packageVersion2 = packageDetails4.nameAndVersion.packageVersion;
                if (i3 != Integer.MIN_VALUE && i3 == i && (packageDetails == null || packageVersion2.compareTo(packageDetails.nameAndVersion.packageVersion) > 0)) {
                    packageDetails = packageDetails4;
                }
            }
        }
        return packageDetails;
    }

    public CompilerInfo getCompilerInfo() {
        return this.f102399b;
    }

    public synchronized List<StylesheetPackage> getPackages() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<PackageDetails> it2 = this.f102401d.values().iterator();
        while (it2.hasNext()) {
            StylesheetPackage stylesheetPackage = it2.next().loadedPackage;
            if (stylesheetPackage != null) {
                arrayList.add(stylesheetPackage);
            }
        }
        return arrayList;
    }

    public StylesheetPackage obtainLoadedPackage(PackageDetails packageDetails, List<VersionedPackageName> list) throws XPathException {
        StylesheetPackage stylesheetPackage = packageDetails.loadedPackage;
        if (stylesheetPackage != null) {
            return stylesheetPackage;
        }
        if (packageDetails.exportLocation != null) {
            m64505b(packageDetails, list);
            packageDetails.beingProcessed = Thread.currentThread();
            StylesheetPackage loadPackage = this.f102398a.makePackageLoader().loadPackage(packageDetails.exportLocation);
            m64504a(loadPackage, packageDetails);
            packageDetails.loadedPackage = loadPackage;
            packageDetails.beingProcessed = null;
            return loadPackage;
        }
        if (packageDetails.sourceLocation == null) {
            return null;
        }
        m64505b(packageDetails, list);
        packageDetails.beingProcessed = Thread.currentThread();
        Compilation compilation = new Compilation(this.f102398a, this.f102399b);
        compilation.setUsingPackages(list);
        compilation.setExpectedNameAndVersion(packageDetails.nameAndVersion);
        compilation.clearParameters();
        compilation.setLibraryPackage(true);
        Map<StructuredQName, GroundedValue> map = packageDetails.staticParams;
        if (map != null) {
            for (Map.Entry<StructuredQName, GroundedValue> entry : map.entrySet()) {
                compilation.setParameter(entry.getKey(), entry.getValue());
            }
        }
        PrincipalStylesheetModule compilePackage = compilation.compilePackage(packageDetails.sourceLocation);
        packageDetails.beingProcessed = null;
        if (compilation.getErrorCount() <= 0) {
            StylesheetPackage stylesheetPackage2 = compilePackage.getStylesheetPackage();
            m64504a(stylesheetPackage2, packageDetails);
            packageDetails.loadedPackage = stylesheetPackage2;
            return stylesheetPackage2;
        }
        throw new XPathException("Errors found in package " + packageDetails.nameAndVersion.packageName);
    }

    public PackageLibrary(PackageLibrary packageLibrary) {
        this.f102400c = new HashMap();
        this.f102401d = new HashMap();
        this.f102400c = new HashMap(packageLibrary.f102400c);
        this.f102401d = new HashMap(packageLibrary.f102401d);
        this.f102399b = packageLibrary.f102399b;
        this.f102398a = packageLibrary.f102398a;
    }

    public synchronized void addPackage(PackageDetails packageDetails) {
        VersionedPackageName versionedPackageName = packageDetails.nameAndVersion;
        String str = versionedPackageName.packageName;
        PackageVersion packageVersion = versionedPackageName.packageVersion;
        List<PackageVersion> list = this.f102400c.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f102400c.put(str, list);
        }
        list.add(packageVersion);
        this.f102401d.put(versionedPackageName, packageDetails);
    }

    public PackageLibrary(CompilerInfo compilerInfo, Set<File> set) throws XPathException {
        this.f102400c = new HashMap();
        this.f102401d = new HashMap();
        this.f102399b = compilerInfo;
        this.f102398a = compilerInfo.getConfiguration();
        for (File file : set) {
            PackageInspector packageInspector = new PackageInspector(this.f102398a.makePipelineConfiguration());
            PackageDetails packageDetails = packageInspector.getPackageDetails(file, this.f102398a);
            if (packageDetails == null) {
                String str = "Unable to get package name and version for file " + file.getName();
                String diagnostics = packageInspector.getDiagnostics();
                throw new XPathException(diagnostics != null ? str + " (" + diagnostics + MotionUtils.f31762d : str);
            }
            addPackage(packageDetails);
        }
    }

    public void addPackage(File file) throws XPathException {
        PackageInspector packageInspector = new PackageInspector(this.f102398a.makePipelineConfiguration());
        PackageDetails packageDetails = packageInspector.getPackageDetails(file, this.f102398a);
        if (packageDetails == null) {
            String str = "Unable to get package name and version for file " + file.getName();
            String diagnostics = packageInspector.getDiagnostics();
            if (diagnostics != null) {
                str = str + " (" + diagnostics + MotionUtils.f31762d;
            }
            throw new XPathException(str);
        }
        addPackage(packageDetails);
    }
}
