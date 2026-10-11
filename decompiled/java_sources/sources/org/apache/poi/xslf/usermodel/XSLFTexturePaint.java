package org.apache.poi.xslf.usermodel;

import java.awt.geom.Dimension2D;
import java.awt.geom.Point2D;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.sl.usermodel.ColorStyle;
import org.apache.poi.sl.usermodel.Insets2D;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.util.Dimension2DDouble;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlip;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRelativeRect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTileInfoProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.STPercentage;

@Internal
/* loaded from: classes13.dex */
public class XSLFTexturePaint implements PaintStyle.TexturePaint {
    private final CTBlip blip;
    private final CTBlipFillProperties blipFill;
    private final PackagePart parentPart;
    private final CTSchemeColor phClr;
    private final XSLFShape shape;
    private final XSLFSheet sheet;
    private final XSLFTheme theme;

    public XSLFTexturePaint(XSLFShape xSLFShape, CTBlipFillProperties cTBlipFillProperties, PackagePart packagePart, CTSchemeColor cTSchemeColor, XSLFTheme xSLFTheme, XSLFSheet xSLFSheet) {
        this.shape = xSLFShape;
        this.blipFill = cTBlipFillProperties;
        this.parentPart = packagePart;
        this.blip = cTBlipFillProperties.getBlip();
        this.phClr = cTSchemeColor;
        this.theme = xSLFTheme;
        this.sheet = xSLFSheet;
    }

    private PackagePart getPart() throws InvalidFormatException {
        POIXMLDocumentPart relationById;
        String embed = this.blip.getEmbed();
        return (this.shape.getParent() == null || !(this.shape.getParent() instanceof XSLFDiagram.XSLFDiagramGroupShape) || (relationById = ((XSLFDiagram.XSLFDiagramGroupShape) this.shape.getParent()).getRelationById(embed)) == null) ? this.parentPart.getRelatedPart(this.parentPart.getRelationship(embed)) : relationById.getPackagePart();
    }

    private static Insets2D getRectVal(final CTRelativeRect cTRelativeRect) {
        if (cTRelativeRect == null) {
            return null;
        }
        return new Insets2D(getRectVal(new Supplier() { // from class: com.sunia.HTREnginev2.jqo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTRelativeRect.this.isSetT());
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.kqo
            @Override // java.util.function.Supplier
            public final Object get() {
                return CTRelativeRect.this.xgetT();
            }
        }), getRectVal(new Supplier() { // from class: com.sunia.HTREnginev2.lqo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTRelativeRect.this.isSetL());
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.mqo
            @Override // java.util.function.Supplier
            public final Object get() {
                return CTRelativeRect.this.xgetL();
            }
        }), getRectVal(new Supplier() { // from class: com.sunia.HTREnginev2.nqo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTRelativeRect.this.isSetB());
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.oqo
            @Override // java.util.function.Supplier
            public final Object get() {
                return CTRelativeRect.this.xgetB();
            }
        }), getRectVal(new Supplier() { // from class: com.sunia.HTREnginev2.pqo
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(CTRelativeRect.this.isSetR());
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.qqo
            @Override // java.util.function.Supplier
            public final Object get() {
                return CTRelativeRect.this.xgetR();
            }
        }));
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
    public PaintStyle.TextureAlignment getAlignment() {
        CTTileInfoProperties tile = this.blipFill.getTile();
        if (tile == null || !tile.isSetAlgn()) {
            return null;
        }
        return PaintStyle.TextureAlignment.fromOoxmlId(tile.getAlgn().toString());
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
    public int getAlpha() {
        if (this.blip.sizeOfAlphaModFixArray() > 0) {
            return POIXMLUnits.parsePercent(this.blip.getAlphaModFixArray(0).xgetAmt());
        }
        return 100000;
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
    public String getContentType() {
        CTBlip cTBlip = this.blip;
        if (cTBlip == null || !cTBlip.isSetEmbed() || this.blip.getEmbed().isEmpty()) {
            return null;
        }
        try {
            return getPart().getContentType();
        } catch (InvalidFormatException e) {
            throw new IllegalStateException("Failed to read package part", e);
        }
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
    public List<ColorStyle> getDuoTone() {
        if (this.blip.sizeOfDuotoneArray() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (CTSchemeColor cTSchemeColor : this.blip.getDuotoneArray(0).getSchemeClrArray()) {
            arrayList.add(new XSLFColor(cTSchemeColor, this.theme, this.phClr, this.sheet).getColorStyle());
        }
        return arrayList;
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
    public PaintStyle.FlipMode getFlipMode() {
        CTTileInfoProperties tile = this.blipFill.getTile();
        int intValue = (tile == null || tile.getFlip() == null) ? 1 : tile.getFlip().intValue();
        return intValue != 2 ? intValue != 3 ? intValue != 4 ? PaintStyle.FlipMode.NONE : PaintStyle.FlipMode.XY : PaintStyle.FlipMode.Y : PaintStyle.FlipMode.X;
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
    public InputStream getImageData() {
        try {
            return getPart().getInputStream();
        } catch (Exception e) {
            throw new IllegalStateException("Failed to read image data", e);
        }
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
    public Insets2D getInsets() {
        return getRectVal(this.blipFill.getSrcRect());
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
    public Point2D getOffset() {
        CTTileInfoProperties tile = this.blipFill.getTile();
        if (tile == null) {
            return null;
        }
        return new Point2D.Double(tile.isSetTx() ? Units.toPoints(POIXMLUnits.parseLength(tile.xgetTx())) : 0.0d, tile.isSetTy() ? Units.toPoints(POIXMLUnits.parseLength(tile.xgetTy())) : 0.0d);
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
    public Dimension2D getScale() {
        CTTileInfoProperties tile = this.blipFill.getTile();
        if (tile == null) {
            return null;
        }
        return new Dimension2DDouble(tile.isSetSx() ? POIXMLUnits.parsePercent(tile.xgetSx()) / 100000.0d : 1.0d, tile.isSetSy() ? POIXMLUnits.parsePercent(tile.xgetSy()) / 100000.0d : 1.0d);
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
    public Shape getShape() {
        return this.shape;
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
    public Insets2D getStretch() {
        return getRectVal(this.blipFill.isSetStretch() ? this.blipFill.getStretch().getFillRect() : null);
    }

    @Override // org.apache.poi.sl.usermodel.PaintStyle.TexturePaint
    public boolean isRotatedWithShape() {
        return !this.blipFill.isSetRotWithShape() || this.blipFill.getRotWithShape();
    }

    private static int getRectVal(Supplier<Boolean> supplier, Supplier<STPercentage> supplier2) {
        if (supplier.get().booleanValue()) {
            return POIXMLUnits.parsePercent(supplier2.get());
        }
        return 0;
    }
}
