package net.p110sf.saxon.expr.flwor;

import java.util.Iterator;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Int64Value;

/* loaded from: classes11.dex */
public class ForMemberClausePush extends TuplePush {
    protected TuplePush destination;
    protected ForClause forClause;

    public ForMemberClausePush(Outputter outputter, TuplePush tuplePush, ForClause forClause) {
        super(outputter);
        this.destination = tuplePush;
        this.forClause = forClause;
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void close() throws XPathException {
        this.destination.close();
    }

    @Override // net.p110sf.saxon.expr.flwor.TuplePush
    public void processTuple(XPathContext xPathContext) throws XPathException {
        Iterator<GroundedValue> it2 = ((ArrayItem) this.forClause.getSequence().evaluateItem(xPathContext)).members().iterator();
        int i = 0;
        while (it2.hasNext()) {
            xPathContext.setLocalVariable(this.forClause.getRangeVariable().getLocalSlotNumber(), it2.next());
            if (this.forClause.getPositionVariable() != null) {
                i++;
                xPathContext.setLocalVariable(this.forClause.getPositionVariable().getLocalSlotNumber(), new Int64Value(i));
            }
            this.destination.processTuple(xPathContext);
        }
    }
}
