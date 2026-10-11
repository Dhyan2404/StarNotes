package org.xml.sax;

import java.io.IOException;

/* loaded from: classes16.dex */
public interface EntityResolver {
    InputSource resolveEntity(String str, String str2) throws SAXException, IOException;
}
