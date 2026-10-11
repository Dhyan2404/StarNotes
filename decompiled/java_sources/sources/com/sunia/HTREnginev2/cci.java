package com.sunia.HTREnginev2;

import javax.imageio.metadata.IIOMetadataNode;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;

/* loaded from: classes5.dex */
public class cci extends IIOMetadataNode implements Attr {

    /* renamed from: e */
    public Element f66703e;

    /* renamed from: f */
    public String f66704f;

    /* renamed from: g */
    public String f66705g;

    public cci(Element element, String str, String str2) {
        this.f66703e = element;
        this.f66704f = str;
        this.f66705g = str2;
    }

    /* renamed from: d */
    public void m53427d(Element element) {
        this.f66703e = element;
    }

    @Override // org.w3c.dom.Attr
    public String getName() {
        return this.f66704f;
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public String getNodeName() {
        return this.f66704f;
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 2;
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public String getNodeValue() {
        return this.f66705g;
    }

    @Override // org.w3c.dom.Attr
    public Element getOwnerElement() {
        return this.f66703e;
    }

    @Override // org.w3c.dom.Attr
    public boolean getSpecified() {
        return true;
    }

    @Override // org.w3c.dom.Attr
    public String getValue() {
        return this.f66705g;
    }

    @Override // org.w3c.dom.Attr
    public boolean isId() {
        return false;
    }

    @Override // javax.imageio.metadata.IIOMetadataNode, org.w3c.dom.Node
    public void setNodeValue(String str) {
        this.f66705g = str;
    }

    @Override // org.w3c.dom.Attr
    public void setValue(String str) {
        this.f66705g = str;
    }
}
