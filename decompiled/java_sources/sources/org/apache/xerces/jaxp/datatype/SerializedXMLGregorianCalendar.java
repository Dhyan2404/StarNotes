package org.apache.xerces.jaxp.datatype;

import java.io.ObjectStreamException;
import java.io.Serializable;

/* loaded from: classes13.dex */
final class SerializedXMLGregorianCalendar implements Serializable {
    private static final long serialVersionUID = -7752272381890705397L;
    private final String lexicalValue;

    public SerializedXMLGregorianCalendar(String str) {
        this.lexicalValue = str;
    }

    private Object readResolve() throws ObjectStreamException {
        return new DatatypeFactoryImpl().newXMLGregorianCalendar(this.lexicalValue);
    }
}
