package net.p110sf.saxon.serialize;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class HTML50Emitter extends HTMLEmitter {

    /* renamed from: q0 */
    public static final byte[] f101510q0;

    static {
        HTMLEmitter.setEmptyTag("area");
        HTMLEmitter.setEmptyTag(gon.f71271X);
        HTMLEmitter.setEmptyTag(gon.f71271X);
        HTMLEmitter.setEmptyTag("basefont");
        HTMLEmitter.setEmptyTag("br");
        HTMLEmitter.setEmptyTag("col");
        HTMLEmitter.setEmptyTag("embed");
        HTMLEmitter.setEmptyTag(TypedValues.AttributesType.S_FRAME);
        HTMLEmitter.setEmptyTag("hr");
        HTMLEmitter.setEmptyTag("img");
        HTMLEmitter.setEmptyTag("input");
        HTMLEmitter.setEmptyTag("isindex");
        HTMLEmitter.setEmptyTag("keygen");
        HTMLEmitter.setEmptyTag("link");
        HTMLEmitter.setEmptyTag("meta");
        HTMLEmitter.setEmptyTag(Constants.ELEMNAME_PARAMVARIABLE_STRING);
        HTMLEmitter.setEmptyTag("source");
        HTMLEmitter.setEmptyTag("track");
        HTMLEmitter.setEmptyTag("wbr");
        f101510q0 = StringConstants.bytes("<!DOCTYPE HTML>");
    }

    public HTML50Emitter() {
        this.version = 5;
    }

    @Override // net.p110sf.saxon.serialize.HTMLEmitter
    public boolean isHTMLElement(NodeName nodeName) {
        String uri = nodeName.getURI();
        return uri.equals("") || uri.equals("http://www.w3.org/1999/xhtml");
    }

    @Override // net.p110sf.saxon.serialize.HTMLEmitter, net.p110sf.saxon.serialize.XMLEmitter
    public void openDocument() throws XPathException {
        this.version = 5;
        super.openDocument();
    }

    @Override // net.p110sf.saxon.serialize.HTMLEmitter
    public boolean rejectControlCharacters() {
        return false;
    }

    @Override // net.p110sf.saxon.serialize.HTMLEmitter, net.p110sf.saxon.serialize.XMLEmitter, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        if (!this.started) {
            openDocument();
            String property = this.outputProperties.getProperty("doctype-system");
            String property2 = this.outputProperties.getProperty("doctype-public");
            if ("".equals(property)) {
                property = null;
            }
            if ("".equals(property2)) {
                property2 = null;
            }
            writeDocType(nodeName, "html", property, property2);
            this.started = true;
        }
        super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }

    @Override // net.p110sf.saxon.serialize.HTMLEmitter, net.p110sf.saxon.serialize.XMLEmitter
    public void writeDocType(NodeName nodeName, String str, String str2, String str3) throws XPathException {
        try {
            if (str2 != null || str3 != null) {
                super.writeDocType(nodeName, str, str2, str3);
            } else if (nodeName.getLocalPart().equalsIgnoreCase("html")) {
                this.writer.writeAscii(f101510q0);
            }
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.serialize.XMLEmitter
    public boolean writeDocTypeWithNullSystemId() {
        return true;
    }
}
