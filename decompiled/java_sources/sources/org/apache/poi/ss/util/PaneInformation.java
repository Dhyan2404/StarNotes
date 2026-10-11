package org.apache.poi.ss.util;

import java.util.Objects;
import org.apache.poi.ss.usermodel.PaneType;

/* loaded from: classes13.dex */
public class PaneInformation {
    public static final byte PANE_LOWER_LEFT = 2;
    public static final byte PANE_LOWER_RIGHT = 0;
    public static final byte PANE_UPPER_LEFT = 3;
    public static final byte PANE_UPPER_RIGHT = 1;
    private final byte activePane;
    private final boolean frozen;
    private final short leftColumn;
    private final short topRow;

    /* renamed from: x */
    private final short f111582x;

    /* renamed from: y */
    private final short f111583y;

    public PaneInformation(short s, short s2, short s3, short s4, byte b, boolean z) {
        this.f111582x = s;
        this.f111583y = s2;
        this.topRow = s3;
        this.leftColumn = s4;
        this.activePane = b;
        this.frozen = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PaneInformation)) {
            return false;
        }
        PaneInformation paneInformation = (PaneInformation) obj;
        return this.f111582x == paneInformation.f111582x && this.f111583y == paneInformation.f111583y && this.topRow == paneInformation.topRow && this.leftColumn == paneInformation.leftColumn && this.activePane == paneInformation.activePane && this.frozen == paneInformation.frozen;
    }

    public byte getActivePane() {
        return this.activePane;
    }

    public PaneType getActivePaneType() {
        byte b = this.activePane;
        if (b == 0) {
            return PaneType.LOWER_RIGHT;
        }
        if (b == 1) {
            return PaneType.UPPER_RIGHT;
        }
        if (b == 2) {
            return PaneType.LOWER_LEFT;
        }
        if (b != 3) {
            return null;
        }
        return PaneType.UPPER_LEFT;
    }

    public short getHorizontalSplitPosition() {
        return this.f111583y;
    }

    public short getHorizontalSplitTopRow() {
        return this.topRow;
    }

    public short getVerticalSplitLeftColumn() {
        return this.leftColumn;
    }

    public short getVerticalSplitPosition() {
        return this.f111582x;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.f111582x), Short.valueOf(this.f111583y), Short.valueOf(this.topRow), Short.valueOf(this.leftColumn), Byte.valueOf(this.activePane), Boolean.valueOf(this.frozen));
    }

    public boolean isFreezePane() {
        return this.frozen;
    }
}
