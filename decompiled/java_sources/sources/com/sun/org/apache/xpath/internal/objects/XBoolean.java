package com.sun.org.apache.xpath.internal.objects;

import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class XBoolean extends XObject {
    static final long serialVersionUID = -2964933058866100881L;
    private final boolean m_val;
    public static final XBoolean S_TRUE = new XBooleanStatic(true);
    public static final XBoolean S_FALSE = new XBooleanStatic(false);

    public XBoolean(boolean z) {
        this.m_val = z;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public boolean bool() {
        return this.m_val;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public boolean equals(XObject xObject) {
        if (xObject.getType() == 4) {
            return xObject.equals((XObject) this);
        }
        try {
            return this.m_val == xObject.bool();
        } catch (TransformerException e) {
            throw new WrappedRuntimeException(e);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public int getType() {
        return 1;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public String getTypeString() {
        return "#BOOLEAN";
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public double num() {
        return this.m_val ? 1.0d : 0.0d;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public Object object() {
        if (this.m_obj == null) {
            this.m_obj = new Boolean(this.m_val);
        }
        return this.m_obj;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public String str() {
        return this.m_val ? "true" : "false";
    }

    public XBoolean(Boolean bool) {
        this.m_val = bool.booleanValue();
        this.m_obj = bool;
    }
}
