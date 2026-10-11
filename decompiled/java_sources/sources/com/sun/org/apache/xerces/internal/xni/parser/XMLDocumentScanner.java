package com.sun.org.apache.xerces.internal.xni.parser;

import com.sun.org.apache.xerces.internal.xni.XNIException;
import java.io.IOException;

/* loaded from: classes10.dex */
public interface XMLDocumentScanner extends XMLDocumentSource {
    int next() throws XNIException, IOException;

    boolean scanDocument(boolean z) throws IOException, XNIException;

    void setInputSource(XMLInputSource xMLInputSource) throws IOException;
}
