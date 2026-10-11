package org.apache.xerces.p118xs;

import org.w3c.dom.ls.LSInput;

/* loaded from: classes13.dex */
public interface XSImplementation {
    LSInputList createLSInputList(LSInput[] lSInputArr);

    StringList createStringList(String[] strArr);

    XSLoader createXSLoader(StringList stringList) throws XSException;

    StringList getRecognizedVersions();
}
