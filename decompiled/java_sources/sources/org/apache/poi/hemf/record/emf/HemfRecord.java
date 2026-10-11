package org.apache.poi.hemf.record.emf;

import java.awt.geom.Rectangle2D;
import java.io.IOException;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hwmf.record.HwmfRecord;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInputStream;

@Internal
/* loaded from: classes12.dex */
public interface HemfRecord extends GenericRecord {

    /* loaded from: classes12.dex */
    public interface RenderBounds {
        Rectangle2D getBounds();

        HemfGraphics.EmfRenderState getState();

        Rectangle2D getViewport();

        Rectangle2D getWindow();

        void setState(HemfGraphics.EmfRenderState emfRenderState);
    }

    default void calcBounds(RenderBounds renderBounds) {
    }

    default void draw(HemfGraphics hemfGraphics) {
        if (this instanceof HwmfRecord) {
            ((HwmfRecord) this).draw(hemfGraphics);
        }
    }

    HemfRecordType getEmfRecordType();

    long init(LittleEndianInputStream littleEndianInputStream, long j, long j2) throws IOException;

    default void setHeader(HemfHeader hemfHeader) {
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    default HemfRecordType getGenericRecordType() {
        return getEmfRecordType();
    }
}
