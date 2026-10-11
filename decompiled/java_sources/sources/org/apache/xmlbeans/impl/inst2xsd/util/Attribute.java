package org.apache.xmlbeans.impl.inst2xsd.util;

import javax.xml.namespace.QName;

/* loaded from: classes13.dex */
public class Attribute {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private QName _name;
    private Type _type;
    private Attribute _ref = null;
    private boolean _isGlobal = false;
    private boolean _isOptional = false;

    public QName getName() {
        return this._name;
    }

    public Attribute getRef() {
        return this._ref;
    }

    public Type getType() {
        return isRef() ? getRef().getType() : this._type;
    }

    public boolean isGlobal() {
        return this._isGlobal;
    }

    public boolean isOptional() {
        return this._isOptional;
    }

    public boolean isRef() {
        return this._ref != null;
    }

    public void setGlobal(boolean z) {
        this._isGlobal = z;
    }

    public void setName(QName qName) {
        this._name = qName;
    }

    public void setOptional(boolean z) {
        this._isOptional = z;
    }

    public void setRef(Attribute attribute) {
        this._ref = attribute;
        this._type = null;
    }

    public void setType(Type type) {
        this._type = type;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("\n    Attribute{_name=");
        sb.append(this._name);
        sb.append(", _type=");
        sb.append(this._type);
        sb.append(", _ref=");
        sb.append(this._ref != null);
        sb.append(", _isGlobal=");
        sb.append(this._isGlobal);
        sb.append(", _isOptional=");
        sb.append(this._isOptional);
        sb.append("}");
        return sb.toString();
    }
}
