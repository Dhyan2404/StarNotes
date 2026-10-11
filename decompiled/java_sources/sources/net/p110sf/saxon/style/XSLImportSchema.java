package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.LicenseException;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLImportSchema extends StyleElement {
    @Override // net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) throws XPathException {
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        String str = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String value = attributeInfo.getValue();
            String displayName = nodeName.getDisplayName();
            if (!displayName.equals("schema-location")) {
                if (displayName.equals(Constants.ATTRNAME_NAMESPACE)) {
                    str = Whitespace.trim(value);
                } else {
                    checkUnknownAttribute(nodeName);
                }
            }
        }
        if ("".equals(str)) {
            compileError("The zero-length string is not a valid namespace URI. For a schema with no namespace, omit the namespace attribute");
        }
    }

    public void readSchema() throws XPathException {
        try {
            String trim = Whitespace.trim(getAttributeValue("", "schema-location"));
            String trim2 = Whitespace.trim(getAttributeValue("", Constants.ATTRNAME_NAMESPACE));
            String trim3 = trim2 == null ? "" : trim2.trim();
            Configuration configuration = getConfiguration();
            try {
                configuration.checkLicensedFeature(2, "xsl:import-schema", getPackageData().getLocalLicenseId());
                NodeInfo nodeInfo = null;
                for (NodeInfo nodeInfo2 : children()) {
                    if (nodeInfo != null) {
                        compileError(getDisplayName() + " must not have more than one child element");
                    }
                    if (nodeInfo2.getFingerprint() != 617) {
                        compileError("The only child element permitted for " + getDisplayName() + " is xs:schema");
                    }
                    if (trim != null) {
                        compileError("The schema-location attribute must be absent if an inline schema is present", "XTSE0215");
                    }
                    if (trim3.isEmpty() && (trim3 = nodeInfo2.getAttributeValue("", "targetNamespace")) == null) {
                        trim3 = "";
                    }
                    trim3 = configuration.readInlineSchema(nodeInfo2, trim3, getCompilation().getCompilerInfo().getErrorReporter());
                    getPrincipalStylesheetModule().addImportedSchema(trim3);
                    nodeInfo = nodeInfo2;
                }
                if (nodeInfo != null) {
                    return;
                }
                if (!trim3.equals("http://www.w3.org/XML/1998/namespace") && !trim3.equals("http://www.w3.org/2005/xpath-functions") && !trim3.equals("http://www.w3.org/2001/XMLSchema-instance")) {
                    boolean isSchemaAvailable = configuration.isSchemaAvailable(trim3);
                    if (trim == null && !isSchemaAvailable) {
                        compileWarning("No schema for this namespace is known, and no schema-location was supplied, so no schema has been imported", SaxonErrorCode.SXWN9006);
                        return;
                    }
                    if (isSchemaAvailable && !configuration.getBooleanProperty(Feature.MULTIPLE_SCHEMA_IMPORTS) && trim != null) {
                        compileWarning("The schema document at " + trim + " is ignored because a schema for this namespace is already loaded", SaxonErrorCode.SXWN9006);
                    }
                    if (!isSchemaAvailable) {
                        PipelineConfiguration makePipelineConfiguration = configuration.makePipelineConfiguration();
                        makePipelineConfiguration.setErrorReporter(getCompilation().getCompilerInfo().getErrorReporter());
                        trim3 = configuration.readSchema(makePipelineConfiguration, getBaseURI(), trim, trim3);
                    }
                    getPrincipalStylesheetModule().addImportedSchema(trim3);
                    return;
                }
                configuration.addSchemaForBuiltInNamespace(trim3);
                getPrincipalStylesheetModule().addImportedSchema(trim3);
            } catch (LicenseException e) {
                XPathException xPathException = new XPathException(e);
                xPathException.setErrorCode("XTSE1650");
                xPathException.setLocator(this);
                throw xPathException;
            }
        } catch (SchemaException e2) {
            compileError(e2.getMessage(), e2.getErrorCodeLocalPart() == null ? "XTSE0220" : e2.getErrorCodeLocalPart());
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        checkTopLevel("XTSE0010", false);
    }
}
