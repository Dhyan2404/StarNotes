package com.sun.org.apache.xerces.internal.xni.parser;

import com.sun.org.apache.xerces.internal.xni.XNIException;
import java.io.IOException;

/* loaded from: classes10.dex */
public interface XMLPullParserConfiguration extends XMLParserConfiguration {
    void cleanup();

    boolean parse(boolean z) throws XNIException, IOException;

    void setInputSource(XMLInputSource xMLInputSource) throws XMLConfigurationException, IOException;
}
