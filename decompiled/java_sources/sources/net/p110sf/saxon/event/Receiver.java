package net.p110sf.saxon.event;

import javax.xml.transform.Result;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public interface Receiver extends Result {
    default void append(Item item, Location location, int i) throws XPathException {
        throw new UnsupportedOperationException();
    }

    void characters(UnicodeString unicodeString, Location location, int i) throws XPathException;

    void close() throws XPathException;

    void comment(UnicodeString unicodeString, Location location, int i) throws XPathException;

    void endDocument() throws XPathException;

    void endElement() throws XPathException;

    PipelineConfiguration getPipelineConfiguration();

    default boolean handlesAppend() {
        return false;
    }

    void open() throws XPathException;

    void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException;

    void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration);

    void setUnparsedEntity(String str, String str2, String str3) throws XPathException;

    void startDocument(int i) throws XPathException;

    void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException;

    default boolean usesTypeAnnotations() {
        return false;
    }

    default void append(Item item) throws XPathException {
        append(item, Loc.NONE, 524288);
    }
}
