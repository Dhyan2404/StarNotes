package org.apache.xerces.p118xs;

import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.ls.LSInput;

/* loaded from: classes13.dex */
public interface XSLoader {
    DOMConfiguration getConfig();

    XSModel load(LSInput lSInput);

    XSModel loadInputList(LSInputList lSInputList);

    XSModel loadURI(String str);

    XSModel loadURIList(StringList stringList);
}
