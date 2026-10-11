package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.OnEmptyExpr;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.style.XSLOnEmpty;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public final class XSLOnEmpty extends XSLSequence {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a0 */
    public /* synthetic */ void m64051a0(Item item) throws XPathException {
        if ((item instanceof XSLFallback) || (item instanceof XSLCatch)) {
            return;
        }
        compileError("xsl:on-empty must be the last instruction in the sequence constructor");
    }

    @Override // net.p110sf.saxon.style.XSLSequence, net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        return new OnEmptyExpr(super.compile(compilation, componentDeclaration));
    }

    @Override // net.p110sf.saxon.style.XSLSequence, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        super.validate(componentDeclaration);
        SequenceTool.supply(iterateAxis(7), new ItemConsumer() { // from class: com.sunia.HTREnginev2.uqo
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                XSLOnEmpty.this.m64051a0(item);
            }
        });
    }
}
