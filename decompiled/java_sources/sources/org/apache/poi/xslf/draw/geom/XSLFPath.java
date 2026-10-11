package org.apache.poi.xslf.draw.geom;

import java.awt.geom.Path2D;
import org.apache.poi.sl.draw.geom.ClosePathCommand;
import org.apache.poi.sl.draw.geom.Context;
import org.apache.poi.sl.draw.geom.PathCommand;
import org.apache.poi.sl.draw.geom.PathIf;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DArcTo;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DClose;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DCubicBezierTo;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DLineTo;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DMoveTo;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPath2DQuadBezierTo;
import org.openxmlformats.schemas.drawingml.x2006.main.STPathFillMode;

/* loaded from: classes13.dex */
public class XSLFPath implements PathIf {
    private final CTPath2D pathXml;

    /* renamed from: org.apache.poi.xslf.draw.geom.XSLFPath$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C198901 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier;

        static {
            int[] iArr = new int[PaintStyle.PaintModifier.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier = iArr;
            try {
                iArr[PaintStyle.PaintModifier.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier[PaintStyle.PaintModifier.NORM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier[PaintStyle.PaintModifier.LIGHTEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier[PaintStyle.PaintModifier.LIGHTEN_LESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier[PaintStyle.PaintModifier.DARKEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier[PaintStyle.PaintModifier.DARKEN_LESS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public XSLFPath(CTPath2D cTPath2D) {
        this.pathXml = cTPath2D;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public void addCommand(PathCommand pathCommand) {
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public PaintStyle.PaintModifier getFill() {
        int intValue = this.pathXml.getFill().intValue();
        return intValue != 2 ? intValue != 3 ? intValue != 4 ? intValue != 5 ? intValue != 6 ? PaintStyle.PaintModifier.NONE : PaintStyle.PaintModifier.DARKEN_LESS : PaintStyle.PaintModifier.DARKEN : PaintStyle.PaintModifier.LIGHTEN_LESS : PaintStyle.PaintModifier.LIGHTEN : PaintStyle.PaintModifier.NORM;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public long getH() {
        return this.pathXml.getH();
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public Path2D.Double getPath(Context context) {
        PathCommand closePathCommand;
        Path2D.Double r0 = new Path2D.Double();
        XmlCursor newCursor = this.pathXml.newCursor();
        try {
            for (boolean firstChild = newCursor.toFirstChild(); firstChild; firstChild = newCursor.toNextSibling()) {
                XmlObject object = newCursor.getObject();
                if (object instanceof CTPath2DArcTo) {
                    closePathCommand = new XSLFArcTo((CTPath2DArcTo) object);
                } else if (object instanceof CTPath2DCubicBezierTo) {
                    closePathCommand = new XSLFCurveTo((CTPath2DCubicBezierTo) object);
                } else if (object instanceof CTPath2DMoveTo) {
                    closePathCommand = new XSLFMoveTo((CTPath2DMoveTo) object);
                } else if (object instanceof CTPath2DLineTo) {
                    closePathCommand = new XSLFLineTo((CTPath2DLineTo) object);
                } else if (object instanceof CTPath2DQuadBezierTo) {
                    closePathCommand = new XSLFQuadTo((CTPath2DQuadBezierTo) object);
                } else if (object instanceof CTPath2DClose) {
                    closePathCommand = new ClosePathCommand();
                }
                closePathCommand.execute(r0, context);
            }
            newCursor.close();
            return r0;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public long getW() {
        return this.pathXml.getW();
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public boolean isExtrusionOk() {
        return this.pathXml.getExtrusionOk();
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public boolean isFilled() {
        return this.pathXml.getFill() != STPathFillMode.NONE;
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public boolean isStroked() {
        return this.pathXml.getStroke();
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public void setExtrusionOk(boolean z) {
        this.pathXml.setExtrusionOk(z);
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public void setFill(PaintStyle.PaintModifier paintModifier) {
        int i = C198901.$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier[paintModifier.ordinal()];
        this.pathXml.setFill(i != 2 ? i != 3 ? i != 4 ? i != 5 ? i != 6 ? STPathFillMode.NONE : STPathFillMode.DARKEN_LESS : STPathFillMode.DARKEN : STPathFillMode.LIGHTEN_LESS : STPathFillMode.LIGHTEN : STPathFillMode.NORM);
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public void setH(long j) {
        this.pathXml.setH(j);
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public void setStroke(boolean z) {
        this.pathXml.setStroke(z);
    }

    @Override // org.apache.poi.sl.draw.geom.PathIf
    public void setW(long j) {
        this.pathXml.setW(j);
    }
}
