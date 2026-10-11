package net.p110sf.saxon.trans.rules;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.ParameterSet;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Navigator;

/* loaded from: classes11.dex */
public class FailRuleSet implements BuiltInRuleSet {

    /* renamed from: e */
    public static final FailRuleSet f102404e = new FailRuleSet();

    public static FailRuleSet getInstance() {
        return f102404e;
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public BuiltInRules[] getActionForParentNodes(int i) {
        return new BuiltInRules[]{BuiltInRules.FAIL};
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public String getName() {
        return OneDriverConstants.CONFLICT_BEHAVIOR_FAIL;
    }

    @Override // net.p110sf.saxon.trans.rules.BuiltInRuleSet
    public void process(Item item, ParameterSet parameterSet, ParameterSet parameterSet2, Outputter outputter, XPathContext xPathContext, Location location) throws XPathException {
        String str;
        if (item instanceof NodeInfo) {
            str = "the node " + Navigator.getPath((NodeInfo) item);
        } else {
            str = "the atomic value " + item.getUnicodeStringValue();
        }
        XPathException xPathException = new XPathException("No user-defined template rule in " + xPathContext.getCurrentMode().getActor().getModeTitle(false) + " matches " + str, "XTDE0555");
        xPathException.setLocator(location.saveLocation());
        throw xPathException;
    }
}
