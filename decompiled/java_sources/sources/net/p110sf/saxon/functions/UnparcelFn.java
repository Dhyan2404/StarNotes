package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.ma.Parcel;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class UnparcelFn extends SystemFunction {
    public static GroundedValue unparcel(Item item, XPathContext xPathContext) throws XPathException {
        if (item instanceof Parcel) {
            return ((Parcel) item).getValue();
        }
        if (Parcel.TYPE.matches(item, xPathContext.getConfiguration().getTypeHierarchy())) {
            return ((MapItem) item).get(Parcel.parcelKey);
        }
        throw new XPathException("The first argument of fn:unparcel must be a parcel", "XPTY0004");
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return unparcel(sequenceArr[0].head(), xPathContext);
    }
}
