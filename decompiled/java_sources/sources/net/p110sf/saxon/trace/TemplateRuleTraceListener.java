package net.p110sf.saxon.trace;

import net.p110sf.saxon.expr.instruct.TemplateRule;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.Err;

/* loaded from: classes11.dex */
public class TemplateRuleTraceListener {

    /* renamed from: a */
    public int f102193a = 0;

    /* renamed from: b */
    public Logger f102194b;

    public TemplateRuleTraceListener(Logger logger) {
        this.f102194b = logger;
    }

    public void enter(String str, Location location, Item item, TemplateRule templateRule) {
        int i;
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (true) {
            i = this.f102193a;
            if (i2 >= i) {
                break;
            }
            sb.append(' ');
            i2++;
        }
        this.f102193a = i + 1;
        sb.append(str);
        sb.append(" at ");
        sb.append(Err.show(location));
        sb.append(" to ");
        sb.append(item.toShortString());
        if (item instanceof NodeInfo) {
            NodeInfo nodeInfo = (NodeInfo) item;
            if (nodeInfo.getLineNumber() != -1) {
                sb.append(" at ");
                sb.append(Err.abbreviateURI(nodeInfo.getBaseURI()));
                sb.append("#");
                sb.append(nodeInfo.getLineNumber());
            }
        }
        sb.append(" using ");
        if (templateRule == null) {
            sb.append("built-in rule");
        } else {
            sb.append("rule at ");
            sb.append(Err.show(templateRule));
        }
        this.f102194b.info(sb.toString().replaceAll(" \\.\\.\\./", " "));
    }

    public void leave() {
        this.f102193a--;
    }
}
