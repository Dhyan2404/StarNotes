package org.apache.poi.hwpf.model;

import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class GenericPropertyNode extends PropertyNode<GenericPropertyNode> {
    public GenericPropertyNode(GenericPropertyNode genericPropertyNode) {
        super(genericPropertyNode);
    }

    public byte[] getBytes() {
        return (byte[]) this._buf;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("GenericPropertyNode [");
        sb.append(getStart());
        sb.append("; ");
        sb.append(getEnd());
        sb.append(") ");
        if (getBytes() != null) {
            str = getBytes().length + " byte(s)";
        } else {
            str = "null";
        }
        sb.append(str);
        return sb.toString();
    }

    public GenericPropertyNode(int i, int i2, byte[] bArr) {
        super(i, i2, bArr);
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode, org.apache.poi.common.Duplicatable
    public GenericPropertyNode copy() {
        return new GenericPropertyNode(this);
    }
}
