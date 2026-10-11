package org.xml.sax;

/* loaded from: classes16.dex */
public interface XMLFilter extends XMLReader {
    XMLReader getParent();

    void setParent(XMLReader xMLReader);
}
