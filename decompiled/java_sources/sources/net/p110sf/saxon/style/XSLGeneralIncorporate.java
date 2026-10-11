package net.p110sf.saxon.style;

import javax.xml.transform.Source;
import net.p110sf.saxon.functions.DocumentFn;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.DocumentKey;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.style.StyleElement;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.tree.linked.DocumentImpl;
import net.p110sf.saxon.tree.linked.ElementImpl;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public abstract class XSLGeneralIncorporate extends StyleElement {

    /* renamed from: w */
    public static final /* synthetic */ boolean f101998w = false;

    /* renamed from: u */
    public String f101999u;

    /* renamed from: v */
    public DocumentImpl f102000v;

    /* renamed from: Z */
    public final boolean m64039Z(StylesheetModule stylesheetModule, Source source) {
        if (source.getSystemId() == null) {
            return false;
        }
        while (stylesheetModule != null) {
            if (DocumentKey.normalizeURI(source.getSystemId()).equals(DocumentKey.normalizeURI(stylesheetModule.getRootElement().getSystemId()))) {
                compileError("A stylesheet cannot " + getLocalPart() + " itself", this instanceof XSLInclude ? "XTSE0180" : "XTSE0210");
                return true;
            }
            stylesheetModule = stylesheetModule.getImporter();
        }
        return false;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) {
    }

    public StylesheetModule getIncludedStylesheet(StylesheetModule stylesheetModule, int i) {
        StylesheetModule stylesheetModule2;
        if (this.f101999u == null) {
            return null;
        }
        try {
            PrincipalStylesheetModule principalStylesheetModule = stylesheetModule.getPrincipalStylesheetModule();
            DocumentKey computeDocumentKey = DocumentFn.computeDocumentKey(this.f101999u, getBaseURI(), getCompilation().getPackageData(), false);
            XSLStylesheet xSLStylesheet = (XSLStylesheet) principalStylesheetModule.getStylesheetDocument(computeDocumentKey);
            if (xSLStylesheet != null) {
                stylesheetModule2 = new StylesheetModule(xSLStylesheet, i);
                stylesheetModule2.setImporter(stylesheetModule);
                if (m64039Z(stylesheetModule, stylesheetModule2.getRootElement().asActiveSource())) {
                    return null;
                }
            } else {
                ElementImpl documentElement = this.f102000v.getDocumentElement();
                if (documentElement instanceof LiteralResultElement) {
                    documentElement = ((LiteralResultElement) documentElement).makeStylesheet(false).getDocumentElement();
                }
                if (!(documentElement instanceof XSLStylesheet)) {
                    compileError((this instanceof XSLImport ? "Imported" : "Included") + " document " + this.f101999u + " is not a stylesheet", "XTSE0165");
                    return null;
                }
                xSLStylesheet = (XSLStylesheet) documentElement;
                principalStylesheetModule.putStylesheetDocument(computeDocumentKey, xSLStylesheet);
                stylesheetModule2 = new StylesheetModule(xSLStylesheet, i);
                stylesheetModule2.setImporter(stylesheetModule);
                xSLStylesheet.validate(new ComponentDeclaration(stylesheetModule2, xSLStylesheet));
                XmlProcessingIncident xmlProcessingIncident = xSLStylesheet.validationError;
                if (xmlProcessingIncident != null) {
                    if (this.reportingCircumstances == StyleElement.OnFailure.REPORT_ALWAYS) {
                        xSLStylesheet.compileError(xmlProcessingIncident);
                    } else if (xSLStylesheet.reportingCircumstances == StyleElement.OnFailure.REPORT_UNLESS_FORWARDS_COMPATIBLE) {
                        xSLStylesheet.compileError(xmlProcessingIncident);
                    }
                }
            }
            stylesheetModule2.spliceIncludes();
            stylesheetModule.setInputTypeAnnotations(xSLStylesheet.getInputTypeAnnotationsAttribute() | stylesheetModule2.getInputTypeAnnotations());
            return stylesheetModule2;
        } catch (XPathException e) {
            e.setErrorCode("XTSE0165");
            e.setIsStaticError(true);
            compileError(e);
            return null;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    public abstract boolean isImport();

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals("href")) {
                this.f101999u = Whitespace.trim(value);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (this.f101999u == null) {
            reportAbsence("href");
        }
    }

    public void setTargetDocument(DocumentImpl documentImpl) {
        this.f102000v = documentImpl;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        validateInstruction();
    }

    public void validateInstruction() {
        checkEmpty();
        checkTopLevel(isImport() ? "XTSE0190" : "XTSE0170", false);
    }
}
