package net.p110sf.saxon.om;

import java.util.Arrays;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ArrayIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.GroundedIterator;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class MemoSequence implements Sequence {

    /* renamed from: i */
    public static final /* synthetic */ boolean f100813i = false;

    /* renamed from: e */
    public final SequenceIterator f100814e;

    /* renamed from: g */
    public int f100816g;

    /* renamed from: f */
    public Item[] f100815f = null;

    /* renamed from: h */
    public State f100817h = State.UNREAD;

    /* loaded from: classes11.dex */
    public static final class ProgressiveIterator implements SequenceIterator, LastPositionFinder, GroundedIterator {

        /* renamed from: g */
        public static final /* synthetic */ boolean f100818g = false;

        /* renamed from: e */
        public MemoSequence f100819e;

        /* renamed from: f */
        public int f100820f = -1;

        public ProgressiveIterator(MemoSequence memoSequence) {
            this.f100819e = memoSequence;
        }

        /* renamed from: f */
        public final GroundedValue m63389f() {
            return this.f100819e.f100816g == this.f100819e.f100815f.length ? this.f100819e.f100816g == 0 ? EmptySequence.getInstance() : this.f100819e.f100816g == 1 ? this.f100819e.f100815f[0] : new SequenceExtent.C18571Of(this.f100819e.f100815f) : SequenceExtent.makeSequenceExtent(Arrays.asList(this.f100819e.f100815f).subList(0, this.f100819e.f100816g));
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public int getLength() {
            if (this.f100819e.f100817h == State.ALL_READ) {
                return this.f100819e.f100816g;
            }
            if (this.f100819e.f100817h == State.EMPTY) {
                return 0;
            }
            int i = this.f100820f;
            do {
            } while (next() != null);
            this.f100820f = i;
            return this.f100819e.f100816g;
        }

        public MemoSequence getMemoSequence() {
            return this.f100819e;
        }

        @Override // net.p110sf.saxon.tree.iter.GroundedIterator
        public GroundedValue getResidue() {
            if (this.f100819e.f100817h == State.EMPTY || this.f100820f >= this.f100819e.f100816g || this.f100820f == -2) {
                return EmptySequence.getInstance();
            }
            if (this.f100819e.f100817h == State.ALL_READ) {
                return SequenceExtent.makeSequenceExtent(Arrays.asList(this.f100819e.f100815f).subList(this.f100820f + 1, this.f100819e.f100816g));
            }
            int i = this.f100820f;
            do {
            } while (next() != null);
            this.f100820f = i;
            return SequenceExtent.makeSequenceExtent(Arrays.asList(this.f100819e.f100815f).subList(this.f100820f + 1, this.f100819e.f100816g));
        }

        @Override // net.p110sf.saxon.tree.iter.GroundedIterator
        public boolean isActuallyGrounded() {
            return true;
        }

        @Override // net.p110sf.saxon.tree.iter.GroundedIterator
        public GroundedValue materialize() {
            if (this.f100819e.f100817h == State.ALL_READ) {
                return m63389f();
            }
            if (this.f100819e.f100817h == State.EMPTY) {
                return EmptySequence.getInstance();
            }
            int i = this.f100820f;
            do {
            } while (next() != null);
            this.f100820f = i;
            return m63389f();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public Item next() {
            synchronized (this.f100819e) {
                int i = this.f100820f;
                if (i == -2) {
                    return null;
                }
                int i2 = i + 1;
                this.f100820f = i2;
                if (i2 < this.f100819e.f100816g) {
                    return this.f100819e.f100815f[this.f100820f];
                }
                State state = this.f100819e.f100817h;
                State state2 = State.ALL_READ;
                if (state == state2) {
                    this.f100820f = -2;
                    return null;
                }
                Item next = this.f100819e.f100814e.next();
                if (next == null) {
                    this.f100819e.f100817h = state2;
                    this.f100819e.m63388i();
                    this.f100820f = -2;
                    return null;
                }
                this.f100820f = this.f100819e.f100816g;
                this.f100819e.m63387h(next);
                this.f100819e.f100817h = State.MAYBE_MORE;
                return next;
            }
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public boolean supportsGetLength() {
            return true;
        }
    }

    /* loaded from: classes11.dex */
    public enum State {
        UNREAD,
        MAYBE_MORE,
        ALL_READ,
        BUSY,
        EMPTY
    }

    /* renamed from: net.sf.saxon.om.MemoSequence$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18423a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f100821a;

        static {
            int[] iArr = new int[State.values().length];
            f100821a = iArr;
            try {
                iArr[State.UNREAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f100821a[State.MAYBE_MORE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f100821a[State.ALL_READ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f100821a[State.BUSY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f100821a[State.EMPTY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public MemoSequence(SequenceIterator sequenceIterator) {
        this.f100814e = sequenceIterator;
    }

    /* renamed from: h */
    public final void m63387h(Item item) {
        int i = this.f100816g;
        Item[] itemArr = this.f100815f;
        if (i >= itemArr.length) {
            this.f100815f = (Item[]) Arrays.copyOf(itemArr, i * 2);
        }
        Item[] itemArr2 = this.f100815f;
        int i2 = this.f100816g;
        this.f100816g = i2 + 1;
        itemArr2[i2] = item;
    }

    @Override // net.p110sf.saxon.om.Sequence
    public Item head() throws XPathException {
        return iterate().next();
    }

    /* renamed from: i */
    public final void m63388i() {
        Item[] itemArr = this.f100815f;
        if (itemArr != null) {
            int length = itemArr.length;
            int i = this.f100816g;
            if (length - i > 30) {
                this.f100815f = (Item[]) Arrays.copyOf(itemArr, i);
            }
        }
    }

    public synchronized Item itemAt(int i) throws XPathException {
        State state;
        if (i < 0) {
            return null;
        }
        Item[] itemArr = this.f100815f;
        if (itemArr != null && i < this.f100816g) {
            return itemArr[i];
        }
        State state2 = this.f100817h;
        if (state2 != State.ALL_READ && state2 != (state = State.EMPTY)) {
            if (state2 == State.UNREAD) {
                Item next = this.f100814e.next();
                if (next == null) {
                    this.f100817h = state;
                    return null;
                }
                this.f100817h = State.MAYBE_MORE;
                this.f100815f = new Item[50];
                m63387h(next);
                if (i == 0) {
                    return next;
                }
            }
            int i2 = (i - this.f100816g) + 1;
            while (true) {
                int i3 = i2 - 1;
                if (i2 <= 0) {
                    return this.f100815f[i];
                }
                Item next2 = this.f100814e.next();
                if (next2 == null) {
                    this.f100817h = State.ALL_READ;
                    m63388i();
                    return null;
                }
                m63387h(next2);
                this.f100817h = State.MAYBE_MORE;
                i2 = i3;
            }
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.Sequence
    public synchronized SequenceIterator iterate() {
        int i = C18423a.f100821a[this.f100817h.ordinal()];
        if (i == 1) {
            this.f100817h = State.BUSY;
            SequenceIterator sequenceIterator = this.f100814e;
            if (sequenceIterator instanceof EmptyIterator) {
                this.f100817h = State.EMPTY;
                return sequenceIterator;
            }
            this.f100815f = new Item[50];
            this.f100816g = 0;
            this.f100817h = State.MAYBE_MORE;
            return new ProgressiveIterator(this);
        }
        if (i == 2) {
            return new ProgressiveIterator(this);
        }
        if (i != 3) {
            if (i == 4) {
                XPathException xPathException = new XPathException("Attempt to access a variable while it is being evaluated");
                xPathException.setErrorCode("XTDE0640");
                throw new UncheckedXPathException(xPathException);
            }
            if (i != 5) {
                throw new IllegalStateException("Unknown iterator state");
            }
            return EmptyIterator.emptyIterator();
        }
        int i2 = this.f100816g;
        if (i2 == 0) {
            this.f100817h = State.EMPTY;
            return EmptyIterator.emptyIterator();
        }
        if (i2 != 1) {
            return new ArrayIterator.C18535Of(this.f100815f, 0, i2);
        }
        return SingletonIterator.makeIterator(this.f100815f[0]);
    }
}
