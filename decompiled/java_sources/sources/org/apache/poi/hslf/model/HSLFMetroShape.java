package org.apache.poi.hslf.model;

import java.io.IOException;
import java.util.Iterator;
import java.util.ServiceLoader;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherComplexProperty;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherTertiaryOptRecord;
import org.apache.poi.hslf.usermodel.HSLFShape;
import org.apache.poi.sl.usermodel.MetroShapeProvider;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.sl.usermodel.TextRun;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class HSLFMetroShape<S extends Shape<S, P>, P extends TextParagraph<S, P, ? extends TextRun>> {
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) HSLFMetroShape.class);
    private final HSLFShape shape;

    public HSLFMetroShape(HSLFShape hSLFShape) {
        this.shape = hSLFShape;
    }

    private EscherComplexProperty getMetroProp() {
        AbstractEscherOptRecord abstractEscherOptRecord = (AbstractEscherOptRecord) this.shape.getEscherChild(EscherTertiaryOptRecord.RECORD_ID);
        if (abstractEscherOptRecord == null) {
            return null;
        }
        return (EscherComplexProperty) abstractEscherOptRecord.lookup(EscherPropertyTypes.GROUPSHAPE__METROBLOB.propNumber);
    }

    public byte[] getMetroBytes() {
        EscherComplexProperty metroProp = getMetroProp();
        if (metroProp == null) {
            return null;
        }
        return metroProp.getComplexData();
    }

    public Shape<S, P> getShape() {
        IOException e;
        byte[] metroBytes = getMetroBytes();
        if (metroBytes == null) {
            return null;
        }
        Iterator it2 = ServiceLoader.load(MetroShapeProvider.class, HSLFMetroShape.class.getClassLoader()).iterator();
        if (it2.hasNext()) {
            try {
                return (Shape<S, P>) ((MetroShapeProvider) it2.next()).parseShape(metroBytes);
            } catch (IOException e2) {
                e = e2;
            }
        } else {
            e = null;
        }
        LOGGER.atError().withThrowable(e).log("can't process metro blob, check if all dependencies for POI OOXML are in the classpath.");
        return null;
    }

    public boolean hasMetroBlob() {
        return getMetroProp() != null;
    }
}
