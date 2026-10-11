package org.apache.poi.hwpf.model;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.function.ToIntFunction;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.PropertyNode;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public abstract class PropertyNode<T extends PropertyNode<T>> implements Comparable<T>, Duplicatable {
    protected Object _buf;
    private int _cpEnd;
    private int _cpStart;
    public static final Comparator<PropertyNode<?>> EndComparator = Comparator.comparingInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.w8l
        @Override // java.util.function.ToIntFunction
        public final int applyAsInt(Object obj) {
            return ((PropertyNode) obj).getEnd();
        }
    });
    public static final Comparator<PropertyNode<?>> StartComparator = Comparator.comparingInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.x8l
        @Override // java.util.function.ToIntFunction
        public final int applyAsInt(Object obj) {
            return ((PropertyNode) obj).getStart();
        }
    });
    private static final Logger LOG = LogManager.getLogger((Class<?>) PropertyNode.class);

    public PropertyNode(PropertyNode<T> propertyNode) {
        this._buf = propertyNode._buf;
        this._cpStart = propertyNode._cpStart;
        this._cpEnd = propertyNode._cpEnd;
    }

    public void adjustForDelete(int i, int i2) {
        int i3 = i + i2;
        int i4 = this._cpEnd;
        if (i4 > i) {
            int i5 = this._cpStart;
            if (i5 < i3) {
                this._cpEnd = i3 >= i4 ? i : i4 - i2;
                this._cpStart = Math.min(i, i5);
            } else {
                this._cpEnd = i4 - i2;
                this._cpStart = i5 - i2;
            }
        }
    }

    @Override // org.apache.poi.common.Duplicatable
    public abstract PropertyNode<?> copy();

    public boolean equals(Object obj) {
        if (!(obj instanceof PropertyNode) || !limitsAreEqual(obj)) {
            return false;
        }
        Object obj2 = ((PropertyNode) obj)._buf;
        if (obj2 instanceof byte[]) {
            Object obj3 = this._buf;
            if (obj3 instanceof byte[]) {
                return Arrays.equals((byte[]) obj2, (byte[]) obj3);
            }
        }
        return this._buf.equals(obj2);
    }

    public int getEnd() {
        return this._cpEnd;
    }

    public int getStart() {
        return this._cpStart;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this._cpStart), this._buf);
    }

    public boolean limitsAreEqual(Object obj) {
        PropertyNode propertyNode = (PropertyNode) obj;
        return propertyNode.getStart() == this._cpStart && propertyNode.getEnd() == this._cpEnd;
    }

    public void setEnd(int i) {
        this._cpEnd = i;
    }

    public void setStart(int i) {
        this._cpStart = i;
    }

    @Override // java.lang.Comparable
    public int compareTo(T t) {
        return Integer.compare(this._cpEnd, t.getEnd());
    }

    public PropertyNode(int i, int i2, Object obj) {
        this._cpStart = i;
        this._cpEnd = i2;
        this._buf = obj;
        if (i < 0) {
            LOG.atWarn().log("A property claimed to start before zero, at {}! Resetting it to zero, and hoping for the best", Unbox.box(this._cpStart));
            this._cpStart = 0;
        }
        if (this._cpEnd < this._cpStart) {
            LOG.atWarn().log("A property claimed to end ({}) before start! Resetting end to start, and hoping for the best", Unbox.box(this._cpEnd));
            this._cpEnd = this._cpStart;
        }
    }
}
