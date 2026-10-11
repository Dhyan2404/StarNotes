package org.apache.poi.hwpf.model;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.hwpf.model.BytePropertyNode;

@Deprecated
/* loaded from: classes12.dex */
public abstract class BytePropertyNode<T extends BytePropertyNode<T>> extends PropertyNode<T> {
    private final int endBytes;
    private final int startBytes;

    public BytePropertyNode(BytePropertyNode bytePropertyNode) {
        super(bytePropertyNode);
        this.startBytes = bytePropertyNode.startBytes;
        this.endBytes = bytePropertyNode.endBytes;
    }

    @Deprecated
    public int getEndBytes() {
        return this.endBytes;
    }

    @Deprecated
    public int getStartBytes() {
        return this.startBytes;
    }

    public BytePropertyNode(int i, int i2, Object obj) {
        super(i, i2, obj);
        if (i <= i2) {
            this.startBytes = -1;
            this.endBytes = -1;
            return;
        }
        throw new IllegalArgumentException("charStart (" + i + ") > charEnd (" + i2 + MotionUtils.f31762d);
    }
}
