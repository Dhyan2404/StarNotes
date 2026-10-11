package net.p110sf.saxon.ma.arrays;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.OperandRole;
import net.p110sf.saxon.ma.arrays.SimpleArrayItem;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.ObjectValue;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class SimpleArrayItem extends AbstractArrayItem {
    public static final SimpleArrayItem EMPTY_ARRAY = new SimpleArrayItem(new ArrayList());

    /* renamed from: f */
    public final List<GroundedValue> f100614f;

    /* renamed from: g */
    public boolean f100615g = false;

    public SimpleArrayItem(List<GroundedValue> list) {
        this.f100614f = list;
    }

    /* renamed from: d */
    public static /* synthetic */ void m63306d(List list, Item item) throws XPathException {
        if (item.getClass().getName().equals("com.saxonica.functions.extfn.ArrayMemberValue")) {
            list.add((GroundedValue) ((ObjectValue) item).getObject());
        } else {
            list.add(item);
        }
    }

    public static SimpleArrayItem makeSimpleArrayItem(SequenceIterator sequenceIterator) throws XPathException {
        final ArrayList arrayList = new ArrayList();
        SequenceTool.supply(sequenceIterator, new ItemConsumer() { // from class: com.sunia.HTREnginev2.dsm
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                SimpleArrayItem.m63306d(arrayList, item);
            }
        });
        SimpleArrayItem simpleArrayItem = new SimpleArrayItem(arrayList);
        simpleArrayItem.f100615g = true;
        return simpleArrayItem;
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public int arrayLength() {
        return this.f100614f.size();
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public ArrayItem concat(ArrayItem arrayItem) {
        return new ImmutableArrayItem(this).concat(arrayItem);
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public GroundedValue get(int i) {
        return this.f100614f.get(i);
    }

    @Override // net.p110sf.saxon.ma.arrays.AbstractArrayItem, net.p110sf.saxon.om.Function
    public AnnotationList getAnnotations() {
        return AnnotationList.EMPTY;
    }

    public List<GroundedValue> getMembers() {
        return this.f100614f;
    }

    @Override // net.p110sf.saxon.ma.arrays.AbstractArrayItem, net.p110sf.saxon.om.Function
    public OperandRole[] getOperandRoles() {
        return new OperandRole[]{OperandRole.SINGLE_ATOMIC};
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public ArrayItem insert(int i, GroundedValue groundedValue) {
        return new ImmutableArrayItem(this).insert(i, groundedValue);
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public boolean isEmpty() {
        return this.f100614f.isEmpty();
    }

    public void makeGrounded() throws XPathException {
        if (this.f100615g) {
            return;
        }
        synchronized (this) {
            for (int i = 0; i < this.f100614f.size(); i++) {
                List<GroundedValue> list = this.f100614f;
                list.set(i, list.get(i).materialize());
            }
            this.f100615g = true;
        }
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public Iterable<GroundedValue> members() {
        return this.f100614f;
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public ArrayItem put(int i, GroundedValue groundedValue) {
        return new ImmutableArrayItem(this).put(i, groundedValue);
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public ArrayItem remove(int i) {
        return new ImmutableArrayItem(this).remove(i);
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public ArrayItem removeSeveral(IntSet intSet) {
        return new ImmutableArrayItem(this).removeSeveral(intSet);
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public ArrayItem subArray(int i, int i2) {
        return new SimpleArrayItem(this.f100614f.subList(i, i2));
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem, net.p110sf.saxon.om.Function, net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public String toShortString() {
        int length = getLength();
        if (length == 0) {
            return "[]";
        }
        if (length > 5) {
            return "[(:size " + length + ":)]";
        }
        StringBuilder sb = new StringBuilder(256);
        sb.append(IteratorUtils.f104923a);
        Iterator<GroundedValue> it2 = members().iterator();
        while (it2.hasNext()) {
            sb.append(Err.depictSequence(it2.next()).toString().trim());
            sb.append(", ");
        }
        if (length == 1) {
            sb.append(IteratorUtils.f104924b);
        } else {
            sb.setCharAt(sb.length() - 2, ']');
        }
        return sb.toString().trim();
    }
}
