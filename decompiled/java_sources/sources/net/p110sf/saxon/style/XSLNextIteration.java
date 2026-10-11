package net.p110sf.saxon.style;

import com.sunia.HTREnginev2.tqo;
import com.sunia.HTREnginev2.w2n;
import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.LocalVariableReference;
import net.p110sf.saxon.expr.instruct.LocalParam;
import net.p110sf.saxon.expr.instruct.NextIteration;
import net.p110sf.saxon.expr.instruct.WithParam;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeSelector;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLNextIteration extends XSLBreakOrContinue {
    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        boolean z;
        NextIteration nextIteration = new NextIteration();
        nextIteration.setRetainedStaticContext(makeRetainedStaticContext());
        WithParam[] withParamInstructions = getWithParamInstructions(nextIteration, compilation, componentDeclaration, false);
        nextIteration.setParameters(withParamInstructions);
        XSLIterate xSLIterate = this.xslIterate;
        if (xSLIterate != null) {
            AxisIterator iterateAxis = xSLIterate.iterateAxis(3);
            while (true) {
                NodeInfo next = iterateAxis.next();
                if (next == null) {
                    break;
                }
                if (next instanceof XSLLocalParam) {
                    XSLLocalParam xSLLocalParam = (XSLLocalParam) next;
                    StructuredQName variableQName = xSLLocalParam.getVariableQName();
                    LocalParam compiledParam = xSLLocalParam.getCompiledParam();
                    int length = withParamInstructions.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            z = false;
                            break;
                        }
                        WithParam withParam = withParamInstructions[i];
                        if (variableQName.equals(withParam.getVariableQName())) {
                            withParam.setSlotNumber(compiledParam.getSlotNumber());
                            z = true;
                            break;
                        }
                        i++;
                    }
                    if (!z) {
                        WithParam withParam2 = new WithParam();
                        withParam2.setVariableQName(variableQName);
                        LocalVariableReference localVariableReference = new LocalVariableReference(compiledParam);
                        withParam2.setSelectExpression(nextIteration, localVariableReference);
                        withParam2.setSlotNumber(compiledParam.getSlotNumber());
                        localVariableReference.setStaticType(xSLLocalParam.getRequiredType(), null, 0);
                        WithParam[] withParamArr = new WithParam[withParamInstructions.length + 1];
                        withParamArr[0] = withParam2;
                        System.arraycopy(withParamInstructions, 0, withParamArr, 1, withParamInstructions.length);
                        withParamInstructions = withParamArr;
                    }
                }
            }
        }
        return nextIteration;
    }

    public SequenceType getDeclaredParamType(StructuredQName structuredQName) {
        Iterator<? extends NodeInfo> it2 = this.xslIterate.children(NodeSelector.m63449of(new tqo(XSLLocalParam.class))).iterator();
        while (it2.hasNext()) {
            XSLLocalParam xSLLocalParam = (XSLLocalParam) it2.next();
            if (xSLLocalParam.getVariableQName().equals(structuredQName)) {
                return xSLLocalParam.getRequiredType();
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void postValidate() throws XPathException {
        boolean z;
        if (this.xslIterate == null) {
            return;
        }
        Iterator<? extends NodeInfo> it2 = children(new w2n(XSLWithParam.class)).iterator();
        while (it2.hasNext()) {
            XSLWithParam xSLWithParam = (XSLWithParam) it2.next();
            AxisIterator iterateAxis = this.xslIterate.iterateAxis(3);
            while (true) {
                NodeInfo next = iterateAxis.next();
                if (next == null) {
                    z = false;
                    break;
                } else if (next instanceof XSLLocalParam) {
                    XSLLocalParam xSLLocalParam = (XSLLocalParam) next;
                    if (xSLLocalParam.getVariableQName().equals(xSLWithParam.getVariableQName())) {
                        xSLWithParam.checkAgainstRequiredType(xSLLocalParam.getRequiredType());
                        z = true;
                        break;
                    }
                }
            }
            if (!z) {
                compileError("Parameter " + xSLWithParam.getVariableQName().getDisplayName() + " is not declared in the containing xsl:iterate instruction", "XTSE3130");
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        validatePosition();
        if (this.xslIterate == null) {
            compileError("xsl:next-iteration must be a descendant of an xsl:iterate instruction");
        }
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLWithParam) {
                if (((XSLWithParam) nodeInfo).isTunnelParam()) {
                    compileError("An xsl:with-param element within xsl:iterate must not specify tunnel='yes'", "XTSE0020");
                }
            } else if (nodeInfo.getNodeKind() != 3) {
                compileError("Child element " + Err.wrap(nodeInfo.getDisplayName(), 1) + " is not allowed as a child of xsl:next-iteration", "XTSE0010");
            } else if (!Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue())) {
                compileError("No character data is allowed within xsl:next-iteration", "XTSE0010");
            }
        }
    }
}
