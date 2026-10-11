package net.p110sf.saxon.expr.instruct;

import java.util.Iterator;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.tiny.TinyBuilder;

/* loaded from: classes11.dex */
public class Doctype extends Instruction {

    /* renamed from: n */
    public final Operand f99682n;

    public Doctype(Expression expression) {
        this.f99682n = new Operand(this, expression, OperandRole.SINGLE_ATOMIC);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        throw new UnsupportedOperationException("Doctype.copy()");
    }

    /* renamed from: d */
    public final void m62748d(Outputter outputter, String str) throws XPathException {
        outputter.characters(StringView.m63901of(str), getLocation(), 1);
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("saxonDoctype", this);
        getContent().export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public Expression getContent() {
        return this.f99682n.getChildExpression();
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public int getInstructionNameCode() {
        return 263;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction
    public final boolean mayCreateNewNodes() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return this.f99682n;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        boolean z;
        boolean z2;
        AxisIterator axisIterator;
        String str;
        String str2;
        String str3;
        char c;
        PipelineConfiguration makePipelineConfiguration = xPathContext.getController().makePipelineConfiguration();
        makePipelineConfiguration.setXPathContext(xPathContext);
        makePipelineConfiguration.setHostLanguage(getPackageData().getHostLanguage());
        TinyBuilder tinyBuilder = new TinyBuilder(makePipelineConfiguration);
        tinyBuilder.setStatistics(makePipelineConfiguration.getConfiguration().getTreeStatistics().RESULT_TREE_STATISTICS);
        tinyBuilder.open();
        tinyBuilder.startDocument(0);
        getContent().process(ComplexContentOutputter.makeComplexContentReceiver(tinyBuilder, null), xPathContext);
        tinyBuilder.endDocument();
        tinyBuilder.close();
        NodeInfo nodeInfo = (NodeInfo) tinyBuilder.getCurrentRoot().iterateAxis(3).next();
        if (nodeInfo == null || !"doctype".equals(nodeInfo.getLocalPart())) {
            XPathException xPathException = new XPathException("saxon:doctype instruction must contain dtd:doctype");
            xPathException.setXPathContext(xPathContext);
            throw xPathException;
        }
        String str4 = "name";
        String attributeValue = nodeInfo.getAttributeValue("", "name");
        String str5 = "system";
        String attributeValue2 = nodeInfo.getAttributeValue("", "system");
        String str6 = "public";
        String attributeValue3 = nodeInfo.getAttributeValue("", "public");
        if (attributeValue == null) {
            XPathException xPathException2 = new XPathException("dtd:doctype must have a name attribute");
            xPathException2.setXPathContext(xPathContext);
            throw xPathException2;
        }
        m62748d(outputter, "<!DOCTYPE " + attributeValue + ' ');
        if (attributeValue2 != null) {
            if (attributeValue3 != null) {
                m62748d(outputter, "PUBLIC \"" + attributeValue3 + "\" \"" + attributeValue2 + '\"');
            } else {
                m62748d(outputter, "SYSTEM \"" + attributeValue2 + '\"');
            }
        }
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3);
        NodeInfo nodeInfo2 = (NodeInfo) iterateAxis.next();
        if (nodeInfo2 != null) {
            m62748d(outputter, " [");
            z = true;
        } else {
            z = false;
        }
        while (nodeInfo2 != null) {
            String localPart = nodeInfo2.getLocalPart();
            if ("element".equals(localPart)) {
                String attributeValue4 = nodeInfo2.getAttributeValue("", str4);
                String attributeValue5 = nodeInfo2.getAttributeValue("", "content");
                if (attributeValue4 == null) {
                    XPathException xPathException3 = new XPathException("dtd:element must have a name attribute");
                    xPathException3.setXPathContext(xPathContext);
                    throw xPathException3;
                }
                if (attributeValue5 == null) {
                    XPathException xPathException4 = new XPathException("dtd:element must have a content attribute");
                    xPathException4.setXPathContext(xPathContext);
                    throw xPathException4;
                }
                m62748d(outputter, "\n  <!ELEMENT " + attributeValue4 + ' ' + attributeValue5 + '>');
                axisIterator = iterateAxis;
                str = str4;
                z2 = z;
            } else {
                z2 = z;
                if (localPart.equals("attlist")) {
                    String attributeValue6 = nodeInfo2.getAttributeValue("", "element");
                    if (attributeValue6 == null) {
                        XPathException xPathException5 = new XPathException("dtd:attlist must have an attribute named 'element'");
                        xPathException5.setXPathContext(xPathContext);
                        throw xPathException5;
                    }
                    m62748d(outputter, "\n  <!ATTLIST " + attributeValue6 + ' ');
                    AxisIterator iterateAxis2 = nodeInfo2.iterateAxis(3);
                    while (true) {
                        NodeInfo nodeInfo3 = (NodeInfo) iterateAxis2.next();
                        if (nodeInfo3 == null) {
                            m62748d(outputter, ">");
                            axisIterator = iterateAxis;
                            str = str4;
                            break;
                        }
                        if (!"attribute".equals(nodeInfo3.getLocalPart())) {
                            XPathException xPathException6 = new XPathException("Unrecognized element within dtd:attlist");
                            xPathException6.setXPathContext(xPathContext);
                            throw xPathException6;
                        }
                        String attributeValue7 = nodeInfo3.getAttributeValue("", str4);
                        String attributeValue8 = nodeInfo3.getAttributeValue("", "type");
                        AxisIterator axisIterator2 = iterateAxis2;
                        String attributeValue9 = nodeInfo3.getAttributeValue("", "value");
                        if (attributeValue7 == null) {
                            XPathException xPathException7 = new XPathException("dtd:attribute must have a name attribute");
                            xPathException7.setXPathContext(xPathContext);
                            throw xPathException7;
                        }
                        if (attributeValue8 == null) {
                            XPathException xPathException8 = new XPathException("dtd:attribute must have a type attribute");
                            xPathException8.setXPathContext(xPathContext);
                            throw xPathException8;
                        }
                        if (attributeValue9 == null) {
                            XPathException xPathException9 = new XPathException("dtd:attribute must have a value attribute");
                            xPathException9.setXPathContext(xPathContext);
                            throw xPathException9;
                        }
                        m62748d(outputter, "\n    " + attributeValue7 + ' ' + attributeValue8 + ' ' + attributeValue9);
                        iterateAxis2 = axisIterator2;
                        iterateAxis = iterateAxis;
                    }
                } else {
                    axisIterator = iterateAxis;
                    if (localPart.equals("entity")) {
                        String attributeValue10 = nodeInfo2.getAttributeValue("", str4);
                        String attributeValue11 = nodeInfo2.getAttributeValue("", "parameter");
                        str = str4;
                        String attributeValue12 = nodeInfo2.getAttributeValue("", str5);
                        String str7 = str5;
                        String attributeValue13 = nodeInfo2.getAttributeValue("", str6);
                        String attributeValue14 = nodeInfo2.getAttributeValue("", "notation");
                        if (attributeValue10 == null) {
                            XPathException xPathException10 = new XPathException("dtd:entity must have a name attribute");
                            xPathException10.setXPathContext(xPathContext);
                            throw xPathException10;
                        }
                        String str8 = str6;
                        m62748d(outputter, "\n  <!ENTITY ");
                        if ("yes".equals(attributeValue11)) {
                            m62748d(outputter, "% ");
                        }
                        m62748d(outputter, attributeValue10 + ' ');
                        if (attributeValue12 != null) {
                            if (attributeValue13 != null) {
                                m62748d(outputter, "PUBLIC \"" + attributeValue13 + "\" \"" + attributeValue12 + "\" ");
                            } else {
                                m62748d(outputter, "SYSTEM \"" + attributeValue12 + "\" ");
                            }
                        }
                        if (attributeValue14 != null) {
                            m62748d(outputter, "NDATA " + attributeValue14 + ' ');
                        }
                        Iterator<? extends NodeInfo> it2 = nodeInfo2.children().iterator();
                        while (it2.hasNext()) {
                            it2.next().copy(outputter, 0, getLocation());
                        }
                        m62748d(outputter, ">");
                        str2 = str7;
                        str3 = str8;
                        c = '\"';
                    } else {
                        str = str4;
                        String str9 = str5;
                        String str10 = str6;
                        if (localPart.equals("notation")) {
                            String attributeValue15 = nodeInfo2.getAttributeValue("", str);
                            str2 = str9;
                            String attributeValue16 = nodeInfo2.getAttributeValue("", str2);
                            str3 = str10;
                            String attributeValue17 = nodeInfo2.getAttributeValue("", str3);
                            if (attributeValue15 == null) {
                                XPathException xPathException11 = new XPathException("dtd:notation must have a name attribute");
                                xPathException11.setXPathContext(xPathContext);
                                throw xPathException11;
                            }
                            if (attributeValue16 == null && attributeValue17 == null) {
                                XPathException xPathException12 = new XPathException("dtd:notation must have a system attribute or a public attribute");
                                xPathException12.setXPathContext(xPathContext);
                                throw xPathException12;
                            }
                            StringBuilder sb = new StringBuilder();
                            str = str;
                            sb.append("\n  <!NOTATION ");
                            sb.append(attributeValue15);
                            m62748d(outputter, sb.toString());
                            if (attributeValue17 != null) {
                                m62748d(outputter, " PUBLIC \"" + attributeValue17 + "\" ");
                                if (attributeValue16 != null) {
                                    StringBuilder sb2 = new StringBuilder();
                                    c = '\"';
                                    sb2.append('\"');
                                    sb2.append(attributeValue16);
                                    sb2.append("\" ");
                                    m62748d(outputter, sb2.toString());
                                } else {
                                    c = '\"';
                                }
                            } else {
                                c = '\"';
                                m62748d(outputter, " SYSTEM \"" + attributeValue16 + "\" ");
                            }
                            m62748d(outputter, ">");
                        } else {
                            str2 = str9;
                            str3 = str10;
                            c = '\"';
                            if (nodeInfo2.getNodeKind() != 3) {
                                XPathException xPathException13 = new XPathException("Unrecognized element " + localPart + " in DTD output");
                                xPathException13.setXPathContext(xPathContext);
                                throw xPathException13;
                            }
                            m62748d(outputter, nodeInfo2.getStringValue());
                            nodeInfo2 = (NodeInfo) axisIterator.next();
                            str5 = str2;
                            z = z2;
                            iterateAxis = axisIterator;
                            str6 = str3;
                            str4 = str;
                        }
                    }
                    nodeInfo2 = (NodeInfo) axisIterator.next();
                    str5 = str2;
                    z = z2;
                    iterateAxis = axisIterator;
                    str6 = str3;
                    str4 = str;
                }
            }
            str3 = str6;
            c = '\"';
            str2 = str5;
            nodeInfo2 = (NodeInfo) axisIterator.next();
            str5 = str2;
            z = z2;
            iterateAxis = axisIterator;
            str6 = str3;
            str4 = str;
        }
        if (z) {
            m62748d(outputter, "\n]");
        }
        m62748d(outputter, ">\n");
        return null;
    }

    public void setContent(Expression expression) {
        this.f99682n.setChildExpression(expression);
    }
}
