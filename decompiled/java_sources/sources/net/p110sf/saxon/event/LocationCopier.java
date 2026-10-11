package net.p110sf.saxon.event;

import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Location;

/* loaded from: classes11.dex */
public class LocationCopier implements CopyInformee {

    /* renamed from: a */
    public final boolean f98996a;

    /* renamed from: b */
    public final String f98997b;

    public LocationCopier(boolean z, String str) {
        this.f98996a = z;
        this.f98997b = str;
    }

    public String getSystemId() {
        return this.f98997b;
    }

    @Override // net.p110sf.saxon.event.CopyInformee
    public Location notifyElementNode(NodeInfo nodeInfo) {
        return new Loc(this.f98996a ? nodeInfo.getSystemId() : nodeInfo.getBaseURI(), nodeInfo.getLineNumber(), nodeInfo.getColumnNumber());
    }
}
