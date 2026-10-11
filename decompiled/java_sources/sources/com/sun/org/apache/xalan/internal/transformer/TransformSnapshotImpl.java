package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.serializer.NamespaceMappings;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xml.internal.utils.BoolStack;
import com.sun.org.apache.xml.internal.utils.IntStack;
import com.sun.org.apache.xml.internal.utils.NodeVector;
import com.sun.org.apache.xml.internal.utils.ObjectStack;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xpath.internal.VariableStack;
import com.sun.org.apache.xpath.internal.XPathContext;
import java.util.Stack;

/* loaded from: classes10.dex */
class TransformSnapshotImpl implements TransformSnapshot {
    private Stack m_attrSetStack;
    private Stack m_axesIteratorStack;
    private DTMIterator m_contextNodeList;
    private Stack m_contextNodeLists;
    private CountersTable m_countersTable;
    private IntStack m_currentExpressionNodes;
    private NodeVector m_currentMatchNodes;
    private Stack m_currentMatchTemplates;
    private IntStack m_currentNodes;
    private ObjectStack m_currentTemplateElements;
    private BoolStack m_currentTemplateRuleIsNull;
    boolean m_nsContextPushed;
    private NamespaceMappings m_nsSupport;
    private VariableStack m_variableStacks;

    public TransformSnapshotImpl(TransformerImpl transformerImpl) {
        try {
            this.m_nsSupport = (NamespaceMappings) transformerImpl.getResultTreeHandler().getNamespaceMappings().clone();
            XPathContext xPathContext = transformerImpl.getXPathContext();
            this.m_variableStacks = (VariableStack) xPathContext.getVarStack().clone();
            this.m_currentNodes = (IntStack) xPathContext.getCurrentNodeStack().clone();
            this.m_currentExpressionNodes = (IntStack) xPathContext.getCurrentExpressionNodeStack().clone();
            Stack stack = (Stack) xPathContext.getContextNodeListsStack().clone();
            this.m_contextNodeLists = stack;
            if (!stack.empty()) {
                this.m_contextNodeList = (DTMIterator) xPathContext.getContextNodeList().clone();
            }
            this.m_axesIteratorStack = (Stack) xPathContext.getAxesIteratorStackStacks().clone();
            this.m_currentTemplateRuleIsNull = (BoolStack) transformerImpl.m_currentTemplateRuleIsNull.clone();
            this.m_currentTemplateElements = (ObjectStack) transformerImpl.m_currentTemplateElements.clone();
            this.m_currentMatchTemplates = (Stack) transformerImpl.m_currentMatchTemplates.clone();
            this.m_currentMatchNodes = (NodeVector) transformerImpl.m_currentMatchedNodes.clone();
            this.m_countersTable = (CountersTable) transformerImpl.getCountersTable().clone();
            Stack stack2 = transformerImpl.m_attrSetStack;
            if (stack2 != null) {
                this.m_attrSetStack = (Stack) stack2.clone();
            }
        } catch (CloneNotSupportedException e) {
            throw new WrappedRuntimeException(e);
        }
    }

    public void apply(TransformerImpl transformerImpl) {
        try {
            SerializationHandler resultTreeHandler = transformerImpl.getResultTreeHandler();
            if (resultTreeHandler != null) {
                resultTreeHandler.setNamespaceMappings((NamespaceMappings) this.m_nsSupport.clone());
            }
            XPathContext xPathContext = transformerImpl.getXPathContext();
            xPathContext.setVarStack((VariableStack) this.m_variableStacks.clone());
            xPathContext.setCurrentNodeStack((IntStack) this.m_currentNodes.clone());
            xPathContext.setCurrentExpressionNodeStack((IntStack) this.m_currentExpressionNodes.clone());
            xPathContext.setContextNodeListsStack((Stack) this.m_contextNodeLists.clone());
            DTMIterator dTMIterator = this.m_contextNodeList;
            if (dTMIterator != null) {
                xPathContext.pushContextNodeList((DTMIterator) dTMIterator.clone());
            }
            xPathContext.setAxesIteratorStackStacks((Stack) this.m_axesIteratorStack.clone());
            transformerImpl.m_currentTemplateRuleIsNull = (BoolStack) this.m_currentTemplateRuleIsNull.clone();
            transformerImpl.m_currentTemplateElements = (ObjectStack) this.m_currentTemplateElements.clone();
            transformerImpl.m_currentMatchTemplates = (Stack) this.m_currentMatchTemplates.clone();
            transformerImpl.m_currentMatchedNodes = (NodeVector) this.m_currentMatchNodes.clone();
            transformerImpl.m_countersTable = (CountersTable) this.m_countersTable.clone();
            Stack stack = this.m_attrSetStack;
            if (stack != null) {
                transformerImpl.m_attrSetStack = (Stack) stack.clone();
            }
        } catch (CloneNotSupportedException e) {
            throw new WrappedRuntimeException(e);
        }
    }
}
