package net.p110sf.saxon.trans.rules;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.ParameterSet;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface BuiltInRuleSet extends ContextOriginator {
    BuiltInRules[] getActionForParentNodes(int i);

    String getName();

    void process(Item item, ParameterSet parameterSet, ParameterSet parameterSet2, Outputter outputter, XPathContext xPathContext, Location location) throws XPathException;
}
