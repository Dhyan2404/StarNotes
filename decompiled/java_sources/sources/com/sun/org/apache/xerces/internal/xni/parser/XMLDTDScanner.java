package com.sun.org.apache.xerces.internal.xni.parser;

import com.sun.org.apache.xerces.internal.xni.XNIException;
import java.io.IOException;

/* loaded from: classes10.dex */
public interface XMLDTDScanner extends XMLDTDSource, XMLDTDContentModelSource {
    boolean scanDTDExternalSubset(boolean z) throws IOException, XNIException;

    boolean scanDTDInternalSubset(boolean z, boolean z2, boolean z3) throws IOException, XNIException;

    void setInputSource(XMLInputSource xMLInputSource) throws IOException;
}
