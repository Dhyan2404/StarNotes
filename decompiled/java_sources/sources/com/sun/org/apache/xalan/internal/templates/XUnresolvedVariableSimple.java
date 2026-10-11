package com.sun.org.apache.xalan.internal.templates;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class XUnresolvedVariableSimple extends XObject {
    static final long serialVersionUID = -1224413807443958985L;

    public XUnresolvedVariableSimple(ElemVariable elemVariable) {
        super(elemVariable);
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        XObject execute = ((ElemVariable) this.m_obj).getSelect().getExpression().execute(xPathContext);
        execute.allowDetachToRelease(false);
        return execute;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public int getType() {
        return 600;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public String getTypeString() {
        return "XUnresolvedVariableSimple (" + object().getClass().getName() + MotionUtils.f31762d;
    }
}
