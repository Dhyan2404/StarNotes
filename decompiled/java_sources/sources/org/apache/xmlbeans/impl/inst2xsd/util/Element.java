package org.apache.xmlbeans.impl.inst2xsd.util;

import javax.xml.namespace.QName;

/* loaded from: classes13.dex */
public class Element {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int UNBOUNDED = -1;
    private QName _name = null;
    private Element _ref = null;
    private boolean _isGlobal = false;
    private int _minOccurs = 1;
    private int _maxOccurs = 1;
    private boolean _isNillable = false;
    private Type _type = null;
    private String _comment = null;

    public String getComment() {
        return this._comment;
    }

    public int getMaxOccurs() {
        return this._maxOccurs;
    }

    public int getMinOccurs() {
        return this._minOccurs;
    }

    public QName getName() {
        return this._name;
    }

    public Element getRef() {
        return this._ref;
    }

    public Type getType() {
        return isRef() ? getRef().getType() : this._type;
    }

    public boolean isGlobal() {
        return this._isGlobal;
    }

    public boolean isNillable() {
        return this._isNillable;
    }

    public boolean isRef() {
        return this._ref != null;
    }

    public void setComment(String str) {
        this._comment = str;
    }

    public void setGlobal(boolean z) {
        this._isGlobal = z;
        this._minOccurs = 1;
        this._maxOccurs = 1;
    }

    public void setMaxOccurs(int i) {
        this._maxOccurs = i;
    }

    public void setMinOccurs(int i) {
        this._minOccurs = i;
    }

    public void setName(QName qName) {
        this._name = qName;
    }

    public void setNillable(boolean z) {
        this._isNillable = z;
    }

    public void setRef(Element element) {
        this._ref = element;
        this._type = null;
    }

    public void setType(Type type) {
        this._type = type;
    }

    public String toString() {
        String qName;
        StringBuilder sb = new StringBuilder();
        sb.append("\n  Element{ _name = ");
        sb.append(this._name);
        sb.append(", _ref = ");
        sb.append(this._ref != null);
        sb.append(", _isGlobal = ");
        sb.append(this._isGlobal);
        sb.append(", _minOccurs = ");
        sb.append(this._minOccurs);
        sb.append(", _maxOccurs = ");
        sb.append(this._maxOccurs);
        sb.append(", _isNillable = ");
        sb.append(this._isNillable);
        sb.append(", _comment = ");
        sb.append(this._comment);
        sb.append(",\n    _type = ");
        Type type = this._type;
        if (type == null) {
            qName = "null";
        } else {
            boolean isGlobal = type.isGlobal();
            Type type2 = this._type;
            qName = isGlobal ? type2.getName().toString() : type2.toString();
        }
        sb.append(qName);
        sb.append("\n  }");
        return sb.toString();
    }
}
