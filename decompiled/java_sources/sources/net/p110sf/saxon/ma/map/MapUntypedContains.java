package net.p110sf.saxon.ma.map;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.PrimitiveUType;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class MapUntypedContains extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        ConversionRules conversionRules = xPathContext.getConfiguration().getConversionRules();
        MapItem mapItem = (MapItem) sequenceArr[0].head();
        AtomicValue atomicValue = (AtomicValue) sequenceArr[1].head();
        if (!atomicValue.isUntypedAtomic()) {
            if (atomicValue.isNaN()) {
                return BooleanValue.FALSE;
            }
            return BooleanValue.get(mapItem.get(atomicValue) != null);
        }
        for (PrimitiveUType primitiveUType : mapItem.getKeyUType().decompose()) {
            ConversionResult convert = ((BuiltInAtomicType) primitiveUType.toItemType()).getStringConverter(conversionRules).convert(atomicValue);
            if (!(convert instanceof ValidationFailure)) {
                if (mapItem.get(convert.asAtomic()) != null) {
                    return BooleanValue.TRUE;
                }
            } else if (primitiveUType.equals(PrimitiveUType.DECIMAL)) {
                ConversionResult convert2 = BuiltInAtomicType.DOUBLE.getStringConverter(conversionRules).convert(atomicValue);
                if ((convert2 instanceof AtomicValue) && mapItem.get(convert2.asAtomic()) != null) {
                    return BooleanValue.TRUE;
                }
            } else {
                continue;
            }
        }
        return BooleanValue.FALSE;
    }
}
