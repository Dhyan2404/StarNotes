package net.p110sf.saxon.ma.arrays;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.AtomicComparer;
import net.p110sf.saxon.functions.DeepEqual;
import net.p110sf.saxon.ma.arrays.AbstractArrayItem;
import net.p110sf.saxon.om.AtomicArray;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ErrorType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Cardinality;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceType;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public abstract class AbstractArrayItem extends ArrayItem {

    /* renamed from: e */
    public SequenceType f100594e = null;

    /* renamed from: b */
    public static /* synthetic */ void m63291b(List list, Item item) throws XPathException {
        Iterator<AtomicValue> it2 = item.atomize().iterator();
        while (it2.hasNext()) {
            list.add(it2.next());
        }
    }

    @Override // net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        final ArrayList arrayList = new ArrayList(arrayLength());
        Iterator<GroundedValue> it2 = members().iterator();
        while (it2.hasNext()) {
            SequenceTool.supply(it2.next().iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.i2
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    AbstractArrayItem.m63291b(arrayList, item);
                }
            });
        }
        return new AtomicArray(arrayList);
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean deepEquals(Function function, XPathContext xPathContext, AtomicComparer atomicComparer, int i) throws XPathException {
        if (!(function instanceof ArrayItem)) {
            return false;
        }
        ArrayItem arrayItem = (ArrayItem) function;
        if (arrayLength() != arrayItem.arrayLength()) {
            return false;
        }
        for (int i2 = 0; i2 < arrayLength(); i2++) {
            if (!DeepEqual.deepEqual(get(i2).iterate(), arrayItem.get(i2).iterate(), atomicComparer, xPathContext, i)) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() throws XPathException {
        throw new XPathException("Effective boolean value is not defined for arrays", "FORG0006");
    }

    @Override // net.p110sf.saxon.om.Function
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("array");
        expressionPresenter.emitAttribute("size", arrayLength() + "");
        Iterator<GroundedValue> it2 = members().iterator();
        while (it2.hasNext()) {
            Literal.exportValue(it2.next(), expressionPresenter);
        }
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.om.Function
    public AnnotationList getAnnotations() {
        return AnnotationList.EMPTY;
    }

    @Override // net.p110sf.saxon.om.Function
    public int getArity() {
        return 1;
    }

    @Override // net.p110sf.saxon.om.Function
    public String getDescription() {
        return "array";
    }

    @Override // net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        return ArrayItemType.ANY_ARRAY_TYPE;
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return null;
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public SequenceType getMemberType(TypeHierarchy typeHierarchy) {
        if (this.f100594e == null) {
            int i = 16384;
            if (isEmpty()) {
                this.f100594e = SequenceType.makeSequenceType(ErrorType.getInstance(), 16384);
            } else {
                ItemType itemType = null;
                for (GroundedValue groundedValue : members()) {
                    if (itemType == null) {
                        itemType = SequenceTool.getItemType(groundedValue, typeHierarchy);
                        i = SequenceTool.getCardinality(groundedValue);
                    } else {
                        itemType = Type.getCommonSuperType(itemType, SequenceTool.getItemType(groundedValue, typeHierarchy));
                        i = Cardinality.union(i, SequenceTool.getCardinality(groundedValue));
                    }
                }
                this.f100594e = SequenceType.makeSequenceType(itemType, i);
            }
        }
        return this.f100594e;
    }

    @Override // net.p110sf.saxon.om.Function
    public OperandRole[] getOperandRoles() {
        return new OperandRole[]{OperandRole.SINGLE_ATOMIC};
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        throw new UnsupportedOperationException("An array does not have a string value");
    }

    @Override // net.p110sf.saxon.om.Function
    public boolean isTrustedResultType() {
        return false;
    }

    @Override // net.p110sf.saxon.om.Function
    public XPathContext makeNewContext(XPathContext xPathContext, ContextOriginator contextOriginator) {
        return xPathContext;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(256);
        sb.append(IteratorUtils.f104923a);
        for (GroundedValue groundedValue : members()) {
            if (sb.length() > 1) {
                sb.append(", ");
            }
            sb.append(groundedValue.toString());
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.Callable
    public GroundedValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return get(ArrayFunctionSet.checkSubscript((IntegerValue) sequenceArr[0].head(), arrayLength()) - 1);
    }
}
