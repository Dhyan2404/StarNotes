package net.p110sf.saxon.style;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import javax.xml.transform.Source;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.PreparedStylesheet;
import net.p110sf.saxon.expr.PackageData;
import net.p110sf.saxon.expr.instruct.GlobalParameterSet;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.om.DocumentKey;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.QNameParser;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.trans.CompilerInfo;
import net.p110sf.saxon.trans.Timer;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingAbort;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.trans.packages.PackageDetails;
import net.p110sf.saxon.trans.packages.PackageLibrary;
import net.p110sf.saxon.trans.packages.UsePack;
import net.p110sf.saxon.trans.packages.VersionedPackageName;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.NestedIntegerValue;

/* loaded from: classes11.dex */
public class Compilation {
    public static boolean TIMING;

    /* renamed from: a */
    public final Configuration f101729a;

    /* renamed from: b */
    public final CompilerInfo f101730b;

    /* renamed from: c */
    public PrincipalStylesheetModule f101731c;

    /* renamed from: e */
    public boolean f101733e;

    /* renamed from: j */
    public PackageData f101738j;

    /* renamed from: k */
    public boolean f101739k;

    /* renamed from: q */
    public GlobalParameterSet f101745q;
    public Timer timer;

    /* renamed from: d */
    public int f101732d = 0;

    /* renamed from: g */
    public final Map<StructuredQName, C18520a> f101735g = new HashMap();

    /* renamed from: h */
    public final Map<DocumentKey, TreeInfo> f101736h = new HashMap();

    /* renamed from: i */
    public final Stack<DocumentKey> f101737i = new Stack<>();

    /* renamed from: l */
    public boolean f101740l = false;

    /* renamed from: m */
    public boolean f101741m = false;

    /* renamed from: n */
    public VersionedPackageName f101742n = null;

    /* renamed from: o */
    public final List<UsePack> f101743o = new ArrayList();

    /* renamed from: p */
    public List<VersionedPackageName> f101744p = new ArrayList();

    /* renamed from: r */
    public boolean f101746r = false;

    /* renamed from: f */
    public final QNameParser f101734f = new QNameParser(null).withAcceptEQName(true).withErrorOnBadSyntax("XTSE0020").withErrorOnUnresolvedPrefix("XTSE0280");

    /* renamed from: net.sf.saxon.style.Compilation$a */
    /* loaded from: classes11.dex */
    public static class C18520a {

        /* renamed from: a */
        public GroundedValue f101747a;

        /* renamed from: b */
        public NestedIntegerValue f101748b;

        /* renamed from: c */
        public boolean f101749c;

        public C18520a(GroundedValue groundedValue, NestedIntegerValue nestedIntegerValue, boolean z) {
            this.f101747a = groundedValue;
            this.f101748b = nestedIntegerValue;
            this.f101749c = z;
        }
    }

    public Compilation(Configuration configuration, CompilerInfo compilerInfo) {
        this.f101739k = true;
        this.timer = null;
        this.f101729a = configuration;
        this.f101730b = compilerInfo;
        this.f101733e = compilerInfo.isSchemaAware();
        this.f101739k = compilerInfo.isJustInTimeCompilation();
        this.f101745q = compilerInfo.getParameters();
        if (TIMING) {
            this.timer = new Timer();
        }
    }

    public static PreparedStylesheet compileSingletonPackage(Configuration configuration, CompilerInfo compilerInfo, Source source) throws XPathException {
        try {
            return StylesheetModule.loadStylesheet(source, new Compilation(configuration, compilerInfo));
        } catch (XPathException e) {
            if (!e.hasBeenReported()) {
                compilerInfo.getErrorReporter().report(new XmlProcessingException(e));
            }
            throw e;
        }
    }

    /* renamed from: a */
    public final void m63927a(PrincipalStylesheetModule principalStylesheetModule) {
        this.f101731c = principalStylesheetModule;
    }

    /* renamed from: b */
    public final boolean m63928b(GroundedValue groundedValue, GroundedValue groundedValue2) {
        if (groundedValue.getLength() != groundedValue2.getLength()) {
            return false;
        }
        if (groundedValue.getLength() == 1) {
            Item head = groundedValue.head();
            Item head2 = groundedValue2.head();
            return head instanceof AtomicValue ? (head2 instanceof AtomicValue) && ((AtomicValue) head).isIdentical((AtomicValue) head2) : head instanceof NodeInfo ? (head2 instanceof NodeInfo) && head.equals(head2) : head == head2;
        }
        for (int i = 0; i < groundedValue.getLength(); i++) {
            if (!m63928b(groundedValue.itemAt(i), groundedValue2.itemAt(i))) {
                return false;
            }
        }
        return true;
    }

    public void clearParameters() {
        this.f101745q = new GlobalParameterSet();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0057 A[Catch: XPathException -> 0x0152, TRY_LEAVE, TryCatch #0 {XPathException -> 0x0152, blocks: (B:13:0x0053, B:15:0x0057, B:78:0x014a, B:79:0x0151), top: B:12:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x014a A[Catch: XPathException -> 0x0152, TRY_ENTER, TryCatch #0 {XPathException -> 0x0152, blocks: (B:13:0x0053, B:15:0x0057, B:78:0x014a, B:79:0x0151), top: B:12:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.style.PrincipalStylesheetModule compilePackage(javax.xml.transform.Source r7) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.Compilation.compilePackage(javax.xml.transform.Source):net.sf.saxon.style.PrincipalStylesheetModule");
    }

    public void declareStaticVariable(StructuredQName structuredQName, GroundedValue groundedValue, NestedIntegerValue nestedIntegerValue, boolean z) throws XPathException {
        C18520a c18520a = this.f101735g.get(structuredQName);
        if (c18520a != null) {
            if (c18520a.f101748b.compareTo(nestedIntegerValue) >= 0) {
                return;
            }
            if (!m63928b(groundedValue, c18520a.f101747a)) {
                throw new XPathException("Incompatible values assigned for static variable " + structuredQName.getDisplayName(), "XTSE3450");
            }
            if (c18520a.f101749c != z) {
                throw new XPathException("Static variable " + structuredQName.getDisplayName() + " cannot be redeclared as a param", "XTSE3450");
            }
        }
        this.f101735g.put(structuredQName, new C18520a(groundedValue, nestedIntegerValue, z));
    }

    public CompilerInfo getCompilerInfo() {
        return this.f101730b;
    }

    public Configuration getConfiguration() {
        return this.f101729a;
    }

    public int getErrorCount() {
        return this.f101732d;
    }

    public Stack<DocumentKey> getImportStack() {
        return this.f101737i;
    }

    public PackageData getPackageData() {
        PackageData packageData = this.f101738j;
        if (packageData != null) {
            return packageData;
        }
        PrincipalStylesheetModule principalStylesheetModule = this.f101731c;
        if (principalStylesheetModule == null) {
            return null;
        }
        return principalStylesheetModule.getStylesheetPackage();
    }

    public GlobalParameterSet getParameters() {
        return this.f101745q;
    }

    public PrincipalStylesheetModule getPrincipalStylesheetModule() {
        return this.f101731c;
    }

    public QNameParser getQNameParser() {
        return this.f101734f;
    }

    public GroundedValue getStaticVariable(StructuredQName structuredQName) {
        C18520a c18520a = this.f101735g.get(structuredQName);
        if (c18520a == null) {
            return null;
        }
        return c18520a.f101747a;
    }

    public NestedIntegerValue getStaticVariablePrecedence(StructuredQName structuredQName) {
        C18520a c18520a = this.f101735g.get(structuredQName);
        if (c18520a == null) {
            return null;
        }
        return c18520a.f101748b;
    }

    public StyleNodeFactory getStyleNodeFactory(boolean z) {
        StyleNodeFactory makeStyleNodeFactory = getConfiguration().makeStyleNodeFactory(this);
        makeStyleNodeFactory.setTopLevelModule(z);
        return makeStyleNodeFactory;
    }

    public Map<DocumentKey, TreeInfo> getStylesheetModules() {
        return this.f101736h;
    }

    public boolean isCreatesSecondaryResultDocuments() {
        return this.f101740l;
    }

    public boolean isFallbackToNonStreaming() {
        return this.f101746r;
    }

    public boolean isLibraryPackage() {
        return this.f101741m;
    }

    public boolean isPreScan() {
        return this.f101739k;
    }

    public boolean isSchemaAware() {
        return this.f101733e;
    }

    public void registerPackageDependency(UsePack usePack) {
        this.f101743o.add(usePack);
    }

    public void reportError(XmlProcessingError xmlProcessingError) {
        ErrorReporter errorReporter = this.f101730b.getErrorReporter();
        if (errorReporter != null) {
            errorReporter.report(xmlProcessingError);
        }
        this.f101732d++;
        if (xmlProcessingError.getTerminationMessage() != null) {
            throw new XmlProcessingAbort(xmlProcessingError.getTerminationMessage());
        }
    }

    public void reportWarning(XPathException xPathException) {
        xPathException.setHostLanguage(HostLanguage.XSLT);
        ErrorReporter errorReporter = this.f101730b.getErrorReporter();
        if (errorReporter == null) {
            errorReporter = getConfiguration().makeErrorReporter();
        }
        if (errorReporter != null) {
            XmlProcessingException xmlProcessingException = new XmlProcessingException(xPathException);
            xmlProcessingException.setWarning(true);
            errorReporter.report(xmlProcessingException);
        }
    }

    public void satisfyPackageDependencies(XSLPackage xSLPackage) throws XPathException {
        PackageLibrary packageLibrary = this.f101730b.getPackageLibrary();
        packageLibrary.getCompilerInfo().setTargetEdition(this.f101730b.getTargetEdition());
        XPathException e = null;
        for (UsePack usePack : this.f101743o) {
            PackageDetails findPackage = packageLibrary.findPackage(usePack.packageName, usePack.ranges);
            if (findPackage == null) {
                throw new XPathException("Cannot find package " + usePack.packageName + " (version " + usePack.ranges + MotionUtils.f31762d, "XTSE3000", usePack.location);
            }
            StylesheetPackage stylesheetPackage = findPackage.loadedPackage;
            if (stylesheetPackage != null) {
                if (this.f101744p.contains(new VersionedPackageName(stylesheetPackage.getPackageName(), stylesheetPackage.getPackageVersion()))) {
                    StringBuilder sb = new StringBuilder(1024);
                    Iterator<VersionedPackageName> it2 = this.f101744p.iterator();
                    while (it2.hasNext()) {
                        sb.append(it2.next().packageName);
                        sb.append(", ");
                    }
                    sb.append("and ");
                    sb.append(xSLPackage.getName());
                    throw new XPathException("There is a cycle of package dependencies involving " + ((Object) sb), "XTSE3005");
                }
            }
            try {
                ArrayList arrayList = new ArrayList(this.f101744p);
                arrayList.add(findPackage.nameAndVersion);
                packageLibrary.obtainLoadedPackage(findPackage, arrayList);
            } catch (XPathException e2) {
                e = e2;
                if (!e.hasBeenReported()) {
                    reportError(e);
                }
            }
        }
        if (e != null) {
            throw e;
        }
    }

    public void setCreatesSecondaryResultDocuments(boolean z) {
        this.f101740l = z;
    }

    public void setExpectedNameAndVersion(VersionedPackageName versionedPackageName) {
        this.f101742n = versionedPackageName;
    }

    public void setFallbackToNonStreaming(boolean z) {
        this.f101746r = z;
    }

    public void setLibraryPackage(boolean z) {
        this.f101741m = z;
    }

    public void setMinimalPackageData() {
        if (getPackageData() == null) {
            PackageData packageData = new PackageData(getConfiguration());
            packageData.setHostLanguage(HostLanguage.XSLT, this.f101730b.getXsltVersion());
            packageData.setTargetEdition(this.f101730b.getTargetEdition());
            packageData.setSchemaAware(this.f101733e);
            this.f101738j = packageData;
        }
    }

    public void setPackageData(PackageData packageData) {
        this.f101738j = packageData;
    }

    public void setParameter(StructuredQName structuredQName, GroundedValue groundedValue) {
        this.f101745q.put(structuredQName, groundedValue);
    }

    public void setPreScan(boolean z) {
        this.f101739k = z;
    }

    public void setSchemaAware(boolean z) {
        this.f101733e = z;
        getPackageData().setSchemaAware(z);
    }

    public void setUsingPackages(List<VersionedPackageName> list) {
        this.f101744p = list;
    }

    public void reportError(XPathException xPathException) {
        xPathException.setHostLanguage(HostLanguage.XSLT);
        ErrorReporter errorReporter = this.f101730b.getErrorReporter();
        if (errorReporter == null) {
            errorReporter = getConfiguration().makeErrorReporter();
        }
        if (!xPathException.hasBeenReported()) {
            this.f101732d++;
            try {
                errorReporter.report(new XmlProcessingException(xPathException));
                xPathException.setHasBeenReported(true);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        int i = this.f101732d;
        if (i == 0) {
            this.f101732d = i + 1;
        }
    }

    public void reportWarning(String str, String str2, Location location) {
        XmlProcessingIncident asWarning = new XmlProcessingIncident(str, str2, location).asWarning();
        asWarning.setHostLanguage(HostLanguage.XSLT);
        this.f101730b.getErrorReporter().report(asWarning);
    }
}
