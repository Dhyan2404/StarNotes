package org.mortbay.jetty.nio;

import org.mortbay.io.Buffer;
import org.mortbay.io.nio.DirectNIOBuffer;
import org.mortbay.io.nio.IndirectNIOBuffer;
import org.mortbay.jetty.AbstractConnector;

/* loaded from: classes13.dex */
public abstract class AbstractNIOConnector extends AbstractConnector implements NIOConnector {

    /* renamed from: G0 */
    public boolean f114944G0 = true;

    @Override // org.mortbay.jetty.nio.NIOConnector
    public boolean getUseDirectBuffers() {
        return this.f114944G0;
    }

    @Override // org.mortbay.jetty.AbstractBuffers
    public Buffer newBuffer(int i) {
        if (i != getHeaderBufferSize() && this.f114944G0) {
            return new DirectNIOBuffer(i);
        }
        return new IndirectNIOBuffer(i);
    }

    public void setUseDirectBuffers(boolean z) {
        this.f114944G0 = z;
    }
}
