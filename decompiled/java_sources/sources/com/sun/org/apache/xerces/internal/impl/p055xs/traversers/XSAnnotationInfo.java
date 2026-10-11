package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p055xs.opti.ElementImpl;
import org.w3c.dom.Element;

/* loaded from: classes10.dex */
final class XSAnnotationInfo {
    String fAnnotation;
    int fCharOffset;
    int fColumn;
    int fLine;
    XSAnnotationInfo next;

    public XSAnnotationInfo(String str, int i, int i2, int i3) {
        this.fAnnotation = str;
        this.fLine = i;
        this.fColumn = i2;
        this.fCharOffset = i3;
    }

    public XSAnnotationInfo(String str, Element element) {
        this.fAnnotation = str;
        if (element instanceof ElementImpl) {
            ElementImpl elementImpl = (ElementImpl) element;
            this.fLine = elementImpl.getLineNumber();
            this.fColumn = elementImpl.getColumnNumber();
            this.fCharOffset = elementImpl.getCharacterOffset();
            return;
        }
        this.fLine = -1;
        this.fColumn = -1;
        this.fCharOffset = -1;
    }
}
