package org.apache.poi.hslf.model.textproperties;

import java.util.Map;
import java.util.Objects;
import java.util.function.Supplier;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hslf.model.textproperties.HSLFTabStop;
import org.apache.poi.sl.usermodel.TabStop;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;

@Internal
/* loaded from: classes12.dex */
public class HSLFTabStop implements TabStop, Duplicatable, GenericRecord {
    private int position;
    private TabStop.TabStopType type;

    public HSLFTabStop(int i, TabStop.TabStopType tabStopType) {
        this.position = i;
        this.type = tabStopType;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HSLFTabStop)) {
            return false;
        }
        HSLFTabStop hSLFTabStop = (HSLFTabStop) obj;
        return this.position == hSLFTabStop.position && this.type == hSLFTabStop.type;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("type", new Supplier() { // from class: com.sunia.HTREnginev2.v7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return HSLFTabStop.this.getType();
            }
        }, "position", new Supplier() { // from class: com.sunia.HTREnginev2.w7h
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(HSLFTabStop.this.getPosition());
            }
        });
    }

    public int getPosition() {
        return this.position;
    }

    @Override // org.apache.poi.sl.usermodel.TabStop
    public double getPositionInPoints() {
        return Units.masterToPoints(getPosition());
    }

    @Override // org.apache.poi.sl.usermodel.TabStop
    public TabStop.TabStopType getType() {
        return this.type;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.position), this.type);
    }

    public void setPosition(int i) {
        this.position = i;
    }

    @Override // org.apache.poi.sl.usermodel.TabStop
    public void setPositionInPoints(double d) {
        setPosition(Units.pointsToMaster(d));
    }

    @Override // org.apache.poi.sl.usermodel.TabStop
    public void setType(TabStop.TabStopType tabStopType) {
        this.type = tabStopType;
    }

    public String toString() {
        return this.type + " @ " + this.position;
    }

    @Override // org.apache.poi.common.Duplicatable
    public HSLFTabStop copy() {
        return new HSLFTabStop(this);
    }

    public HSLFTabStop(HSLFTabStop hSLFTabStop) {
        this.position = hSLFTabStop.position;
        this.type = hSLFTabStop.type;
    }
}
