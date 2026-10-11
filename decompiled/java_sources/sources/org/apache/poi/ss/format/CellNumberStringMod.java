package org.apache.poi.ss.format;

import org.apache.poi.ss.format.CellNumberFormatter;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
public class CellNumberStringMod implements Comparable<CellNumberStringMod> {
    public static final int AFTER = 2;
    public static final int BEFORE = 1;
    public static final int REPLACE = 3;
    private CellNumberFormatter.Special end;
    private boolean endInclusive;

    /* renamed from: op */
    private final int f111521op;
    private final CellNumberFormatter.Special special;
    private boolean startInclusive;
    private CharSequence toAdd;

    public CellNumberStringMod(CellNumberFormatter.Special special, CharSequence charSequence, int i) {
        this.special = special;
        this.toAdd = charSequence;
        this.f111521op = i;
    }

    public boolean equals(Object obj) {
        return (obj instanceof CellNumberStringMod) && compareTo((CellNumberStringMod) obj) == 0;
    }

    public CellNumberFormatter.Special getEnd() {
        return this.end;
    }

    public int getOp() {
        return this.f111521op;
    }

    public CellNumberFormatter.Special getSpecial() {
        return this.special;
    }

    public CharSequence getToAdd() {
        return this.toAdd;
    }

    public int hashCode() {
        return this.special.hashCode() + this.f111521op;
    }

    public boolean isEndInclusive() {
        return this.endInclusive;
    }

    public boolean isStartInclusive() {
        return this.startInclusive;
    }

    @Override // java.lang.Comparable
    public int compareTo(CellNumberStringMod cellNumberStringMod) {
        int i = this.special.pos - cellNumberStringMod.special.pos;
        return i != 0 ? i : this.f111521op - cellNumberStringMod.f111521op;
    }

    public CellNumberStringMod(CellNumberFormatter.Special special, boolean z, CellNumberFormatter.Special special2, boolean z2, char c) {
        this(special, z, special2, z2);
        this.toAdd = c + "";
    }

    public CellNumberStringMod(CellNumberFormatter.Special special, boolean z, CellNumberFormatter.Special special2, boolean z2) {
        this.special = special;
        this.startInclusive = z;
        this.end = special2;
        this.endInclusive = z2;
        this.f111521op = 3;
        this.toAdd = "";
    }
}
