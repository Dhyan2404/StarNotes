package sun.java2d.pipe;

import java.util.HashSet;
import java.util.Set;

/* loaded from: classes16.dex */
public abstract class RenderQueue {
    private static final int BUFFER_SIZE = 32000;
    protected Set refSet = new HashSet();
    protected RenderBuffer buf = RenderBuffer.allocate(32000);

    public final void addReference(Object obj) {
        this.refSet.add(obj);
    }

    public final void ensureAlignment(int i) {
        if (((this.buf.position() + i) & 7) != 0) {
            this.buf.putInt(90);
        }
    }

    public final void ensureCapacity(int i) {
        if (this.buf.remaining() < i) {
            flushNow();
        }
    }

    public final void ensureCapacityAndAlignment(int i, int i2) {
        ensureCapacity(i + 4);
        ensureAlignment(i2);
    }

    public abstract void flushAndInvokeNow(Runnable runnable);

    public abstract void flushNow();

    public void flushNow(int i) {
        this.buf.position(i);
        flushNow();
    }

    public final RenderBuffer getBuffer() {
        return this.buf;
    }

    public final void lock() {
    }

    public final boolean tryLock() {
        return false;
    }

    public final void unlock() {
    }
}
