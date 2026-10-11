package com.sun.org.apache.xerces.internal.jaxp.validation;

import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class WrappedSAXException extends RuntimeException {
    public final SAXException exception;

    public WrappedSAXException(SAXException sAXException) {
        this.exception = sAXException;
    }
}
