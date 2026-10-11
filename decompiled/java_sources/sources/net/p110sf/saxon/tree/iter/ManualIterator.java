package net.p110sf.saxon.tree.iter;

import java.util.function.Supplier;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.om.FocusIterator;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.tree.iter.ManualIterator;

/* loaded from: classes11.dex */
public class ManualIterator implements FocusIterator, SequenceIterator, ReversibleIterator, LastPositionFinder, GroundedIterator, LookaheadIterator {

    /* renamed from: e */
    public Item f102449e;

    /* renamed from: f */
    public int f102450f;

    /* renamed from: g */
    public Supplier<Integer> f102451g;

    public ManualIterator() {
        this.f102449e = null;
        this.f102450f = 0;
    }

    /* renamed from: j */
    public static /* synthetic */ Integer m64509j() {
        return 1;
    }

    @Override // net.p110sf.saxon.om.FocusIterator
    public Item current() {
        return this.f102449e;
    }

    @Override // net.p110sf.saxon.om.FocusIterator, net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        Supplier<Integer> supplier = this.f102451g;
        if (supplier != null) {
            return supplier.get().intValue();
        }
        throw new UncheckedXPathException("Saxon streaming restriction: last() cannot be used when consuming a sequence of streamed nodes, even if the items being processed are grounded");
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue getResidue() {
        return this.f102449e;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return position() != getLength();
    }

    public void incrementPosition() {
        this.f102450f++;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public boolean isActuallyGrounded() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue materialize() {
        return this.f102449e;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        return null;
    }

    @Override // net.p110sf.saxon.om.FocusIterator
    public int position() {
        return this.f102450f;
    }

    public void setContextItem(Item item) {
        this.f102449e = item;
    }

    public void setLengthFinder(Supplier<Integer> supplier) {
        this.f102451g = supplier;
    }

    public void setPosition(int i) {
        this.f102450f = i;
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.ReversibleIterator
    public ManualIterator getReverseIterator() {
        return new ManualIterator(this.f102449e);
    }

    public ManualIterator(Item item, int i) {
        this.f102449e = item;
        this.f102450f = i;
    }

    public ManualIterator(Item item) {
        this.f102449e = item;
        this.f102450f = 1;
        this.f102451g = new Supplier() { // from class: com.sunia.HTREnginev2.k8j
            @Override // java.util.function.Supplier
            public final Object get() {
                Integer m64509j;
                m64509j = ManualIterator.m64509j();
                return m64509j;
            }
        };
    }
}
