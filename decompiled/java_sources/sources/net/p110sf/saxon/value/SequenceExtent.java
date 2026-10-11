package net.p110sf.saxon.value;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.functions.Reverse;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.GroundedIterator;
import net.p110sf.saxon.tree.iter.ListIterator;

/* loaded from: classes11.dex */
public abstract class SequenceExtent implements GroundedValue {

    /* renamed from: net.sf.saxon.value.SequenceExtent$Of */
    /* loaded from: classes11.dex */
    public static class C18571Of<T extends Item> extends SequenceExtent implements Iterable<T> {

        /* renamed from: e */
        public List<T> f102916e;

        public C18571Of(List<T> list) {
            this.f102916e = list;
        }

        @Override // net.p110sf.saxon.om.GroundedValue
        public boolean effectiveBooleanValue() throws XPathException {
            int length = getLength();
            if (length == 0) {
                return false;
            }
            T t = this.f102916e.get(0);
            if (t instanceof NodeInfo) {
                return true;
            }
            return (length == 1 && (t instanceof AtomicValue)) ? t.effectiveBooleanValue() : ExpressionTool.effectiveBooleanValue(iterate());
        }

        @Override // net.p110sf.saxon.om.GroundedValue
        public int getLength() {
            return this.f102916e.size();
        }

        @Override // net.p110sf.saxon.om.GroundedValue
        public String getStringValue() throws XPathException {
            int length = getLength();
            String str = "";
            if (length == 0) {
                return "";
            }
            if (length == 1) {
                return head().getStringValue();
            }
            StringBuilder sb = new StringBuilder();
            for (T t : this.f102916e) {
                sb.append(str);
                sb.append(t.getStringValue());
                str = " ";
            }
            return sb.toString();
        }

        @Override // net.p110sf.saxon.om.GroundedValue
        public UnicodeString getUnicodeStringValue() throws XPathException {
            int length = getLength();
            if (length == 0) {
                return EmptyUnicodeString.getInstance();
            }
            if (length == 1) {
                return head().getUnicodeStringValue();
            }
            UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
            UnicodeString emptyUnicodeString = EmptyUnicodeString.getInstance();
            for (T t : this.f102916e) {
                unicodeBuilder.append(emptyUnicodeString);
                emptyUnicodeString = StringConstants.SINGLE_SPACE;
                unicodeBuilder.append(t.getStringValue());
            }
            return unicodeBuilder.toUnicodeString();
        }

        @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
        public Item head() {
            if (this.f102916e.isEmpty()) {
                return null;
            }
            return this.f102916e.get(0);
        }

        @Override // net.p110sf.saxon.om.GroundedValue
        public Item itemAt(int i) {
            if (i < 0 || i >= this.f102916e.size()) {
                return null;
            }
            return this.f102916e.get(i);
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return this.f102916e.iterator();
        }

        @Override // net.p110sf.saxon.om.GroundedValue
        public GroundedValue reduce() {
            int length = getLength();
            return length == 0 ? EmptySequence.getInstance() : length == 1 ? itemAt(0) : this;
        }

        @Override // net.p110sf.saxon.value.SequenceExtent
        public SequenceIterator reverseIterate() {
            return Reverse.reverseIterator(this.f102916e);
        }

        @Override // net.p110sf.saxon.om.GroundedValue
        public GroundedValue subsequence(int i, int i2) {
            if (i < 0) {
                i = 0;
            }
            int length = getLength();
            if (i > length) {
                return EmptySequence.getInstance();
            }
            if (i + i2 <= length) {
                length = i + i2;
            }
            return new C18571Of(this.f102916e.subList(i, length)).reduce();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            int i = 0;
            while (i < getLength()) {
                sb.append(i == 0 ? MotionUtils.f31761c : ", ");
                sb.append(this.f102916e.get(i).toString());
                i++;
            }
            sb.append(')');
            return sb.toString();
        }

        @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
        public ListIterator.C18538Of<T> iterate() {
            return new ListIterator.C18538Of<>(this.f102916e);
        }

        public C18571Of(T[] tArr) {
            this(Arrays.asList(tArr));
        }

        public C18571Of(C18571Of<T> c18571Of, int i, int i2) {
            this.f102916e = c18571Of.f102916e.subList(i, i2 + i);
        }
    }

    public static C18571Of<Item> from(SequenceIterator sequenceIterator) {
        ArrayList arrayList = new ArrayList(!SequenceTool.supportsGetLength(sequenceIterator) ? 20 : ((LastPositionFinder) sequenceIterator).getLength());
        while (true) {
            Item next = sequenceIterator.next();
            if (next == null) {
                return new C18571Of<>(arrayList);
            }
            arrayList.add(next);
        }
    }

    public static GroundedValue makeResidue(SequenceIterator sequenceIterator) {
        if (sequenceIterator instanceof GroundedIterator) {
            GroundedIterator groundedIterator = (GroundedIterator) sequenceIterator;
            if (groundedIterator.isActuallyGrounded()) {
                return groundedIterator.getResidue();
            }
        }
        return from(sequenceIterator).reduce();
    }

    public static <T extends Item> GroundedValue makeSequenceExtent(List<T> list) {
        int size = list.size();
        return size == 0 ? EmptySequence.getInstance() : size == 1 ? list.get(0) : new C18571Of(list);
    }

    public abstract SequenceIterator reverseIterate();
}
