package net.p110sf.saxon.expr.instruct;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ComponentInvocation;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.style.StyleElement;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class UseAttributeSet extends Instruction implements ComponentInvocation, ContextOriginator {

    /* renamed from: n */
    public final StructuredQName f99835n;

    /* renamed from: o */
    public AttributeSet f99836o;

    /* renamed from: p */
    public final boolean f99837p;

    /* renamed from: q */
    public int f99838q = -1;

    public UseAttributeSet(StructuredQName structuredQName, boolean z) {
        this.f99835n = structuredQName;
        this.f99837p = z;
    }

    /* renamed from: d */
    public static UseAttributeSet m62796d(StructuredQName structuredQName, StyleElement styleElement) throws XPathException {
        AttributeSet attributeSet;
        if (structuredQName.hasURI("http://www.w3.org/1999/XSL/Transform") && structuredQName.getLocalPart().equals("original")) {
            attributeSet = (AttributeSet) styleElement.getXslOriginal(138);
        } else {
            Component component = styleElement.getContainingPackage().getComponent(new SymbolicName(138, structuredQName));
            styleElement.getPrincipalStylesheetModule().getAttributeSetDeclarations(structuredQName);
            if (component == null) {
                styleElement.compileError("Unknown attribute set " + structuredQName.getEQName(), "XTSE0710");
                return null;
            }
            attributeSet = (AttributeSet) component.getActor();
        }
        UseAttributeSet useAttributeSet = new UseAttributeSet(structuredQName, attributeSet.isDeclaredStreamable());
        useAttributeSet.setTarget(attributeSet);
        useAttributeSet.setBindingSlot(-1);
        useAttributeSet.setRetainedStaticContext(styleElement.makeRetainedStaticContext());
        return useAttributeSet;
    }

    public static Expression makeCompositeExpression(List<UseAttributeSet> list) {
        return list.size() == 0 ? Literal.makeEmptySequence() : list.size() == 1 ? list.get(0) : new Block((Expression[]) list.toArray(new UseAttributeSet[0]));
    }

    public static List<UseAttributeSet> makeUseAttributeSetInstructions(StructuredQName[] structuredQNameArr, StyleElement styleElement) throws XPathException {
        ArrayList arrayList = new ArrayList(structuredQNameArr.length);
        for (StructuredQName structuredQName : structuredQNameArr) {
            UseAttributeSet m62796d = m62796d(structuredQName, styleElement);
            if (m62796d != null) {
                arrayList.add(m62796d);
            }
        }
        return arrayList;
    }

    public static Expression makeUseAttributeSets(StructuredQName[] structuredQNameArr, StyleElement styleElement) throws XPathException {
        return makeCompositeExpression(makeUseAttributeSetInstructions(structuredQNameArr, styleElement));
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f99835n.hashCode() ^ 1447180057;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression copy(RebindingMap rebindingMap) {
        UseAttributeSet useAttributeSet = new UseAttributeSet(this.f99835n, this.f99837p);
        useAttributeSet.setTarget(this.f99836o);
        useAttributeSet.setBindingSlot(this.f99838q);
        return useAttributeSet;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (obj instanceof UseAttributeSet) {
            return this.f99835n.equals(((UseAttributeSet) obj).f99835n);
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("useAS", this);
        expressionPresenter.emitAttribute("name", this.f99835n);
        expressionPresenter.emitAttribute("bSlot", "" + getBindingSlot());
        if (isDeclaredStreamable()) {
            expressionPresenter.emitAttribute("flags", "s");
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public int getBindingSlot() {
        return this.f99838q;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public String getExpressionName() {
        return "useAS";
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public Component getFixedTarget() {
        AttributeSet attributeSet = this.f99836o;
        if (attributeSet == null || this.f99838q >= 0) {
            return null;
        }
        return attributeSet.getDeclaringComponent();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int getIntrinsicDependencies() {
        return 639;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return NodeKindTest.ATTRIBUTE;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public String getStreamerName() {
        return "UseAttributeSet";
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public SymbolicName getSymbolicName() {
        return new SymbolicName(138, this.f99835n);
    }

    public AttributeSet getTargetAttributeSet() {
        return this.f99836o;
    }

    public StructuredQName getTargetAttributeSetName() {
        return this.f99835n;
    }

    public boolean isDeclaredStreamable() {
        return this.f99837p;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public boolean isInstruction() {
        return false;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return Collections.emptyList();
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression optimize(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.instruct.TailCallReturner
    public TailCall processLeavingTail(Outputter outputter, XPathContext xPathContext) throws XPathException {
        Component targetComponent;
        int i = this.f99838q;
        if (i < 0) {
            targetComponent = getFixedTarget();
        } else {
            targetComponent = xPathContext.getTargetComponent(i);
            if (targetComponent.isHiddenAbstractComponent()) {
                XPathException xPathException = new XPathException("Cannot expand an abstract attribute set (" + this.f99835n.getDisplayName() + ") with no implementation", "XTDE3052");
                xPathException.setLocation(getLocation());
                throw xPathException;
            }
        }
        if (targetComponent == null) {
            throw new AssertionError("Failed to locate attribute set " + getTargetAttributeSetName().getEQName());
        }
        AttributeSet attributeSet = (AttributeSet) targetComponent.getActor();
        XPathContextMajor newContext = xPathContext.newContext();
        newContext.setCurrentComponent(targetComponent);
        newContext.setOrigin(this);
        SlotManager stackFrameMap = attributeSet.getStackFrameMap();
        if (stackFrameMap == null) {
            stackFrameMap = SlotManager.EMPTY;
        }
        newContext.openStackFrame(stackFrameMap);
        attributeSet.expand(outputter, newContext);
        return null;
    }

    @Override // net.p110sf.saxon.expr.ComponentInvocation
    public void setBindingSlot(int i) {
        this.f99838q = i;
    }

    public void setTarget(AttributeSet attributeSet) {
        this.f99836o = attributeSet;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Expression typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }
}
