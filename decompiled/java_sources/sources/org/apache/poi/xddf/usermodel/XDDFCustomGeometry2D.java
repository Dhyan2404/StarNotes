package org.apache.poi.xddf.usermodel;

import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.apache.poi.util.Internal;
import org.apache.poi.xddf.usermodel.XDDFAdjustHandlePolar;
import org.apache.poi.xddf.usermodel.XDDFAdjustHandleXY;
import org.apache.poi.xddf.usermodel.XDDFConnectionSite;
import org.apache.poi.xddf.usermodel.XDDFCustomGeometry2D;
import org.apache.poi.xddf.usermodel.XDDFGeometryGuide;
import org.apache.poi.xddf.usermodel.XDDFPath;
import org.openxmlformats.schemas.drawingml.x2006.main.CTConnectionSite;
import org.openxmlformats.schemas.drawingml.x2006.main.CTCustomGeometry2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGeomGuide;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPolarAdjustHandle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTXYAdjustHandle;

/* loaded from: classes13.dex */
public class XDDFCustomGeometry2D {
    private CTCustomGeometry2D geometry;

    public XDDFCustomGeometry2D(CTCustomGeometry2D cTCustomGeometry2D) {
        this.geometry = cTCustomGeometry2D;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XDDFGeometryGuide lambda$getAdjustValues$2(CTGeomGuide cTGeomGuide) {
        return new XDDFGeometryGuide(cTGeomGuide);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XDDFConnectionSite lambda$getConnectionSites$3(CTConnectionSite cTConnectionSite) {
        return new XDDFConnectionSite(cTConnectionSite);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XDDFGeometryGuide lambda$getGuides$4(CTGeomGuide cTGeomGuide) {
        return new XDDFGeometryGuide(cTGeomGuide);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XDDFPath lambda$getPaths$5(CTPath2D cTPath2D) {
        return new XDDFPath(cTPath2D);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XDDFAdjustHandlePolar lambda$getPolarAdjustHandles$0(CTPolarAdjustHandle cTPolarAdjustHandle) {
        return new XDDFAdjustHandlePolar(cTPolarAdjustHandle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XDDFAdjustHandleXY lambda$getXYAdjustHandles$1(CTXYAdjustHandle cTXYAdjustHandle) {
        return new XDDFAdjustHandleXY(cTXYAdjustHandle);
    }

    public XDDFGeometryGuide addAdjustValue() {
        if (!this.geometry.isSetAvLst()) {
            this.geometry.addNewAvLst();
        }
        return new XDDFGeometryGuide(this.geometry.getAvLst().addNewGd());
    }

    public XDDFConnectionSite addConnectionSite() {
        if (!this.geometry.isSetCxnLst()) {
            this.geometry.addNewCxnLst();
        }
        return new XDDFConnectionSite(this.geometry.getCxnLst().addNewCxn());
    }

    public XDDFGeometryGuide addGuide() {
        if (!this.geometry.isSetGdLst()) {
            this.geometry.addNewGdLst();
        }
        return new XDDFGeometryGuide(this.geometry.getGdLst().addNewGd());
    }

    public XDDFPath addNewPath() {
        return new XDDFPath(this.geometry.getPathLst().addNewPath());
    }

    public XDDFAdjustHandlePolar addPolarAdjustHandle() {
        if (!this.geometry.isSetAhLst()) {
            this.geometry.addNewAhLst();
        }
        return new XDDFAdjustHandlePolar(this.geometry.getAhLst().addNewAhPolar());
    }

    public XDDFAdjustHandleXY addXYAdjustHandle() {
        if (!this.geometry.isSetAhLst()) {
            this.geometry.addNewAhLst();
        }
        return new XDDFAdjustHandleXY(this.geometry.getAhLst().addNewAhXY());
    }

    public XDDFGeometryGuide getAdjustValue(int i) {
        if (this.geometry.isSetAvLst()) {
            return new XDDFGeometryGuide(this.geometry.getAvLst().getGdArray(i));
        }
        return null;
    }

    public List<XDDFGeometryGuide> getAdjustValues() {
        return this.geometry.isSetAvLst() ? Collections.unmodifiableList((List) this.geometry.getAvLst().getGdList().stream().map(new Function() { // from class: com.sunia.HTREnginev2.fdo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFGeometryGuide lambda$getAdjustValues$2;
                lambda$getAdjustValues$2 = XDDFCustomGeometry2D.lambda$getAdjustValues$2((CTGeomGuide) obj);
                return lambda$getAdjustValues$2;
            }
        }).collect(Collectors.toList())) : Collections.emptyList();
    }

    public XDDFConnectionSite getConnectionSite(int i) {
        if (this.geometry.isSetCxnLst()) {
            return new XDDFConnectionSite(this.geometry.getCxnLst().getCxnArray(i));
        }
        return null;
    }

    public List<XDDFConnectionSite> getConnectionSites() {
        return this.geometry.isSetCxnLst() ? Collections.unmodifiableList((List) this.geometry.getCxnLst().getCxnList().stream().map(new Function() { // from class: com.sunia.HTREnginev2.gdo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFConnectionSite lambda$getConnectionSites$3;
                lambda$getConnectionSites$3 = XDDFCustomGeometry2D.lambda$getConnectionSites$3((CTConnectionSite) obj);
                return lambda$getConnectionSites$3;
            }
        }).collect(Collectors.toList())) : Collections.emptyList();
    }

    public XDDFGeometryGuide getGuide(int i) {
        if (this.geometry.isSetGdLst()) {
            return new XDDFGeometryGuide(this.geometry.getGdLst().getGdArray(i));
        }
        return null;
    }

    public List<XDDFGeometryGuide> getGuides() {
        return this.geometry.isSetGdLst() ? Collections.unmodifiableList((List) this.geometry.getGdLst().getGdList().stream().map(new Function() { // from class: com.sunia.HTREnginev2.hdo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFGeometryGuide lambda$getGuides$4;
                lambda$getGuides$4 = XDDFCustomGeometry2D.lambda$getGuides$4((CTGeomGuide) obj);
                return lambda$getGuides$4;
            }
        }).collect(Collectors.toList())) : Collections.emptyList();
    }

    public XDDFPath getPath(int i) {
        return new XDDFPath(this.geometry.getPathLst().getPathArray(i));
    }

    public List<XDDFPath> getPaths() {
        return Collections.unmodifiableList((List) this.geometry.getPathLst().getPathList().stream().map(new Function() { // from class: com.sunia.HTREnginev2.cdo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFPath lambda$getPaths$5;
                lambda$getPaths$5 = XDDFCustomGeometry2D.lambda$getPaths$5((CTPath2D) obj);
                return lambda$getPaths$5;
            }
        }).collect(Collectors.toList()));
    }

    public XDDFAdjustHandlePolar getPolarAdjustHandle(int i) {
        if (this.geometry.isSetAhLst()) {
            return new XDDFAdjustHandlePolar(this.geometry.getAhLst().getAhPolarArray(i));
        }
        return null;
    }

    public List<XDDFAdjustHandlePolar> getPolarAdjustHandles() {
        return this.geometry.isSetAhLst() ? Collections.unmodifiableList((List) this.geometry.getAhLst().getAhPolarList().stream().map(new Function() { // from class: com.sunia.HTREnginev2.edo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFAdjustHandlePolar lambda$getPolarAdjustHandles$0;
                lambda$getPolarAdjustHandles$0 = XDDFCustomGeometry2D.lambda$getPolarAdjustHandles$0((CTPolarAdjustHandle) obj);
                return lambda$getPolarAdjustHandles$0;
            }
        }).collect(Collectors.toList())) : Collections.emptyList();
    }

    public XDDFGeometryRectangle getRectangle() {
        if (this.geometry.isSetRect()) {
            return new XDDFGeometryRectangle(this.geometry.getRect());
        }
        return null;
    }

    public XDDFAdjustHandleXY getXYAdjustHandle(int i) {
        if (this.geometry.isSetAhLst()) {
            return new XDDFAdjustHandleXY(this.geometry.getAhLst().getAhXYArray(i));
        }
        return null;
    }

    public List<XDDFAdjustHandleXY> getXYAdjustHandles() {
        return this.geometry.isSetAhLst() ? Collections.unmodifiableList((List) this.geometry.getAhLst().getAhXYList().stream().map(new Function() { // from class: com.sunia.HTREnginev2.ddo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XDDFAdjustHandleXY lambda$getXYAdjustHandles$1;
                lambda$getXYAdjustHandles$1 = XDDFCustomGeometry2D.lambda$getXYAdjustHandles$1((CTXYAdjustHandle) obj);
                return lambda$getXYAdjustHandles$1;
            }
        }).collect(Collectors.toList())) : Collections.emptyList();
    }

    @Internal
    public CTCustomGeometry2D getXmlObject() {
        return this.geometry;
    }

    public XDDFGeometryGuide insertAdjustValue(int i) {
        if (!this.geometry.isSetAvLst()) {
            this.geometry.addNewAvLst();
        }
        return new XDDFGeometryGuide(this.geometry.getAvLst().insertNewGd(i));
    }

    public XDDFConnectionSite insertConnectionSite(int i) {
        if (!this.geometry.isSetCxnLst()) {
            this.geometry.addNewCxnLst();
        }
        return new XDDFConnectionSite(this.geometry.getCxnLst().insertNewCxn(i));
    }

    public XDDFGeometryGuide insertGuide(int i) {
        if (!this.geometry.isSetGdLst()) {
            this.geometry.addNewGdLst();
        }
        return new XDDFGeometryGuide(this.geometry.getGdLst().insertNewGd(i));
    }

    public XDDFPath insertNewPath(int i) {
        return new XDDFPath(this.geometry.getPathLst().insertNewPath(i));
    }

    public XDDFAdjustHandlePolar insertPolarAdjustHandle(int i) {
        if (!this.geometry.isSetAhLst()) {
            this.geometry.addNewAhLst();
        }
        return new XDDFAdjustHandlePolar(this.geometry.getAhLst().insertNewAhPolar(i));
    }

    public XDDFAdjustHandleXY insertXYAdjustHandle(int i) {
        if (!this.geometry.isSetAhLst()) {
            this.geometry.addNewAhLst();
        }
        return new XDDFAdjustHandleXY(this.geometry.getAhLst().insertNewAhXY(i));
    }

    public void removeAdjustValue(int i) {
        if (this.geometry.isSetAvLst()) {
            this.geometry.getAvLst().removeGd(i);
        }
    }

    public void removeConnectionSite(int i) {
        if (this.geometry.isSetCxnLst()) {
            this.geometry.getCxnLst().removeCxn(i);
        }
    }

    public void removeGuide(int i) {
        if (this.geometry.isSetGdLst()) {
            this.geometry.getGdLst().removeGd(i);
        }
    }

    public void removePath(int i) {
        this.geometry.getPathLst().removePath(i);
    }

    public void removePolarAdjustHandle(int i) {
        if (this.geometry.isSetAhLst()) {
            this.geometry.getAhLst().removeAhPolar(i);
        }
    }

    public void removeXYAdjustHandle(int i) {
        if (this.geometry.isSetAhLst()) {
            this.geometry.getAhLst().removeAhXY(i);
        }
    }

    public void setRectangle(XDDFGeometryRectangle xDDFGeometryRectangle) {
        if (xDDFGeometryRectangle != null) {
            this.geometry.setRect(xDDFGeometryRectangle.getXmlObject());
        } else if (this.geometry.isSetRect()) {
            this.geometry.unsetRect();
        }
    }
}
