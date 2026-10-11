package org.apache.poi.ddf;

/* loaded from: classes12.dex */
public class EscherBoolProperty extends EscherSimpleProperty {
    public EscherBoolProperty(short s, int i) {
        super(s, i);
    }

    public boolean isTrue() {
        return getPropertyValue() != 0;
    }

    public EscherBoolProperty(EscherPropertyTypes escherPropertyTypes, int i) {
        super(escherPropertyTypes.propNumber, i);
    }
}
