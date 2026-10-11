package org.apache.poi.poifs.property;

/* loaded from: classes12.dex */
public final class RootProperty extends DirectoryProperty {
    private static final String NAME = "Root Entry";

    public RootProperty() {
        super(NAME);
        setNodeColor((byte) 1);
        setPropertyType((byte) 5);
        setStartBlock(-2);
    }

    @Override // org.apache.poi.poifs.property.Property
    public String getName() {
        return NAME;
    }

    @Override // org.apache.poi.poifs.property.Property
    public void setSize(int i) {
        super.setSize(Math.multiplyExact(i, 64));
    }

    public RootProperty(int i, byte[] bArr, int i2) {
        super(i, bArr, i2);
    }
}
