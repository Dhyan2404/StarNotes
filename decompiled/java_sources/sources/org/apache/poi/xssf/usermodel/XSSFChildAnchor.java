package org.apache.poi.xssf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;

/* loaded from: classes13.dex */
public final class XSSFChildAnchor extends XSSFAnchor {
    private CTTransform2D t2d;

    public XSSFChildAnchor(int i, int i2, int i3, int i4) {
        CTTransform2D newInstance = CTTransform2D.Factory.newInstance();
        this.t2d = newInstance;
        CTPoint2D addNewOff = newInstance.addNewOff();
        CTPositiveSize2D addNewExt = this.t2d.addNewExt();
        addNewOff.setX(Integer.valueOf(i));
        addNewOff.setY(Integer.valueOf(i2));
        addNewExt.setCx(Math.abs(i3 - i));
        addNewExt.setCy(Math.abs(i4 - i2));
        if (i > i3) {
            this.t2d.setFlipH(true);
        }
        if (i2 > i4) {
            this.t2d.setFlipV(true);
        }
    }

    @Internal
    public CTTransform2D getCTTransform2D() {
        return this.t2d;
    }

    @Override // org.apache.poi.ss.usermodel.ChildAnchor
    public int getDx1() {
        return ((Integer) this.t2d.getOff().getX()).intValue();
    }

    @Override // org.apache.poi.ss.usermodel.ChildAnchor
    public int getDx2() {
        return (int) (getDx1() + this.t2d.getExt().getCx());
    }

    @Override // org.apache.poi.ss.usermodel.ChildAnchor
    public int getDy1() {
        return ((Integer) this.t2d.getOff().getY()).intValue();
    }

    @Override // org.apache.poi.ss.usermodel.ChildAnchor
    public int getDy2() {
        return (int) (getDy1() + this.t2d.getExt().getCy());
    }

    @Override // org.apache.poi.ss.usermodel.ChildAnchor
    public void setDx1(int i) {
        this.t2d.getOff().setX(Integer.valueOf(i));
    }

    @Override // org.apache.poi.ss.usermodel.ChildAnchor
    public void setDx2(int i) {
        this.t2d.getExt().setCx(i - getDx1());
    }

    @Override // org.apache.poi.ss.usermodel.ChildAnchor
    public void setDy1(int i) {
        this.t2d.getOff().setY(Integer.valueOf(i));
    }

    @Override // org.apache.poi.ss.usermodel.ChildAnchor
    public void setDy2(int i) {
        this.t2d.getExt().setCy(i - getDy1());
    }

    public XSSFChildAnchor(CTTransform2D cTTransform2D) {
        this.t2d = cTTransform2D;
    }
}
