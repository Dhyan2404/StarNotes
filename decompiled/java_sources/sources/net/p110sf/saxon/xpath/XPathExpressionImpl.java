package net.p110sf.saxon.xpath;

import javax.xml.namespace.QName;
import javax.xml.transform.sax.SAXSource;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.EarlyEvaluationContext;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.JPConverter;
import net.p110sf.saxon.expr.PJConverter;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.functions.Number_1;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.wrapper.VirtualNode;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.NumericValue;
import org.xml.sax.InputSource;

/* loaded from: classes11.dex */
public class XPathExpressionImpl implements XPathExpression {

    /* renamed from: a */
    public final Configuration f102962a;

    /* renamed from: b */
    public final Executable f102963b;

    /* renamed from: c */
    public final Expression f102964c;

    /* renamed from: d */
    public Expression f102965d;

    /* renamed from: e */
    public SlotManager f102966e;

    public XPathExpressionImpl(Expression expression, Executable executable) {
        this.f102964c = expression;
        this.f102963b = executable;
        this.f102962a = executable.getConfiguration();
    }

    @Override // javax.xml.xpath.XPathExpression
    public Object evaluate(Object obj, QName qName) throws XPathExpressionException {
        Item head;
        try {
            GroundedValue convert = JPConverter.allocate(obj.getClass(), null, this.f102962a).convert(obj, new EarlyEvaluationContext(this.f102962a));
            if (convert.getLength() == 0) {
                head = null;
            } else if (convert.getLength() <= 1) {
                head = convert.head();
                if (head instanceof NodeInfo) {
                    NodeInfo nodeInfo = (NodeInfo) head;
                    if (nodeInfo.getConfiguration().isCompatible(this.f102962a)) {
                        if (nodeInfo.getTreeInfo().isTyped() && !this.f102963b.isSchemaAware()) {
                            throw new XPathExpressionException("The expression was compiled to handled untyped data, but the input is typed");
                        }
                    } else {
                        throw new XPathExpressionException("Supplied node must be built using the same or a compatible Configuration");
                    }
                }
            } else {
                throw new XPathExpressionException("Supplied context item is a sequence of " + convert.getLength() + " items");
            }
            XPathContextMajor xPathContextMajor = new XPathContextMajor(head, this.f102963b);
            xPathContextMajor.openStackFrame(this.f102966e);
            try {
                if (qName.equals(XPathConstants.BOOLEAN)) {
                    return Boolean.valueOf(this.f102964c.effectiveBooleanValue(xPathContextMajor));
                }
                if (qName.equals(XPathConstants.STRING)) {
                    Item next = this.f102964c.iterate(xPathContextMajor).next();
                    return next == null ? "" : next.getStringValue();
                }
                if (qName.equals(XPathConstants.NUMBER)) {
                    if (this.f102965d == null) {
                        this.f102965d = Atomizer.makeAtomizer(this.f102964c, null);
                    }
                    Item next2 = this.f102965d.iterate(xPathContextMajor).next();
                    if (next2 == null) {
                        return Double.valueOf(Double.NaN);
                    }
                    if (next2 instanceof NumericValue) {
                        return Double.valueOf(((NumericValue) next2).getDoubleValue());
                    }
                    return Double.valueOf(Number_1.convert((AtomicValue) next2, getConfiguration()).getDoubleValue());
                }
                if (qName.equals(XPathConstants.NODE)) {
                    Item next3 = this.f102964c.iterate(xPathContextMajor).next();
                    if (next3 instanceof VirtualNode) {
                        return ((VirtualNode) next3).getRealNode();
                    }
                    if (next3 != null && !(next3 instanceof NodeInfo)) {
                        throw new XPathExpressionException("Expression result is not a node");
                    }
                    return next3;
                }
                if (qName.equals(XPathConstants.NODESET)) {
                    xPathContextMajor.openStackFrame(this.f102966e);
                    return PJConverter.allocateNodeListCreator(this.f102962a, obj).convert(SequenceTool.toGroundedValue(this.f102964c.iterate(xPathContextMajor)), Object.class, xPathContextMajor);
                }
                throw new IllegalArgumentException("qName: Unknown type for expected result");
            } catch (XPathException e) {
                throw new XPathExpressionException(e);
            }
        } catch (XPathException e2) {
            throw new XPathExpressionException("Failure converting a node of class " + obj.getClass().getName() + ": " + e2.getMessage());
        }
    }

    public Configuration getConfiguration() {
        return this.f102962a;
    }

    public Expression getInternalExpression() {
        return this.f102964c;
    }

    public SlotManager getStackFrameMap() {
        return this.f102966e;
    }

    public void setStackFrameMap(SlotManager slotManager) {
        this.f102966e = slotManager;
    }

    @Override // javax.xml.xpath.XPathExpression
    public String evaluate(Object obj) throws XPathExpressionException {
        return (String) evaluate(obj, XPathConstants.STRING);
    }

    @Override // javax.xml.xpath.XPathExpression
    public Object evaluate(InputSource inputSource, QName qName) throws XPathExpressionException {
        NodeInfo rootNode;
        if (qName != null) {
            if (inputSource != null) {
                try {
                    rootNode = this.f102962a.buildDocumentTree(new SAXSource(inputSource)).getRootNode();
                } catch (XPathException e) {
                    throw new XPathExpressionException(e);
                }
            } else {
                rootNode = null;
            }
            return evaluate(rootNode, qName);
        }
        throw new NullPointerException("qName");
    }

    @Override // javax.xml.xpath.XPathExpression
    public String evaluate(InputSource inputSource) throws XPathExpressionException {
        if (inputSource != null) {
            try {
                return (String) evaluate(this.f102962a.buildDocumentTree(new SAXSource(inputSource)).getRootNode(), XPathConstants.STRING);
            } catch (XPathException e) {
                throw new XPathExpressionException(e);
            }
        }
        throw new NullPointerException("inputSource");
    }
}
