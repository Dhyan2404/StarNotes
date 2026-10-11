package net.p110sf.saxon.serialize;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.query.XQueryParser;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class HTML40Emitter extends HTMLEmitter {
    static {
        HTMLEmitter.setEmptyTag("area");
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
        HTMLEmitter.setEmptyTag("link");
        HTMLEmitter.setEmptyTag("meta");
        HTMLEmitter.setEmptyTag(Constants.ELEMNAME_PARAMVARIABLE_STRING);
    }

    @Override // net.p110sf.saxon.serialize.HTMLEmitter
    public boolean isHTMLElement(NodeName nodeName) {
        return nodeName.getURI().equals("");
    }

    @Override // net.p110sf.saxon.serialize.HTMLEmitter, net.p110sf.saxon.serialize.XMLEmitter
    public void openDocument() throws XPathException {
        String property = this.outputProperties.getProperty(SaxonOutputKeys.HTML_VERSION);
        if (property == null) {
            property = this.outputProperties.getProperty("version");
        }
        if (property != null) {
            if (!property.equals(XQueryParser.XQUERY40) && !property.equals("4.01")) {
                XPathException xPathException = new XPathException("Unsupported HTML version: " + property);
                xPathException.setErrorCode("SESU0013");
                throw xPathException;
            }
            this.version = 4;
        }
        super.openDocument();
    }

    @Override // net.p110sf.saxon.serialize.HTMLEmitter
    public boolean rejectControlCharacters() {
        return true;
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
            if (property != null || property2 != null) {
                writeDocType(null, "html", property, property2);
            }
            this.started = true;
        }
        super.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
