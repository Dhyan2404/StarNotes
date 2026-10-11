package net.p110sf.saxon.expr.flwor;

import java.util.function.Function;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.flwor.ForMemberClausePull;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.SequenceIteratorOverJavaIterator;
import net.p110sf.saxon.value.ObjectValue;

/* loaded from: classes11.dex */
public class ForMemberClausePull extends ForClausePull {

    /* renamed from: a */
    public ArrayItem f99505a;

    public ForMemberClausePull(TuplePull tuplePull, ForMemberClause forMemberClause) {
        super(tuplePull, forMemberClause);
    }

    /* renamed from: b */
    public static /* synthetic */ Item m62699b(GroundedValue groundedValue) {
        return new ObjectValue(groundedValue);
    }

    @Override // net.p110sf.saxon.expr.flwor.ForClausePull
    public SequenceIterator getIterator(XPathContext xPathContext) throws XPathException {
        ArrayItem arrayItem = (ArrayItem) this.forClause.getSequence().evaluateItem(xPathContext);
        this.f99505a = arrayItem;
        return new SequenceIteratorOverJavaIterator(arrayItem.members().iterator(), new Function() { // from class: com.sunia.HTREnginev2.ssg
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Item m62699b;
                m62699b = ForMemberClausePull.m62699b((GroundedValue) obj);
                return m62699b;
            }
        });
    }

    @Override // net.p110sf.saxon.expr.flwor.ForClausePull
    public GroundedValue variableValue(Item item) {
        return (GroundedValue) ((ObjectValue) item).getObject();
    }
}
