package org.apache.poi.hslf.model.textproperties;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.message.Message;
import org.apache.logging.log4j.message.SimpleMessage;
import org.apache.poi.hslf.model.textproperties.BitMaskTextProp;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public abstract class BitMaskTextProp extends TextProp {
    protected static final Logger LOG = LogManager.getLogger((Class<?>) BitMaskTextProp.class);
    private final int[] subPropMasks;
    private final boolean[] subPropMatches;
    private final String[] subPropNames;

    public BitMaskTextProp(BitMaskTextProp bitMaskTextProp) {
        super(bitMaskTextProp);
        String[] strArr = bitMaskTextProp.subPropNames;
        this.subPropNames = strArr == null ? null : (String[]) strArr.clone();
        int[] iArr = bitMaskTextProp.subPropMasks;
        this.subPropMasks = iArr == null ? null : (int[]) iArr.clone();
        boolean[] zArr = bitMaskTextProp.subPropMatches;
        this.subPropMatches = zArr != null ? (boolean[]) zArr.clone() : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return super.getGenericProperties();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Message lambda$setValueWithMask$0(int i) {
        StringBuilder sb = new StringBuilder("The following style attributes of the '");
        sb.append(getName());
        sb.append("' property will be ignored:\n");
        int i2 = 0;
        for (int i3 : this.subPropMasks) {
            if (!this.subPropMatches[i2] && (i3 & i) != 0) {
                sb.append(this.subPropNames[i2]);
                sb.append(",");
            }
            i2++;
        }
        return new SimpleMessage(sb);
    }

    private int maskValue(int i) {
        int[] iArr = this.subPropMasks;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = iArr[i2];
            int i5 = i3 + 1;
            if (!this.subPropMatches[i3]) {
                i &= ~i4;
            }
            i2++;
            i3 = i5;
        }
        return i;
    }

    public BitMaskTextProp cloneAll() {
        BitMaskTextProp copy = copy();
        boolean[] zArr = this.subPropMatches;
        if (zArr != null) {
            System.arraycopy(zArr, 0, copy.subPropMatches, 0, zArr.length);
        }
        return copy;
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp, org.apache.poi.common.Duplicatable
    public abstract BitMaskTextProp copy();

    @Override // org.apache.poi.hslf.model.textproperties.TextProp, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.bs
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = BitMaskTextProp.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.cs
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(BitMaskTextProp.this.getValue());
            }
        }, this.subPropMasks, this.subPropNames));
    }

    public boolean[] getSubPropMatches() {
        return this.subPropMatches;
    }

    public String[] getSubPropNames() {
        return this.subPropNames;
    }

    public boolean getSubValue(int i) {
        if (this.subPropMatches[i]) {
            if ((this.subPropMasks[i] & super.getValue()) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp
    public int getValue() {
        return maskValue(super.getValue());
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp
    public int getWriteMask() {
        int[] iArr = this.subPropMasks;
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = iArr[i];
            int i5 = i3 + 1;
            if (this.subPropMatches[i3]) {
                i2 |= i4;
            }
            i++;
            i3 = i5;
        }
        return i2;
    }

    public void setSubValue(boolean z, int i) {
        this.subPropMatches[i] = true;
        int value = super.getValue();
        super.setValue(z ? this.subPropMasks[i] | value : (~this.subPropMasks[i]) & value);
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp
    public void setValue(int i) {
        super.setValue(i);
        int[] iArr = this.subPropMasks;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i3 + 1;
            this.subPropMatches[i3] = (iArr[i2] & i) != 0;
            i2++;
            i3 = i4;
        }
    }

    public void setValueWithMask(final int i, int i2) {
        setWriteMask(i2);
        super.setValue(maskValue(i));
        if (i != super.getValue()) {
            Logger logger = LOG;
            logger.atWarn().log("Style properties of '{}' don't match mask - output will be sanitized", getName());
            logger.atDebug().log(new org.apache.logging.log4j.util.Supplier() { // from class: com.sunia.HTREnginev2.as
                @Override // org.apache.logging.log4j.util.Supplier
                public final Object get() {
                    Message lambda$setValueWithMask$0;
                    lambda$setValueWithMask$0 = BitMaskTextProp.this.lambda$setValueWithMask$0(i);
                    return lambda$setValueWithMask$0;
                }
            });
        }
    }

    public void setWriteMask(int i) {
        int[] iArr = this.subPropMasks;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i3 + 1;
            this.subPropMatches[i3] = (iArr[i2] & i) != 0;
            i2++;
            i3 = i4;
        }
    }

    public BitMaskTextProp(int i, int i2, String str, String... strArr) {
        super(i, i2, str);
        this.subPropNames = strArr;
        this.subPropMasks = new int[strArr.length];
        this.subPropMatches = new boolean[strArr.length];
        int lowestOneBit = Integer.lowestOneBit(i2);
        int i3 = 0;
        while (true) {
            int[] iArr = this.subPropMasks;
            if (i3 >= iArr.length) {
                return;
            }
            iArr[i3] = lowestOneBit << i3;
            i3++;
        }
    }
}
