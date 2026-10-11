package com.sun.org.apache.xalan.internal.templates;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xpath.internal.VariableStack;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class XUnresolvedVariable extends XObject {
    static final long serialVersionUID = -256779804767950188L;
    private transient int m_context;
    private transient boolean m_doneEval;
    private boolean m_isGlobal;
    private transient TransformerImpl m_transformer;
    private transient int m_varStackContext;
    private transient int m_varStackPos;

    public XUnresolvedVariable(ElemVariable elemVariable, int i, TransformerImpl transformerImpl, int i2, int i3, boolean z) {
        super(elemVariable);
        this.m_doneEval = true;
        this.m_context = i;
        this.m_transformer = transformerImpl;
        this.m_varStackPos = i2;
        this.m_varStackContext = i3;
        this.m_isGlobal = z;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        if (!this.m_doneEval) {
            this.m_transformer.getMsgMgr().error(xPathContext.getSAXLocator(), "ER_REFERENCING_ITSELF", new Object[]{((ElemVariable) object()).getName().getLocalName()});
        }
        VariableStack varStack = xPathContext.getVarStack();
        int stackFrame = varStack.getStackFrame();
        ElemVariable elemVariable = (ElemVariable) this.m_obj;
        try {
            this.m_doneEval = false;
            int i = elemVariable.m_frameSize;
            if (-1 != i) {
                varStack.link(i);
            }
            XObject value = elemVariable.getValue(this.m_transformer, this.m_context);
            this.m_doneEval = true;
            return value;
        } finally {
            if (-1 != elemVariable.m_frameSize) {
                varStack.unlink(stackFrame);
            }
        }
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public int getType() {
        return 600;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject
    public String getTypeString() {
        return "XUnresolvedVariable (" + object().getClass().getName() + MotionUtils.f31762d;
    }

    public void setVarStackContext(int i) {
        this.m_varStackContext = i;
    }

    public void setVarStackPos(int i) {
        this.m_varStackPos = i;
    }
}
