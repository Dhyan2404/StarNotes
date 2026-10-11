package net.p110sf.saxon.trans.packages;

import java.io.File;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.event.Sink;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class PackageInspector extends ProxyReceiver {

    /* renamed from: e */
    public boolean f102392e;

    /* renamed from: f */
    public String f102393f;

    /* renamed from: g */
    public String f102394g;

    /* renamed from: h */
    public int f102395h;

    /* renamed from: i */
    public String f102396i;

    public PackageInspector(PipelineConfiguration pipelineConfiguration) {
        super(new Sink(pipelineConfiguration));
        this.f102394g = "1";
        this.f102395h = 0;
    }

    /* renamed from: c */
    public final VersionedPackageName m64503c() {
        String str = this.f102393f;
        if (str == null) {
            return null;
        }
        try {
            return new VersionedPackageName(str, this.f102394g);
        } catch (XPathException unused) {
            return null;
        }
    }

    public String getDiagnostics() {
        return this.f102396i;
    }

    public PackageDetails getPackageDetails(File file, Configuration configuration) throws XPathException {
        try {
            ParseOptions parseOptions = new ParseOptions();
            parseOptions.setDTDValidationMode(4);
            parseOptions.setSchemaValidationMode(4);
            Sender.send(new StreamSource(file), this, new ParseOptions());
        } catch (XPathException e) {
            if (!e.getMessage().equals("#start#")) {
                throw e;
            }
        }
        VersionedPackageName m64503c = m64503c();
        if (m64503c == null) {
            return null;
        }
        PackageDetails packageDetails = new PackageDetails();
        packageDetails.nameAndVersion = m64503c;
        if (this.f102392e) {
            packageDetails.exportLocation = new StreamSource(file);
        } else {
            packageDetails.sourceLocation = new StreamSource(file);
        }
        return packageDetails;
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        int i2 = this.f102395h;
        this.f102395h = i2 + 1;
        if (i2 >= 1) {
            throw new XPathException("#start#");
        }
        this.f102392e = nodeName.hasURI(NamespaceConstant.SAXON_XSLT_EXPORT);
        if (attributeMap.get("", "name") == null) {
            this.f102396i = "Top level element " + nodeName.getStructuredQName().getEQName() + " has no @name attribute";
        } else {
            this.f102393f = attributeMap.get("", "name").getValue();
        }
        if (attributeMap.get("", "package-version") != null) {
            this.f102394g = attributeMap.get("", "package-version").getValue();
        }
        if (attributeMap.get("", "packageVersion") != null) {
            this.f102394g = attributeMap.get("", "packageVersion").getValue();
        }
        AttributeInfo attributeInfo = attributeMap.get("", "saxonVersion");
        if (attributeInfo == null || !attributeInfo.getValue().startsWith("9")) {
            return;
        }
        throw new XPathException("Saxon " + Version.getProductVersion() + " cannot load a SEF file created using version " + attributeInfo.getValue());
    }
}
