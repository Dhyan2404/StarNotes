package net.p110sf.saxon.pattern;

import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.LocalBinding;
import net.p110sf.saxon.expr.Operand;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.LocalVariableBinding;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.functions.Current;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class PatternThatSetsCurrent extends Pattern {

    /* renamed from: q */
    public final LocalVariableBinding f100931q;

    /* renamed from: r */
    public Pattern f100932r;

    public PatternThatSetsCurrent(Pattern pattern) {
        this(pattern, new LocalVariableBinding(Current.FN_CURRENT, SequenceType.SINGLE_ITEM));
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int allocateSlots(SlotManager slotManager, int i) {
        slotManager.allocateSlotNumber(Current.FN_CURRENT);
        this.f100931q.setSlotNumber(i);
        return this.f100932r.allocateSlots(slotManager, i + 1);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public Pattern convertToTypedPattern(String str) throws XPathException {
        Pattern convertToTypedPattern = this.f100932r.convertToTypedPattern(str);
        return convertToTypedPattern == this.f100932r ? this : new PatternThatSetsCurrent(convertToTypedPattern);
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("p.withCurrent");
        this.f100932r.export(expressionPresenter);
        expressionPresenter.endElement();
    }

    public LocalBinding getCurrentBinding() {
        return this.f100931q;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int getFingerprint() {
        return this.f100932r.getFingerprint();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public HostLanguage getHostLanguage() {
        return this.f100932r.getHostLanguage();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return this.f100932r.getItemType();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return this.f100932r.getUType();
    }

    public Pattern getWrappedPattern() {
        return this.f100932r;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean hasVariableBinding(Binding binding) {
        return binding == this.f100931q;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean isMotionless() {
        return this.f100932r.isMotionless();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) throws XPathException {
        xPathContext.setLocalVariable(this.f100931q.getLocalSlotNumber(), item);
        return this.f100932r.m63465s(item, xPathContext);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean matchesBeneathAnchor(NodeInfo nodeInfo, NodeInfo nodeInfo2, XPathContext xPathContext) throws XPathException {
        return this.f100932r.matchesBeneathAnchor(nodeInfo, nodeInfo2, xPathContext);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public Iterable<Operand> operands() {
        return new Operand(this, this.f100932r, OperandRole.SINGLE_ATOMIC);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public String reconstruct() {
        return this.f100932r.toString();
    }

    public PatternThatSetsCurrent(Pattern pattern, LocalVariableBinding localVariableBinding) {
        this.f100932r = pattern;
        this.f100931q = localVariableBinding;
        localVariableBinding.setRequiredType(SequenceType.makeSequenceType(pattern.getItemType(), 16384));
        adoptChildExpression(pattern);
        setPriority(pattern.getDefaultPriority());
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        LocalVariableBinding localVariableBinding = new LocalVariableBinding(Current.FN_CURRENT, SequenceType.SINGLE_ITEM);
        rebindingMap.put(this.f100931q, localVariableBinding);
        PatternThatSetsCurrent patternThatSetsCurrent = new PatternThatSetsCurrent(this.f100932r.copy(rebindingMap), localVariableBinding);
        ExpressionTool.copyLocationInfo(this, patternThatSetsCurrent);
        patternThatSetsCurrent.setOriginalText(getOriginalText());
        return patternThatSetsCurrent;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern simplify() throws XPathException {
        this.f100932r = this.f100932r.simplify();
        return this;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        this.f100932r = this.f100932r.typeCheck(expressionVisitor, contextItemStaticInfo);
        return this;
    }
}
