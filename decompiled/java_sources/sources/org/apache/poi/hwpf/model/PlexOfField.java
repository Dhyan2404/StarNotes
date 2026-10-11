package org.apache.poi.hwpf.model;

import java.util.Locale;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class PlexOfField {
    private final FieldDescriptor fld;
    private final GenericPropertyNode propertyNode;

    @Deprecated
    public PlexOfField(int i, int i2, byte[] bArr) {
        this.propertyNode = new GenericPropertyNode(i, i2, bArr);
        this.fld = new FieldDescriptor(bArr);
    }

    public int getFcEnd() {
        return this.propertyNode.getEnd();
    }

    public int getFcStart() {
        return this.propertyNode.getStart();
    }

    public FieldDescriptor getFld() {
        return this.fld;
    }

    public String toString() {
        return String.format(Locale.ROOT, "[%d, %d) - FLD - 0x%x; 0x%x", Integer.valueOf(getFcStart()), Integer.valueOf(getFcEnd()), Integer.valueOf(this.fld.getBoundaryType()), Byte.valueOf(this.fld.getFlt()));
    }

    public PlexOfField(GenericPropertyNode genericPropertyNode) {
        this.propertyNode = genericPropertyNode;
        this.fld = new FieldDescriptor(genericPropertyNode.getBytes());
    }
}
