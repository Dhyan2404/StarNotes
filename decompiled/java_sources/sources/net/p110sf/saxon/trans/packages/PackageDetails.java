package net.p110sf.saxon.trans.packages;

import java.util.Map;
import javax.xml.transform.Source;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.style.StylesheetPackage;

/* loaded from: classes11.dex */
public class PackageDetails {
    public String baseName;
    public Thread beingProcessed;
    public Source exportLocation;
    public StylesheetPackage loadedPackage;
    public VersionedPackageName nameAndVersion;
    public int priority = Integer.MIN_VALUE;
    public String shortName;
    public Source sourceLocation;
    public Map<StructuredQName, GroundedValue> staticParams;
}
