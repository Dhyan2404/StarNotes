package net.p110sf.saxon.style;

import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.packages.VersionedPackageName;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class XSLPackage extends XSLModuleRoot {

    /* renamed from: u */
    public String f102082u = null;

    /* renamed from: v */
    public PackageVersion f102083v = null;

    /* renamed from: w */
    public boolean f102084w = true;

    /* renamed from: x */
    public boolean f102085x = false;

    public String getName() {
        if (this.f102082u == null) {
            prepareAttributes();
        }
        return this.f102082u;
    }

    public VersionedPackageName getNameAndVersion() {
        return new VersionedPackageName(getName(), getPackageVersion());
    }

    public PackageVersion getPackageVersion() {
        if (this.f102083v == null) {
            prepareAttributes();
        }
        return this.f102083v;
    }

    public int getVersion() {
        if (this.version == -1) {
            prepareAttributes();
        }
        return this.version;
    }

    @Override // net.p110sf.saxon.tree.linked.ElementImpl
    public void initialise(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NodeInfo nodeInfo, int i) {
        super.initialise(nodeName, schemaType, attributeMap, nodeInfo, i);
        this.f102084w = getLocalPart().equals("package");
    }

    @Override // net.p110sf.saxon.style.XSLModuleRoot
    public boolean isDeclaredModes() {
        if (this.f102082u == null) {
            prepareAttributes();
        }
        return this.f102084w;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00e3, code lost:
    
        if (r3.equals("preserve") == false) goto L47;
     */
    @Override // net.p110sf.saxon.style.StyleElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void prepareAttributes() {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.style.XSLPackage.prepareAttributes():void");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        String attributeValue;
        boolean z;
        for (NodeInfo nodeInfo : children()) {
            int fingerprint = nodeInfo.getFingerprint();
            if (nodeInfo.getNodeKind() != 3 && (!((z = nodeInfo instanceof StyleElement)) || !((StyleElement) nodeInfo).isDeclaration())) {
                if (!(nodeInfo instanceof DataElement) && z && (!getLocalPart().equals("package") || (fingerprint != 214 && fingerprint != 152))) {
                    if ("http://www.w3.org/1999/XSL/Transform".equals(nodeInfo.getURI()) || "".equals(nodeInfo.getURI())) {
                        boolean z2 = nodeInfo instanceof AbsentExtensionElement;
                        if (!z2 || !((StyleElement) nodeInfo).m63985x()) {
                            if (!"http://www.w3.org/1999/XSL/Transform".equals(nodeInfo.getURI())) {
                                ((StyleElement) nodeInfo).compileError("Element " + nodeInfo.getDisplayName() + " must not appear directly within " + getDisplayName() + " because it is not in a namespace", "XTSE0130");
                            } else if (!z2) {
                                ((StyleElement) nodeInfo).compileError("Element " + nodeInfo.getDisplayName() + " must not appear directly within " + getDisplayName(), "XTSE0010");
                            }
                        }
                    }
                }
            }
        }
        if (this.f102084w && (attributeValue = getAttributeValue("default-mode")) != null && getPrincipalStylesheetModule().getRuleManager().obtainMode(m63986y(), false) == null) {
            compileError("The default mode " + attributeValue + " has not been declared in an xsl:mode declaration", "XTSE3085");
        }
    }
}
