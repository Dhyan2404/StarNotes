package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import com.sun.org.apache.xalan.internal.templates.WhiteSpaceInfo;
import java.util.Vector;

/* loaded from: classes10.dex */
public class WhitespaceInfoPaths extends WhiteSpaceInfo {
    static final long serialVersionUID = 5954766719577516723L;
    private Vector m_elements;

    public WhitespaceInfoPaths(Stylesheet stylesheet) {
        super(stylesheet);
        setStylesheet(stylesheet);
    }

    public void clearElements() {
        this.m_elements = null;
    }

    public Vector getElements() {
        return this.m_elements;
    }

    public void setElements(Vector vector) {
        this.m_elements = vector;
    }
}
