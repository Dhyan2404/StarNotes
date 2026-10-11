package net.p110sf.saxon.s9api;

import org.xml.sax.ContentHandler;

/* loaded from: classes11.dex */
public interface BuildingContentHandler extends ContentHandler {
    XdmNode getDocumentNode() throws SaxonApiException;
}
