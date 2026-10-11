package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xpath.internal.XPath;

/* loaded from: classes10.dex */
public class WhiteSpaceInfo extends ElemTemplate {
    static final long serialVersionUID = 6389208261999943836L;
    private boolean m_shouldStripSpace;

    public WhiteSpaceInfo(Stylesheet stylesheet) {
        setStylesheet(stylesheet);
    }

    public boolean getShouldStripSpace() {
        return this.m_shouldStripSpace;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplate, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void recompose(StylesheetRoot stylesheetRoot) {
        stylesheetRoot.recomposeWhiteSpaceInfo(this);
    }

    public WhiteSpaceInfo(XPath xPath, boolean z, Stylesheet stylesheet) {
        this.m_shouldStripSpace = z;
        setMatch(xPath);
        setStylesheet(stylesheet);
    }
}
