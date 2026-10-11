package net.p110sf.saxon.s9api;

/* loaded from: classes11.dex */
public class Message {

    /* renamed from: a */
    public final XdmNode f101349a;

    /* renamed from: b */
    public final QName f101350b;

    /* renamed from: c */
    public final boolean f101351c;

    /* renamed from: d */
    public final Location f101352d;

    public Message(XdmNode xdmNode, QName qName, boolean z, Location location) {
        this.f101349a = xdmNode;
        this.f101350b = qName;
        this.f101351c = z;
        this.f101352d = location;
    }

    public XdmNode getContent() {
        return this.f101349a;
    }

    public QName getErrorCode() {
        return this.f101350b;
    }

    public Location getLocation() {
        return this.f101352d;
    }

    public String getStringValue() {
        return this.f101349a.getStringValue();
    }

    public boolean isTerminate() {
        return this.f101351c;
    }

    public String toString() {
        return this.f101349a.toString();
    }
}
