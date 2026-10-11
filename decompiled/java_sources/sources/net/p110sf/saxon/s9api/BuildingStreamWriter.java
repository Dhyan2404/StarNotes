package net.p110sf.saxon.s9api;

import javax.xml.stream.XMLStreamWriter;

/* loaded from: classes11.dex */
public interface BuildingStreamWriter extends XMLStreamWriter {
    XdmNode getDocumentNode() throws SaxonApiException;

    boolean isCheckValues();

    void setCheckValues(boolean z);
}
