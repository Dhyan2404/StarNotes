package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.AdjacentTextNodeMerger;
import net.p110sf.saxon.expr.AtomicSequenceConverter;
import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.SimpleNodeConstructor;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public abstract class XSLLeafNodeConstructor extends StyleElement {
    protected Expression select = null;

    public static Expression makeSimpleContentConstructor(Expression expression, Expression expression2, StaticContext staticContext) {
        RetainedStaticContext localRetainedStaticContext = expression.getLocalRetainedStaticContext();
        if (localRetainedStaticContext == null) {
            localRetainedStaticContext = staticContext.makeRetainedStaticContext();
        }
        AtomicSequenceConverter atomicSequenceConverter = new AtomicSequenceConverter(Atomizer.makeAtomizer(AdjacentTextNodeMerger.makeAdjacentTextNodeMerger(expression), null), BuiltInAtomicType.STRING);
        atomicSequenceConverter.setRetainedStaticContext(localRetainedStaticContext);
        atomicSequenceConverter.allocateConverterStatically(staticContext.getConfiguration(), false);
        return atomicSequenceConverter.getCardinality() != 16384 ? SystemFunction.makeCall("string-join", localRetainedStaticContext, atomicSequenceConverter, expression2) : atomicSequenceConverter;
    }

    public void compileContent(Compilation compilation, ComponentDeclaration componentDeclaration, SimpleNodeConstructor simpleNodeConstructor, Expression expression) throws XPathException {
        if (expression == null) {
            expression = new StringLiteral(StringValue.SINGLE_SPACE);
        }
        try {
            if (this.select == null) {
                this.select = compileSequenceConstructor(compilation, componentDeclaration, true);
            }
            Expression makeSimpleContentConstructor = makeSimpleContentConstructor(this.select, expression, getStaticContext());
            this.select = makeSimpleContentConstructor;
            simpleNodeConstructor.setSelect(makeSimpleContentConstructor);
        } catch (XPathException e) {
            compileError(e);
        }
    }

    public abstract String getErrorCodeForSelectPlusContent();

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    public Expression prepareAttributesNameAndSelect() {
        String str = null;
        Expression expression = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals("name")) {
                str = Whitespace.trim(value);
                expression = makeAttributeValueTemplate(str, attributeInfo);
            } else if (displayName.equals("select")) {
                this.select = makeExpression(value, attributeInfo);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (str == null) {
            reportAbsence("name");
        }
        return expression;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.select != null && hasChildNodes()) {
            compileError("An " + getDisplayName() + " element with a select attribute must be empty", getErrorCodeForSelectPlusContent());
        }
        AxisIterator iterateAxis = iterateAxis(3);
        NodeInfo next = iterateAxis.next();
        if (this.select == null) {
            if (next == null) {
                StringLiteral stringLiteral = new StringLiteral(StringValue.EMPTY_STRING);
                this.select = stringLiteral;
                stringLiteral.setRetainedStaticContext(makeRetainedStaticContext());
            } else if (iterateAxis.next() == null && !m63958I() && next.getNodeKind() == 3) {
                StringLiteral stringLiteral2 = new StringLiteral(next.getUnicodeStringValue());
                this.select = stringLiteral2;
                stringLiteral2.setRetainedStaticContext(makeRetainedStaticContext());
            }
        }
    }
}
