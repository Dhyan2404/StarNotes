package org.apache.poi.hssf.usermodel;

import org.apache.poi.ddf.EscherChildAnchorRecord;
import org.apache.poi.ddf.EscherClientAnchorRecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ss.usermodel.ChildAnchor;

/* loaded from: classes12.dex */
public abstract class HSSFAnchor implements ChildAnchor {
    protected boolean _isHorizontallyFlipped;
    protected boolean _isVerticallyFlipped;

    public HSSFAnchor() {
        createEscherAnchor();
    }

    public static HSSFAnchor createAnchorFromEscher(EscherContainerRecord escherContainerRecord) {
        short s = EscherChildAnchorRecord.RECORD_ID;
        if (escherContainerRecord.getChildById(s) != null) {
            return new HSSFChildAnchor((EscherChildAnchorRecord) escherContainerRecord.getChildById(s));
        }
        short s2 = EscherClientAnchorRecord.RECORD_ID;
        if (escherContainerRecord.getChildById(s2) != null) {
            return new HSSFClientAnchor((EscherClientAnchorRecord) escherContainerRecord.getChildById(s2));
        }
        return null;
    }

    public abstract void createEscherAnchor();

    public abstract EscherRecord getEscherAnchor();

    public abstract boolean isHorizontallyFlipped();

    public abstract boolean isVerticallyFlipped();

    public HSSFAnchor(int i, int i2, int i3, int i4) {
        createEscherAnchor();
        setDx1(i);
        setDy1(i2);
        setDx2(i3);
        setDy2(i4);
    }
}
