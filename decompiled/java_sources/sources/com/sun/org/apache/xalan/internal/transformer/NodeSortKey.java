package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xpath.internal.XPath;
import java.text.Collator;
import java.util.Locale;
import javax.xml.transform.TransformerException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class NodeSortKey {
    boolean m_caseOrderUpper;
    Collator m_col;
    boolean m_descending;
    Locale m_locale;
    PrefixResolver m_namespaceContext;
    TransformerImpl m_processor;
    XPath m_selectPat;
    boolean m_treatAsNumbers;

    public NodeSortKey(TransformerImpl transformerImpl, XPath xPath, boolean z, boolean z2, String str, boolean z3, PrefixResolver prefixResolver) throws TransformerException {
        this.m_processor = transformerImpl;
        this.m_namespaceContext = prefixResolver;
        this.m_selectPat = xPath;
        this.m_treatAsNumbers = z;
        this.m_descending = z2;
        this.m_caseOrderUpper = z3;
        if (str == null || z) {
            this.m_locale = Locale.getDefault();
        } else {
            this.m_locale = new Locale(str.toLowerCase(), Locale.getDefault().getCountry());
        }
        Collator collator = Collator.getInstance(this.m_locale);
        this.m_col = collator;
        if (collator == null) {
            this.m_processor.getMsgMgr().warn(null, "WG_CANNOT_FIND_COLLATOR", new Object[]{str});
            this.m_col = Collator.getInstance();
        }
    }
}
