package net.p110sf.saxon.expr.instruct;

import java.util.Iterator;
import javax.xml.transform.SourceLocator;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;

/* loaded from: classes11.dex */
public abstract class Instruction extends Expression implements TailCallReturner {
    public static ParameterSet assembleParams(XPathContext xPathContext, WithParam[] withParamArr) throws XPathException {
        if (withParamArr == null || withParamArr.length == 0) {
            return null;
        }
        ParameterSet parameterSet = new ParameterSet(withParamArr.length);
        for (WithParam withParam : withParamArr) {
            parameterSet.put(withParam.getVariableQName(), withParam.getSelectValue(xPathContext), withParam.isTypeChecked());
        }
        return parameterSet;
    }

    public static ParameterSet assembleTunnelParams(XPathContext xPathContext, WithParam[] withParamArr) throws XPathException {
        ParameterSet tunnelParameters = xPathContext.getTunnelParameters();
        if (tunnelParameters == null) {
            return assembleParams(xPathContext, withParamArr);
        }
        if (withParamArr == null || withParamArr.length == 0) {
            return tunnelParameters;
        }
        ParameterSet parameterSet = new ParameterSet(tunnelParameters, withParamArr.length);
        for (WithParam withParam : withParamArr) {
            parameterSet.put(withParam.getVariableQName(), withParam.getSelectValue(xPathContext), false);
        }
        return parameterSet;
    }

    public static XPathException dynamicError(Location location, XPathException xPathException, XPathContext xPathContext) {
        if (xPathException instanceof TerminationException) {
            return xPathException;
        }
        xPathException.maybeSetLocation(location);
        xPathException.maybeSetContext(xPathContext);
        return xPathException;
    }

    public boolean alwaysCreatesNewNodes() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeCardinality() {
        return 57344;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        int computeSpecialProperties = super.computeSpecialProperties();
        if (alwaysCreatesNewNodes()) {
            computeSpecialProperties |= 4194304;
        }
        return mayCreateNewNodes() ? computeSpecialProperties : 8388608 | computeSpecialProperties;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public final UnicodeString evaluateAsString(XPathContext xPathContext) throws XPathException {
        Item evaluateItem = evaluateItem(xPathContext);
        return evaluateItem == null ? EmptyUnicodeString.getInstance() : evaluateItem.getUnicodeStringValue();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Item evaluateItem(XPathContext xPathContext) throws XPathException {
        int implementationMethod = getImplementationMethod();
        if ((implementationMethod & 1) == 0) {
            return (implementationMethod & 2) != 0 ? iterate(xPathContext).next() : ExpressionTool.getItemFromProcessMethod(this, xPathContext);
        }
        throw new AssertionError("evaluateItem() is not implemented in the subclass " + getClass());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        int instructionNameCode = getInstructionNameCode();
        return (instructionNameCode < 1024) & (instructionNameCode >= 0) ? StandardNames.getDisplayName(instructionNameCode) : super.getExpressionName();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getImplementationMethod() {
        return 4;
    }

    public int getInstructionNameCode() {
        return -1;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return Type.ITEM_TYPE;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getNetCost() {
        return 20;
    }

    public SourceLocator getSourceLocator() {
        return getLocation();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean isInstruction() {
        return true;
    }

    public boolean isXSLT() {
        return getPackageData().isXSLT();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public SequenceIterator iterate(XPathContext xPathContext) throws XPathException {
        int implementationMethod = getImplementationMethod();
        if ((implementationMethod & 1) != 0) {
            Item evaluateItem = evaluateItem(xPathContext);
            return evaluateItem == null ? EmptyIterator.emptyIterator() : SingletonIterator.makeIterator(evaluateItem);
        }
        if ((implementationMethod & 2) == 0) {
            return ExpressionTool.getIteratorFromProcessMethod(this, xPathContext);
        }
        throw new AssertionError("iterate() is not implemented in the subclass " + getClass());
    }

    public boolean mayCreateNewNodes() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public abstract Iterable<Operand> operands();

    @Override // net.p110sf.saxon.expr.Expression
    public void process(Outputter outputter, XPathContext xPathContext) throws XPathException {
        try {
            for (TailCall processLeavingTail = processLeavingTail(outputter, xPathContext); processLeavingTail != null; processLeavingTail = processLeavingTail.processLeavingTail()) {
            }
        } catch (XPathException e) {
            e.maybeSetFailingExpression(this);
            e.maybeSetContext(xPathContext);
            throw e;
        }
    }

    public abstract TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException;

    public final boolean someOperandCreatesNewNodes() {
        Iterator<Operand> it2 = operands().iterator();
        while (it2.hasNext()) {
            if ((it2.next().getChildExpression().getSpecialProperties() & 8388608) == 0) {
                return true;
            }
        }
        return false;
    }
}
