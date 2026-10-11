package net.p110sf.saxon.s9api;

import net.p110sf.saxon.value.AnyExternalObject;
import net.p110sf.saxon.value.ObjectValue;

/* loaded from: classes11.dex */
public class XdmExternalObject extends XdmItem {
    public XdmExternalObject(Object obj) {
        super(obj instanceof AnyExternalObject ? (AnyExternalObject) obj : new ObjectValue(obj));
    }

    public boolean equals(Object obj) {
        return (obj instanceof XdmExternalObject) && getUnderlyingValue().equals(((XdmExternalObject) obj).getUnderlyingValue());
    }

    public Object getExternalObject() {
        return ((AnyExternalObject) getUnderlyingValue()).getWrappedObject();
    }

    public int hashCode() {
        return getUnderlyingValue().hashCode();
    }

    @Override // net.p110sf.saxon.s9api.XdmValue
    public String toString() {
        return getExternalObject().toString();
    }
}
