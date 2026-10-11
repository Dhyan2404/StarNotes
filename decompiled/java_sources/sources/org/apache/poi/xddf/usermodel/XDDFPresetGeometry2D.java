package org.apache.poi.xddf.usermodel;

import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.apache.poi.util.Internal;
import org.apache.poi.xddf.usermodel.XDDFGeometryGuide;
import org.apache.poi.xddf.usermodel.XDDFPresetGeometry2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuide;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D;

/* loaded from: classes13.dex */
public class XDDFPresetGeometry2D {
    private CTPresetGeometry2D geometry;

    public XDDFPresetGeometry2D(CTPresetGeometry2D cTPresetGeometry2D) {
        this.geometry = cTPresetGeometry2D;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XDDFGeometryGuide lambda$getAdjustValues$0(CTGeomGuide cTGeomGuide) {
        return new XDDFGeometryGuide(cTGeomGuide);
    }

    public XDDFGeometryGuide addAdjustValue() {
        if (!this.geometry.isSetAvLst()) {
            this.geometry.addNewAvLst();
        }
        return new XDDFGeometryGuide(this.geometry.getAvLst().addNewGd());
    }

    public XDDFGeometryGuide getAdjustValue(int i) {
        if (this.geometry.isSetAvLst()) {
            return new XDDFGeometryGuide(this.geometry.getAvLst().getGdArray(i));
        }
        return null;
    }

    public List<XDDFGeometryGuide> getAdjustValues() {
        return this.geometry.isSetAvLst() ? Collections.unmodifiableList((List) this.geometry.getAvLst().getGdList().stream().map(new Function() { // from class: com.sunia.HTREnginev2.ldo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFGeometryGuide lambda$getAdjustValues$0;
                lambda$getAdjustValues$0 = XDDFPresetGeometry2D.lambda$getAdjustValues$0((CTGeomGuide) obj);
                return lambda$getAdjustValues$0;
            }
        }).collect(Collectors.toList())) : Collections.emptyList();
    }

    public PresetGeometry getGeometry() {
        return PresetGeometry.valueOf(this.geometry.getPrst());
    }

    @Internal
    public CTPresetGeometry2D getXmlObject() {
        return this.geometry;
    }

    public XDDFGeometryGuide insertAdjustValue(int i) {
        if (!this.geometry.isSetAvLst()) {
            this.geometry.addNewAvLst();
        }
        return new XDDFGeometryGuide(this.geometry.getAvLst().insertNewGd(i));
    }

    public void removeAdjustValue(int i) {
        if (this.geometry.isSetAvLst()) {
            this.geometry.getAvLst().removeGd(i);
        }
    }

    public void setGeometry(PresetGeometry presetGeometry) {
        this.geometry.setPrst(presetGeometry.underlying);
    }
}
