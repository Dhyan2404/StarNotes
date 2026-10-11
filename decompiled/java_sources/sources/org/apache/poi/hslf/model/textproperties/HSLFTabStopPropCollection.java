package org.apache.poi.hslf.model.textproperties;

import com.sunia.HTREnginev2.gon;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.poi.hslf.model.textproperties.HSLFTabStop;
import org.apache.poi.hslf.model.textproperties.HSLFTabStopPropCollection;
import org.apache.poi.sl.usermodel.TabStop;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianByteArrayInputStream;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.LittleEndianOutputStream;

@Internal
/* loaded from: classes12.dex */
public class HSLFTabStopPropCollection extends TextProp {
    public static final String NAME = "tabStops";
    private final List<HSLFTabStop> tabStops;

    public HSLFTabStopPropCollection() {
        super(0, 1048576, NAME);
        this.tabStops = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    public static List<HSLFTabStop> readTabStops(LittleEndianInput littleEndianInput) {
        int readUShort = littleEndianInput.readUShort();
        ArrayList arrayList = new ArrayList(readUShort);
        for (int i = 0; i < readUShort; i++) {
            arrayList.add(new HSLFTabStop(littleEndianInput.readShort(), TabStop.TabStopType.fromNativeId(littleEndianInput.readShort())));
        }
        return arrayList;
    }

    public static void writeTabStops(LittleEndianOutput littleEndianOutput, List<HSLFTabStop> list) {
        littleEndianOutput.writeShort(list.size());
        for (HSLFTabStop hSLFTabStop : list) {
            littleEndianOutput.writeShort(hSLFTabStop.getPosition());
            littleEndianOutput.writeShort((hSLFTabStop.getType() == null ? TabStop.TabStopType.LEFT : hSLFTabStop.getType()).nativeId);
        }
    }

    public void addTabStop(HSLFTabStop hSLFTabStop) {
        this.tabStops.add(hSLFTabStop);
    }

    public void clearTabs() {
        this.tabStops.clear();
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HSLFTabStopPropCollection)) {
            return false;
        }
        HSLFTabStopPropCollection hSLFTabStopPropCollection = (HSLFTabStopPropCollection) obj;
        if (super.equals(hSLFTabStopPropCollection)) {
            return this.tabStops.equals(hSLFTabStopPropCollection.tabStops);
        }
        return false;
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.x7h
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = HSLFTabStopPropCollection.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, NAME, new Supplier() { // from class: com.sunia.HTREnginev2.y7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return HSLFTabStopPropCollection.this.getTabStops();
            }
        });
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp
    public int getSize() {
        return (this.tabStops.size() * 4) + 2;
    }

    public List<HSLFTabStop> getTabStops() {
        return this.tabStops;
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp
    public int getValue() {
        return this.tabStops.size();
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.tabStops);
    }

    public void parseProperty(byte[] bArr, int i) {
        this.tabStops.addAll(readTabStops(new LittleEndianByteArrayInputStream(bArr, i)));
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp
    public String toString() {
        StringBuilder sb = new StringBuilder(super.toString());
        sb.append(" [ ");
        boolean z = true;
        for (HSLFTabStop hSLFTabStop : this.tabStops) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(hSLFTabStop.getType());
            sb.append(" @ ");
            sb.append(hSLFTabStop.getPosition());
            z = false;
        }
        sb.append(" ]");
        return sb.toString();
    }

    public void writeProperty(OutputStream outputStream) {
        writeTabStops(new LittleEndianOutputStream(outputStream), this.tabStops);
    }

    public HSLFTabStopPropCollection(HSLFTabStopPropCollection hSLFTabStopPropCollection) {
        super(hSLFTabStopPropCollection);
        final ArrayList arrayList = new ArrayList();
        this.tabStops = arrayList;
        hSLFTabStopPropCollection.tabStops.stream().map(new Function() { // from class: com.sunia.HTREnginev2.z7h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((HSLFTabStop) obj).copy();
            }
        }).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.a8h
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((HSLFTabStop) obj);
            }
        });
    }

    @Override // org.apache.poi.hslf.model.textproperties.TextProp, org.apache.poi.common.Duplicatable
    public HSLFTabStopPropCollection copy() {
        return new HSLFTabStopPropCollection(this);
    }
}
