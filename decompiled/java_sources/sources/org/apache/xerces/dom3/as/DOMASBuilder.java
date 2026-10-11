package org.apache.xerces.dom3.as;

import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSParser;

/* loaded from: classes13.dex */
public interface DOMASBuilder extends LSParser {
    ASModel getAbstractSchema();

    ASModel parseASInputSource(LSInput lSInput) throws DOMASException, Exception;

    ASModel parseASURI(String str) throws DOMASException, Exception;

    void setAbstractSchema(ASModel aSModel);
}
