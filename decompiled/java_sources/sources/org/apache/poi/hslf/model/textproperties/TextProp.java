package org.apache.poi.hslf.model.textproperties;

import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.function.Supplier;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hslf.model.textproperties.TextProp;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public class TextProp implements Duplicatable, GenericRecord {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int dataValue;
    private int maskInHeader;
    private String propName;
    private int sizeOfDataBlock;

    public TextProp(int i, int i2, String str) {
        this.sizeOfDataBlock = i;
        this.maskInHeader = i2;
        this.propName = str;
        this.dataValue = 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TextProp textProp = (TextProp) obj;
        if (this.dataValue != textProp.dataValue || this.maskInHeader != textProp.maskInHeader) {
            return false;
        }
        String str = this.propName;
        if (str == null) {
            if (textProp.propName != null) {
                return false;
            }
        } else if (!str.equals(textProp.propName)) {
            return false;
        }
        return this.sizeOfDataBlock == textProp.sizeOfDataBlock;
    }

    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("sizeOfDataBlock", new Supplier() { // from class: com.sunia.HTREnginev2.zdn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextProp.this.getSize());
            }
        }, "propName", new Supplier() { // from class: com.sunia.HTREnginev2.aen
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextProp.this.getName();
            }
        }, "dataValue", new Supplier() { // from class: com.sunia.HTREnginev2.ben
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextProp.this.getValue());
            }
        }, "maskInHeader", new Supplier() { // from class: com.sunia.HTREnginev2.cen
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextProp.this.getMask());
            }
        });
    }

    public int getMask() {
        return this.maskInHeader;
    }

    public String getName() {
        return this.propName;
    }

    public int getSize() {
        return this.sizeOfDataBlock;
    }

    public int getValue() {
        return this.dataValue;
    }

    public int getWriteMask() {
        return getMask();
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.dataValue), Integer.valueOf(this.maskInHeader), this.propName, Integer.valueOf(this.sizeOfDataBlock));
    }

    public void setValue(int i) {
        this.dataValue = i;
    }

    public String toString() {
        int size = getSize();
        int i = size != 1 ? size != 2 ? 10 : 6 : 4;
        return String.format(Locale.ROOT, "%s = %d (%0#" + i + "X mask / %d bytes)", getName(), Integer.valueOf(getValue()), Integer.valueOf(getMask()), Integer.valueOf(getSize()));
    }

    @Override // org.apache.poi.common.Duplicatable
    public TextProp copy() {
        return new TextProp(this);
    }

    public TextProp(TextProp textProp) {
        this.sizeOfDataBlock = textProp.sizeOfDataBlock;
        this.maskInHeader = textProp.maskInHeader;
        this.propName = textProp.propName;
        this.dataValue = textProp.dataValue;
    }
}
