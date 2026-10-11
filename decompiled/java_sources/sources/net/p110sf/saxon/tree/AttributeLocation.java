package net.p110sf.saxon.tree;

import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.tree.util.Navigator;

/* loaded from: classes11.dex */
public class AttributeLocation implements Location {

    /* renamed from: e */
    public final String f102420e;

    /* renamed from: f */
    public final int f102421f;

    /* renamed from: g */
    public final int f102422g;

    /* renamed from: h */
    public final StructuredQName f102423h;

    /* renamed from: i */
    public final StructuredQName f102424i;

    /* renamed from: j */
    public NodeInfo f102425j;

    public AttributeLocation(NodeInfo nodeInfo, StructuredQName structuredQName) {
        this.f102420e = nodeInfo.getSystemId();
        this.f102421f = nodeInfo.getLineNumber();
        this.f102422g = nodeInfo.getColumnNumber();
        this.f102423h = Navigator.getNodeName(nodeInfo);
        this.f102424i = structuredQName;
        if (nodeInfo.getConfiguration().getBooleanProperty(Feature.RETAIN_NODE_FOR_DIAGNOSTICS)) {
            this.f102425j = nodeInfo;
        }
    }

    public StructuredQName getAttributeName() {
        return this.f102424i;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return this.f102422g;
    }

    public StructuredQName getElementName() {
        return this.f102423h;
    }

    public NodeInfo getElementNode() {
        return this.f102425j;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.f102421f;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getPublicId() {
        return null;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.f102420e;
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    public void setElementNode(NodeInfo nodeInfo) {
        this.f102425j = nodeInfo;
    }

    public AttributeLocation(StructuredQName structuredQName, StructuredQName structuredQName2, Location location) {
        this.f102420e = location.getSystemId();
        this.f102421f = location.getLineNumber();
        this.f102422g = location.getColumnNumber();
        this.f102423h = structuredQName;
        this.f102424i = structuredQName2;
    }
}
