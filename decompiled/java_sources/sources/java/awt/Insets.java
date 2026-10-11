package java.awt;

import java.io.Serializable;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class Insets implements Cloneable, Serializable {
    private static final long serialVersionUID = -2272572637695466749L;
    public int bottom;
    public int left;
    public int right;
    public int top;

    public Insets(int i, int i2, int i3, int i4) {
        this.top = i;
        this.left = i2;
        this.bottom = i3;
        this.right = i4;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Insets)) {
            return false;
        }
        Insets insets = (Insets) obj;
        return this.top == insets.top && this.left == insets.left && this.bottom == insets.bottom && this.right == insets.right;
    }

    public int hashCode() {
        int i = this.left;
        int i2 = this.bottom + i;
        int i3 = this.right;
        int i4 = this.top;
        int i5 = i3 + i4;
        int i6 = ((i5 * (i5 + 1)) / 2) + i4;
        int i7 = ((i2 * (i2 + 1)) / 2) + i + i6;
        return ((i7 * (i7 + 1)) / 2) + i6;
    }

    public void set(int i, int i2, int i3, int i4) {
        this.top = i;
        this.left = i2;
        this.bottom = i3;
        this.right = i4;
    }

    public String toString() {
        return getClass().getName() + "[top=" + this.top + ",left=" + this.left + ",bottom=" + this.bottom + ",right=" + this.right + IteratorUtils.f104924b;
    }
}
