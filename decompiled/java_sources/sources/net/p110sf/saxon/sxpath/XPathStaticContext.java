package net.p110sf.saxon.sxpath;

import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.value.QNameValue;

/* loaded from: classes11.dex */
public interface XPathStaticContext extends StaticContext {
    XPathVariable declareVariable(String str, String str2);

    XPathVariable declareVariable(QNameValue qNameValue);

    SlotManager getStackFrameMap();

    boolean isContextItemParentless();

    void setDefaultElementNamespace(String str);

    void setNamespaceResolver(NamespaceResolver namespaceResolver);
}
