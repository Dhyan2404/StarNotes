package sun.font;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Paint;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.geom.Area;
import java.awt.geom.GeneralPath;
import java.awt.geom.Line2D;
import java.awt.geom.Rectangle2D;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes16.dex */
public class Decoration {
    private static final int VALUES_MASK = AttributeValues.getMask(EAttribute.EFOREGROUND, EAttribute.EBACKGROUND, EAttribute.ESWAP_COLORS, EAttribute.ESTRIKETHROUGH, EAttribute.EUNDERLINE, EAttribute.EINPUT_METHOD_HIGHLIGHT, EAttribute.EINPUT_METHOD_UNDERLINE);
    private static final Decoration PLAIN = new Decoration();

    /* loaded from: classes16.dex */
    public static final class DecorationImpl extends Decoration {
        private Paint bgPaint;
        private Paint fgPaint;
        private Underline imUnderline;
        private Underline stdUnderline;
        private boolean strikethrough;
        private boolean swapColors;

        public DecorationImpl(Paint paint, Paint paint2, boolean z, boolean z2, Underline underline, Underline underline2) {
            super();
            this.fgPaint = paint;
            this.bgPaint = paint2;
            this.swapColors = z;
            this.strikethrough = z2;
            this.stdUnderline = underline;
            this.imUnderline = underline2;
        }

        private static boolean areEqual(Object obj, Object obj2) {
            return obj == null ? obj2 == null : obj.equals(obj2);
        }

        private void drawTextAndEmbellishments(Label label, Graphics2D graphics2D, float f, float f2) {
            label.handleDraw(graphics2D, f, f2);
            if (!this.strikethrough && this.stdUnderline == null && this.imUnderline == null) {
                return;
            }
            float width = ((float) label.getLogicalBounds().getWidth()) + f;
            CoreMetrics coreMetrics = label.getCoreMetrics();
            if (this.strikethrough) {
                Stroke stroke = graphics2D.getStroke();
                graphics2D.setStroke(new BasicStroke(coreMetrics.strikethroughThickness, 0, 0));
                float f3 = coreMetrics.strikethroughOffset + f2;
                graphics2D.draw(new Line2D.Float(f, f3, width, f3));
                graphics2D.setStroke(stroke);
            }
            float f4 = coreMetrics.underlineOffset;
            float f5 = coreMetrics.underlineThickness;
            Underline underline = this.stdUnderline;
            if (underline != null) {
                underline.drawUnderline(graphics2D, f5, f, width, f2 + f4);
            }
            Underline underline2 = this.imUnderline;
            if (underline2 != null) {
                underline2.drawUnderline(graphics2D, f5, f, width, f2 + f4);
            }
        }

        private float getUnderlineMaxY(CoreMetrics coreMetrics) {
            Underline underline = this.stdUnderline;
            float max = underline != null ? Math.max(0.0f, coreMetrics.underlineOffset + underline.getLowerDrawLimit(coreMetrics.underlineThickness)) : 0.0f;
            Underline underline2 = this.imUnderline;
            return underline2 != null ? Math.max(max, coreMetrics.underlineOffset + underline2.getLowerDrawLimit(coreMetrics.underlineThickness)) : max;
        }

        @Override // sun.font.Decoration
        public void drawTextAndDecorations(Label label, Graphics2D graphics2D, float f, float f2) {
            Paint paint;
            Paint paint2;
            if (this.fgPaint == null && this.bgPaint == null && !this.swapColors) {
                drawTextAndEmbellishments(label, graphics2D, f, f2);
                return;
            }
            Paint paint3 = graphics2D.getPaint();
            if (this.swapColors) {
                paint2 = this.fgPaint;
                if (paint2 == null) {
                    paint2 = paint3;
                }
                paint = this.bgPaint;
                if (paint == null) {
                    if (paint2 instanceof Color) {
                        Color color = (Color) paint2;
                        paint = ((color.getRed() * 33) + (color.getGreen() * 53)) + (color.getBlue() * 14) > 18500 ? Color.BLACK : Color.WHITE;
                    } else {
                        paint = Color.WHITE;
                    }
                }
            } else {
                Paint paint4 = this.fgPaint;
                paint = paint4 == null ? paint3 : paint4;
                paint2 = this.bgPaint;
            }
            if (paint2 != null) {
                Rectangle2D logicalBounds = label.getLogicalBounds();
                Rectangle2D.Float r4 = new Rectangle2D.Float(((float) logicalBounds.getX()) + f, ((float) logicalBounds.getY()) + f2, (float) logicalBounds.getWidth(), (float) logicalBounds.getHeight());
                graphics2D.setPaint(paint2);
                graphics2D.fill(r4);
            }
            graphics2D.setPaint(paint);
            drawTextAndEmbellishments(label, graphics2D, f, f2);
            graphics2D.setPaint(paint3);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            try {
                DecorationImpl decorationImpl = (DecorationImpl) obj;
                if (this.swapColors == decorationImpl.swapColors && this.strikethrough == decorationImpl.strikethrough && areEqual(this.stdUnderline, decorationImpl.stdUnderline) && areEqual(this.fgPaint, decorationImpl.fgPaint) && areEqual(this.bgPaint, decorationImpl.bgPaint)) {
                    return areEqual(this.imUnderline, decorationImpl.imUnderline);
                }
                return false;
            } catch (ClassCastException unused) {
            }
            return false;
        }

        @Override // sun.font.Decoration
        public Shape getOutline(Label label, float f, float f2) {
            if (!this.strikethrough && this.stdUnderline == null && this.imUnderline == null) {
                return label.handleGetOutline(f, f2);
            }
            CoreMetrics coreMetrics = label.getCoreMetrics();
            float f3 = coreMetrics.underlineThickness;
            float f4 = coreMetrics.underlineOffset;
            float width = ((float) label.getLogicalBounds().getWidth()) + f;
            Underline underline = this.stdUnderline;
            Area area = underline != null ? new Area(underline.getUnderlineShape(f3, f, width, f2 + f4)) : null;
            if (this.strikethrough) {
                BasicStroke basicStroke = new BasicStroke(coreMetrics.strikethroughThickness, 0, 0);
                float f5 = coreMetrics.strikethroughOffset + f2;
                Area area2 = new Area(basicStroke.createStrokedShape(new Line2D.Float(f, f5, width, f5)));
                if (area == null) {
                    area = area2;
                } else {
                    area.add(area2);
                }
            }
            Underline underline2 = this.imUnderline;
            if (underline2 != null) {
                Area area3 = new Area(underline2.getUnderlineShape(f3, f, width, f4 + f2));
                if (area == null) {
                    area = area3;
                } else {
                    area.add(area3);
                }
            }
            area.add(new Area(label.handleGetOutline(f, f2)));
            return new GeneralPath(area);
        }

        @Override // sun.font.Decoration
        public Rectangle2D getVisualBounds(Label label) {
            float y;
            float height;
            Rectangle2D handleGetVisualBounds = label.handleGetVisualBounds();
            if (this.swapColors || this.bgPaint != null || this.strikethrough || this.stdUnderline != null || this.imUnderline != null) {
                Rectangle2D logicalBounds = label.getLogicalBounds();
                if (this.swapColors || this.bgPaint != null) {
                    y = (float) logicalBounds.getY();
                    height = ((float) logicalBounds.getHeight()) + y;
                } else {
                    y = 0.0f;
                    height = 0.0f;
                }
                handleGetVisualBounds.add(new Rectangle2D.Float(0.0f, y, (float) logicalBounds.getWidth(), Math.max(height, getUnderlineMaxY(label.getCoreMetrics())) - y));
            }
            return handleGetVisualBounds;
        }

        public int hashCode() {
            int i = this.strikethrough ? 3 : 1;
            if (this.swapColors) {
                i |= 4;
            }
            Underline underline = this.stdUnderline;
            return underline != null ? i + underline.hashCode() : i;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(super.toString());
            stringBuffer.append(IteratorUtils.f104923a);
            if (this.fgPaint != null) {
                stringBuffer.append("fgPaint: " + this.fgPaint);
            }
            if (this.bgPaint != null) {
                stringBuffer.append(" bgPaint: " + this.bgPaint);
            }
            if (this.swapColors) {
                stringBuffer.append(" swapColors: true");
            }
            if (this.strikethrough) {
                stringBuffer.append(" strikethrough: true");
            }
            if (this.stdUnderline != null) {
                stringBuffer.append(" stdUnderline: " + this.stdUnderline);
            }
            if (this.imUnderline != null) {
                stringBuffer.append(" imUnderline: " + this.imUnderline);
            }
            stringBuffer.append(IteratorUtils.f104924b);
            return stringBuffer.toString();
        }
    }

    /* loaded from: classes16.dex */
    public interface Label {
        CoreMetrics getCoreMetrics();

        Rectangle2D getLogicalBounds();

        void handleDraw(Graphics2D graphics2D, float f, float f2);

        Rectangle2D handleGetCharVisualBounds(int i);

        Shape handleGetOutline(float f, float f2);

        Rectangle2D handleGetVisualBounds();
    }

    public static Decoration getDecoration(AttributeValues attributeValues) {
        if (attributeValues != null && attributeValues.anyDefined(VALUES_MASK)) {
            AttributeValues applyIMHighlight = attributeValues.applyIMHighlight();
            return new DecorationImpl(applyIMHighlight.getForeground(), applyIMHighlight.getBackground(), applyIMHighlight.getSwapColors(), applyIMHighlight.getStrikethrough(), Underline.getUnderline(applyIMHighlight.getUnderline()), Underline.getUnderline(applyIMHighlight.getInputMethodUnderline()));
        }
        return PLAIN;
    }

    public static Decoration getPlainDecoration() {
        return PLAIN;
    }

    public void drawTextAndDecorations(Label label, Graphics2D graphics2D, float f, float f2) {
        label.handleDraw(graphics2D, f, f2);
    }

    public Rectangle2D getCharVisualBounds(Label label, int i) {
        return label.handleGetCharVisualBounds(i);
    }

    public Shape getOutline(Label label, float f, float f2) {
        return label.handleGetOutline(f, f2);
    }

    public Rectangle2D getVisualBounds(Label label) {
        return label.handleGetVisualBounds();
    }

    private Decoration() {
    }

    public static Decoration getDecoration(Map map) {
        if (map == null) {
            return PLAIN;
        }
        return getDecoration(AttributeValues.fromMap(map));
    }
}
