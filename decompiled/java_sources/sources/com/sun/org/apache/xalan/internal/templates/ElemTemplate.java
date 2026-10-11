package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import java.util.Vector;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemTemplate extends ElemTemplateElement {
    static final long serialVersionUID = -5283056789965384058L;
    private int[] m_argsQNameIDs;
    public int m_frameSize;
    int m_inArgsSize;
    private QName m_mode;
    private String m_publicId;
    private Stylesheet m_stylesheet;
    private String m_systemId;
    private XPath m_matchPattern = null;
    private QName m_name = null;
    private double m_priority = Double.NEGATIVE_INFINITY;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        StylesheetRoot.ComposeState composeState = stylesheetRoot.getComposeState();
        Vector variableNames = composeState.getVariableNames();
        XPath xPath = this.m_matchPattern;
        if (xPath != null) {
            xPath.fixupVariables(variableNames, stylesheetRoot.getComposeState().getGlobalsSize());
        }
        composeState.resetStackFrameSize();
        this.m_inArgsSize = 0;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void endCompose(StylesheetRoot stylesheetRoot) throws TransformerException {
        StylesheetRoot.ComposeState composeState = stylesheetRoot.getComposeState();
        super.endCompose(stylesheetRoot);
        this.m_frameSize = composeState.getFrameSize();
        composeState.resetStackFrameSize();
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        XPathContext xPathContext = transformerImpl.getXPathContext();
        transformerImpl.getStackGuard().checkForInfinateLoop();
        xPathContext.pushRTFContext();
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        transformerImpl.executeChildTemplates((ElemTemplateElement) this, true);
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
        xPathContext.popRTFContext();
    }

    public XPath getMatch() {
        return this.m_matchPattern;
    }

    public QName getMode() {
        return this.m_mode;
    }

    public QName getName() {
        return this.m_name;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return "template";
    }

    public double getPriority() {
        return this.m_priority;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, javax.xml.transform.SourceLocator
    public String getPublicId() {
        return this.m_publicId;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public Stylesheet getStylesheet() {
        return this.m_stylesheet;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public StylesheetComposed getStylesheetComposed() {
        return this.m_stylesheet.getStylesheetComposed();
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public StylesheetRoot getStylesheetRoot() {
        return this.m_stylesheet.getStylesheetRoot();
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.m_systemId;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 19;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void recompose(StylesheetRoot stylesheetRoot) {
        stylesheetRoot.recomposeTemplates(this);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void setLocaterInfo(SourceLocator sourceLocator) {
        this.m_publicId = sourceLocator.getPublicId();
        this.m_systemId = sourceLocator.getSystemId();
        super.setLocaterInfo(sourceLocator);
    }

    public void setMatch(XPath xPath) {
        this.m_matchPattern = xPath;
    }

    public void setMode(QName qName) {
        this.m_mode = qName;
    }

    public void setName(QName qName) {
        this.m_name = qName;
    }

    public void setPriority(double d) {
        this.m_priority = d;
    }

    public void setStylesheet(Stylesheet stylesheet) {
        this.m_stylesheet = stylesheet;
    }
}
