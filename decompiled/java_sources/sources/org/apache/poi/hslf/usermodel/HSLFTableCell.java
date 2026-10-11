package org.apache.poi.hslf.usermodel;

import java.awt.Color;
import java.awt.geom.Rectangle2D;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.sl.usermodel.StrokeStyle;
import org.apache.poi.sl.usermodel.TableCell;

/* loaded from: classes12.dex */
public final class HSLFTableCell extends HSLFTextBox implements TableCell<HSLFShape, HSLFTextParagraph> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected static final int DEFAULT_HEIGHT = 40;
    protected static final int DEFAULT_WIDTH = 100;
    HSLFLine borderBottom;
    HSLFLine borderLeft;
    HSLFLine borderRight;
    HSLFLine borderTop;
    private int gridSpan;
    private int rowSpan;

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFTableCell$2 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194732 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge;

        static {
            int[] iArr = new int[TableCell.BorderEdge.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge = iArr;
            try {
                iArr[TableCell.BorderEdge.top.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge[TableCell.BorderEdge.right.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge[TableCell.BorderEdge.bottom.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge[TableCell.BorderEdge.left.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public HSLFTableCell(EscherContainerRecord escherContainerRecord, HSLFTable hSLFTable) {
        super(escherContainerRecord, hSLFTable);
        this.gridSpan = 1;
        this.rowSpan = 1;
    }

    private void anchorBorder(TableCell.BorderEdge borderEdge, HSLFLine hSLFLine) {
        double x;
        double y;
        double width;
        double d;
        double d2;
        double d3;
        double d4;
        double x2;
        double y2;
        double height;
        if (hSLFLine == null) {
            return;
        }
        Rectangle2D anchor = getAnchor();
        int i = C194732.$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge[borderEdge.ordinal()];
        if (i != 1) {
            if (i == 2) {
                x2 = anchor.getX() + anchor.getWidth();
                y2 = anchor.getY();
                height = anchor.getHeight();
            } else if (i == 3) {
                x = anchor.getX();
                y = anchor.getY() + anchor.getHeight();
                width = anchor.getWidth();
            } else {
                if (i != 4) {
                    throw new IllegalArgumentException();
                }
                x2 = anchor.getX();
                y2 = anchor.getY();
                height = anchor.getHeight();
            }
            d = x2;
            d4 = 0.0d;
            d3 = y2;
            d2 = height;
            hSLFLine.setAnchor(new Rectangle2D.Double(d, d3, d4, d2));
        }
        x = anchor.getX();
        y = anchor.getY();
        width = anchor.getWidth();
        d = x;
        d2 = 0.0d;
        d3 = y;
        d4 = width;
        hSLFLine.setAnchor(new Rectangle2D.Double(d, d3, d4, d2));
    }

    private HSLFLine createBorder(TableCell.BorderEdge borderEdge) {
        ShapeContainer<HSLFShape, HSLFTextParagraph> parent = getParent();
        HSLFLine hSLFLine = new HSLFLine(parent);
        parent.addShape((HSLFShape) hSLFLine);
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.GEOMETRY__SHAPEPATH, -1);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.GEOMETRY__FILLOK, -1);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.SHADOWSTYLE__SHADOWOBSURED, 131072);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.THREED__LIGHTFACE, 524288);
        anchorBorder(borderEdge, hSLFLine);
        return hSLFLine;
    }

    public HSLFLine addLine(TableCell.BorderEdge borderEdge) {
        int i = C194732.$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge[borderEdge.ordinal()];
        if (i == 1) {
            if (this.borderTop == null) {
                this.borderTop = createBorder(borderEdge);
                HSLFTableCell siblingCell = getSiblingCell(-1, 0);
                if (siblingCell != null) {
                    siblingCell.borderBottom = this.borderTop;
                }
            }
            return this.borderTop;
        }
        if (i == 2) {
            if (this.borderRight == null) {
                this.borderRight = createBorder(borderEdge);
                HSLFTableCell siblingCell2 = getSiblingCell(0, 1);
                if (siblingCell2 != null) {
                    siblingCell2.borderLeft = this.borderRight;
                }
            }
            return this.borderRight;
        }
        if (i == 3) {
            if (this.borderBottom == null) {
                this.borderBottom = createBorder(borderEdge);
                HSLFTableCell siblingCell3 = getSiblingCell(1, 0);
                if (siblingCell3 != null) {
                    siblingCell3.borderTop = this.borderBottom;
                }
            }
            return this.borderBottom;
        }
        if (i != 4) {
            throw new IllegalArgumentException();
        }
        if (this.borderLeft == null) {
            this.borderLeft = createBorder(borderEdge);
            HSLFTableCell siblingCell4 = getSiblingCell(0, -1);
            if (siblingCell4 != null) {
                siblingCell4.borderRight = this.borderLeft;
            }
        }
        return this.borderLeft;
    }

    public void applyLineProperties(TableCell.BorderEdge borderEdge, HSLFLine hSLFLine) {
        HSLFLine addLine = addLine(borderEdge);
        addLine.setLineWidth(hSLFLine.getLineWidth());
        addLine.setLineColor(hSLFLine.getLineColor());
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFTextBox, org.apache.poi.hslf.usermodel.HSLFSimpleShape, org.apache.poi.hslf.usermodel.HSLFShape
    public EscherContainerRecord createSpContainer(boolean z) {
        EscherContainerRecord createSpContainer = super.createSpContainer(z);
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.TEXT__TEXTID, 0);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.TEXT__SIZE_TEXT_TO_FIT_SHAPE, 131072);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.FILL__NOFILLHITTEST, 1376257);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.SHADOWSTYLE__SHADOWOBSURED, 131072);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.PROTECTION__LOCKAGAINSTGROUPING, 262144);
        return createSpContainer;
    }

    public Color getBorderColor(TableCell.BorderEdge borderEdge) {
        HSLFLine hSLFLine;
        int i = C194732.$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge[borderEdge.ordinal()];
        if (i == 1) {
            hSLFLine = this.borderTop;
        } else if (i == 2) {
            hSLFLine = this.borderRight;
        } else if (i == 3) {
            hSLFLine = this.borderBottom;
        } else {
            if (i != 4) {
                throw new IllegalArgumentException();
            }
            hSLFLine = this.borderLeft;
        }
        if (hSLFLine == null) {
            return null;
        }
        return hSLFLine.getLineColor();
    }

    public StrokeStyle.LineCompound getBorderCompound(TableCell.BorderEdge borderEdge) {
        HSLFLine hSLFLine;
        int i = C194732.$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge[borderEdge.ordinal()];
        if (i == 1) {
            hSLFLine = this.borderTop;
        } else if (i == 2) {
            hSLFLine = this.borderRight;
        } else if (i == 3) {
            hSLFLine = this.borderBottom;
        } else {
            if (i != 4) {
                throw new IllegalArgumentException();
            }
            hSLFLine = this.borderLeft;
        }
        if (hSLFLine == null) {
            return null;
        }
        return hSLFLine.getLineCompound();
    }

    public StrokeStyle.LineDash getBorderDash(TableCell.BorderEdge borderEdge) {
        HSLFLine hSLFLine;
        int i = C194732.$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge[borderEdge.ordinal()];
        if (i == 1) {
            hSLFLine = this.borderTop;
        } else if (i == 2) {
            hSLFLine = this.borderRight;
        } else if (i == 3) {
            hSLFLine = this.borderBottom;
        } else {
            if (i != 4) {
                throw new IllegalArgumentException();
            }
            hSLFLine = this.borderLeft;
        }
        if (hSLFLine == null) {
            return null;
        }
        return hSLFLine.getLineDash();
    }

    @Override // org.apache.poi.sl.usermodel.TableCell
    public StrokeStyle getBorderStyle(final TableCell.BorderEdge borderEdge) {
        final Double borderWidth = getBorderWidth(borderEdge);
        if (borderWidth == null) {
            return null;
        }
        return new StrokeStyle() { // from class: org.apache.poi.hslf.usermodel.HSLFTableCell.1
            @Override // org.apache.poi.sl.usermodel.StrokeStyle
            public StrokeStyle.LineCap getLineCap() {
                return null;
            }

            @Override // org.apache.poi.sl.usermodel.StrokeStyle
            public StrokeStyle.LineCompound getLineCompound() {
                return HSLFTableCell.this.getBorderCompound(borderEdge);
            }

            @Override // org.apache.poi.sl.usermodel.StrokeStyle
            public StrokeStyle.LineDash getLineDash() {
                return HSLFTableCell.this.getBorderDash(borderEdge);
            }

            @Override // org.apache.poi.sl.usermodel.StrokeStyle
            public double getLineWidth() {
                return borderWidth.doubleValue();
            }

            @Override // org.apache.poi.sl.usermodel.StrokeStyle
            public PaintStyle getPaint() {
                return DrawPaint.createSolidPaint(HSLFTableCell.this.getBorderColor(borderEdge));
            }
        };
    }

    public Double getBorderWidth(TableCell.BorderEdge borderEdge) {
        HSLFLine hSLFLine;
        int i = C194732.$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge[borderEdge.ordinal()];
        if (i == 1) {
            hSLFLine = this.borderTop;
        } else if (i == 2) {
            hSLFLine = this.borderRight;
        } else if (i == 3) {
            hSLFLine = this.borderBottom;
        } else {
            if (i != 4) {
                throw new IllegalArgumentException();
            }
            hSLFLine = this.borderLeft;
        }
        if (hSLFLine == null) {
            return null;
        }
        return Double.valueOf(hSLFLine.getLineWidth());
    }

    @Override // org.apache.poi.sl.usermodel.TableCell
    public int getGridSpan() {
        return this.gridSpan;
    }

    @Override // org.apache.poi.sl.usermodel.TableCell
    public int getRowSpan() {
        return this.rowSpan;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.poi.hslf.usermodel.HSLFTable] */
    public HSLFTableCell getSiblingCell(int i, int i2) {
        return getParent().getRelativeCell(this, i, i2);
    }

    @Override // org.apache.poi.sl.usermodel.TableCell
    public boolean isMerged() {
        return false;
    }

    @Override // org.apache.poi.sl.usermodel.TableCell
    public void removeBorder(TableCell.BorderEdge borderEdge) {
        int i = C194732.$SwitchMap$org$apache$poi$sl$usermodel$TableCell$BorderEdge[borderEdge.ordinal()];
        if (i == 1) {
            if (this.borderTop == null) {
                return;
            }
            getParent().removeShape((HSLFShape) this.borderTop);
            this.borderTop = null;
            HSLFTableCell siblingCell = getSiblingCell(-1, 0);
            if (siblingCell != null) {
                siblingCell.borderBottom = null;
                return;
            }
            return;
        }
        if (i == 2) {
            if (this.borderRight == null) {
                return;
            }
            getParent().removeShape((HSLFShape) this.borderRight);
            this.borderRight = null;
            HSLFTableCell siblingCell2 = getSiblingCell(0, 1);
            if (siblingCell2 != null) {
                siblingCell2.borderLeft = null;
                return;
            }
            return;
        }
        if (i == 3) {
            if (this.borderBottom == null) {
                return;
            }
            getParent().removeShape((HSLFShape) this.borderBottom);
            this.borderBottom = null;
            HSLFTableCell siblingCell3 = getSiblingCell(1, 0);
            if (siblingCell3 != null) {
                siblingCell3.borderTop = null;
                return;
            }
            return;
        }
        if (i != 4) {
            throw new IllegalArgumentException();
        }
        if (this.borderLeft == null) {
            return;
        }
        getParent().removeShape((HSLFShape) this.borderLeft);
        this.borderLeft = null;
        HSLFTableCell siblingCell4 = getSiblingCell(0, -1);
        if (siblingCell4 != null) {
            siblingCell4.borderRight = null;
        }
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape, org.apache.poi.sl.usermodel.PlaceableShape
    public void setAnchor(Rectangle2D rectangle2D) {
        super.setAnchor(rectangle2D);
        anchorBorder(TableCell.BorderEdge.top, this.borderTop);
        anchorBorder(TableCell.BorderEdge.right, this.borderRight);
        anchorBorder(TableCell.BorderEdge.bottom, this.borderBottom);
        anchorBorder(TableCell.BorderEdge.left, this.borderLeft);
    }

    @Override // org.apache.poi.sl.usermodel.TableCell
    public void setBorderColor(TableCell.BorderEdge borderEdge, Color color) {
        if (borderEdge == null || color == null) {
            throw new IllegalArgumentException("BorderEdge and/or Color need to be specified.");
        }
        addLine(borderEdge).setLineColor(color);
    }

    @Override // org.apache.poi.sl.usermodel.TableCell
    public void setBorderCompound(TableCell.BorderEdge borderEdge, StrokeStyle.LineCompound lineCompound) {
        if (borderEdge == null || lineCompound == null) {
            throw new IllegalArgumentException("BorderEdge and/or LineCompound need to be specified.");
        }
        addLine(borderEdge).setLineCompound(lineCompound);
    }

    @Override // org.apache.poi.sl.usermodel.TableCell
    public void setBorderDash(TableCell.BorderEdge borderEdge, StrokeStyle.LineDash lineDash) {
        if (borderEdge == null || lineDash == null) {
            throw new IllegalArgumentException("BorderEdge and/or LineDash need to be specified.");
        }
        addLine(borderEdge).setLineDash(lineDash);
    }

    @Override // org.apache.poi.sl.usermodel.TableCell
    public void setBorderStyle(TableCell.BorderEdge borderEdge, StrokeStyle strokeStyle) {
        if (strokeStyle == null) {
            throw new IllegalArgumentException("StrokeStyle needs to be specified.");
        }
        StrokeStyle.LineCompound lineCompound = strokeStyle.getLineCompound();
        if (lineCompound != null) {
            setBorderCompound(borderEdge, lineCompound);
        }
        StrokeStyle.LineDash lineDash = strokeStyle.getLineDash();
        if (lineDash != null) {
            setBorderDash(borderEdge, lineDash);
        }
        setBorderWidth(borderEdge, strokeStyle.getLineWidth());
    }

    @Override // org.apache.poi.sl.usermodel.TableCell
    public void setBorderWidth(TableCell.BorderEdge borderEdge, double d) {
        addLine(borderEdge).setLineWidth(d);
    }

    public void setGridSpan(int i) {
        this.gridSpan = i;
    }

    public void setRowSpan(int i) {
        this.rowSpan = i;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape, org.apache.poi.sl.usermodel.Shape
    public ShapeContainer<HSLFShape, HSLFTextParagraph> getParent() {
        return (HSLFTable) super.getParent();
    }

    public HSLFTableCell(HSLFTable hSLFTable) {
        super(hSLFTable);
        this.gridSpan = 1;
        this.rowSpan = 1;
        setShapeType(ShapeType.RECT);
    }
}
