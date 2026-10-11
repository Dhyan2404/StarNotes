package com.sun.org.apache.xerces.internal.p056xs;

import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.ls.LSInput;

/* loaded from: classes10.dex */
public interface XSLoader {
    DOMConfiguration getConfig();

    XSModel load(LSInput lSInput);

    XSModel loadInputList(LSInputList lSInputList);

    XSModel loadURI(String str);

    XSModel loadURIList(StringList stringList);
}
