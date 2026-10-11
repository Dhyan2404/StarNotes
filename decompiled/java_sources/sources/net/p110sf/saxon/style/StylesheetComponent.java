package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.Optimizer;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface StylesheetComponent {
    void checkCompatibility(Component component) throws XPathException;

    void generateByteCode(Optimizer optimizer) throws XPathException;

    Actor getActor() throws XPathException;

    SlotManager getSlotManager();

    SymbolicName getSymbolicName();

    void optimize(ComponentDeclaration componentDeclaration) throws XPathException;
}
