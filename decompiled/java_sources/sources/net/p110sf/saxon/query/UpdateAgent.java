package net.p110sf.saxon.query;

import net.p110sf.saxon.Controller;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface UpdateAgent {
    void update(NodeInfo nodeInfo, Controller controller) throws XPathException;
}
