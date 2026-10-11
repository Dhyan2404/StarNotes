package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.CTShape;
import java.awt.Graphics2D;
import java.awt.geom.GeneralPath;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.text.Utils;
import org.apache.poi.util.ColorUtils;
import org.apache.poi.util.StringUtils;

/* loaded from: classes13.dex */
public class AutoShape extends XWPFShape<CTShape> implements ShapeContainer<XWPFShape<?>> {
    public static final String PATH_REGEX = "([a-z])((-?\\d+)(,(-?\\d+))+)?";
    private Path2D path2D;
    private List<XWPFShape<?>> shapes;

    public AutoShape(ShapeContainer<XWPFShape<?>> shapeContainer, CTShape cTShape) {
        super(shapeContainer, cTShape);
        this.shapes = new ArrayList();
    }

    private int parseCoords(double[] dArr, String[] strArr, int i) {
        int i2 = i;
        int i3 = 0;
        for (int i4 = 0; i2 < strArr.length && i4 < dArr.length; i4 += 2) {
            dArr[i4] = XWPFWordToHtmlUtils.parseNumberValue(strArr[i2]);
            dArr[i4 + 1] = XWPFWordToHtmlUtils.parseNumberValue(strArr[i2 + 1]);
            i3++;
            i2 += 2;
        }
        return i3;
    }

    private void parsePath(Path2D path2D, String str, String str2) {
        double[] dArr;
        int i;
        char c;
        String[] strArr;
        char charAt = str.charAt(0);
        char c2 = 'm';
        if (str2 == null) {
            if (charAt == 'm') {
                path2D.moveTo(0.0d, 0.0d);
                return;
            }
            return;
        }
        String[] split = str2.split(",");
        double[] dArr2 = new double[6];
        int ceil = (int) Math.ceil(split.length / 6.0d);
        int i2 = 0;
        while (i2 < ceil) {
            int i3 = i2 + 1;
            int parseCoords = parseCoords(dArr2, split, i2 * 6);
            if (charAt != 'c') {
                if (charAt == 'q') {
                    path2D.quadTo(dArr2[0], dArr2[1], dArr2[2], dArr2[3]);
                } else if (charAt == 'l') {
                    for (int i4 = 0; i4 < parseCoords; i4++) {
                        int i5 = i4 * 2;
                        path2D.lineTo(dArr2[i5], dArr2[i5 + 1]);
                    }
                } else if (charAt == c2) {
                    path2D.moveTo(dArr2[0], dArr2[1]);
                }
                dArr = dArr2;
                i = ceil;
                c = c2;
                strArr = split;
            } else {
                dArr = dArr2;
                i = ceil;
                c = c2;
                strArr = split;
                path2D.curveTo(dArr2[0], dArr2[1], dArr2[2], dArr2[3], dArr2[4], dArr2[5]);
            }
            i2 = i3;
            dArr2 = dArr;
            ceil = i;
            split = strArr;
            c2 = c;
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public void draw(Graphics2D graphics2D) {
        Rectangle2D rectangle2D = this.properties.anchor;
        if (rectangle2D.isEmpty()) {
            return;
        }
        if (this.path2D != null) {
            graphics2D.translate(-rectangle2D.getX(), -rectangle2D.getY());
            drawJavaShape(graphics2D, this.path2D);
            graphics2D.translate(rectangle2D.getX(), rectangle2D.getY());
        } else if (this.shapes.isEmpty()) {
            drawJavaShape(graphics2D, rectangle2D);
        }
        Iterator<XWPFShape<?>> it2 = this.shapes.iterator();
        while (it2.hasNext()) {
            it2.next().draw(graphics2D);
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.ShapeContainer
    public List<XWPFShape<?>> getShapes() {
        return this.shapes;
    }

    @Override // java.lang.Iterable
    public Iterator<XWPFShape<?>> iterator() {
        return this.shapes.iterator();
    }

    public void parsePath2(ShapeProperties shapeProperties, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return;
        }
        this.path2D = new GeneralPath();
        Matcher matcher = Pattern.compile(PATH_REGEX).matcher(str);
        while (matcher.find()) {
            parsePath(this.path2D, matcher.group(1), matcher.group(2));
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.ShapeContainer
    public void addShape(XWPFShape<?> xWPFShape) {
        this.shapes.add(xWPFShape);
        Utils.union(this.properties.anchor, xWPFShape.getAnchor());
        if (StringUtils.isNullOrEmpty(this.properties.shapeId)) {
            this.properties.shapeId = xWPFShape.getShapeId();
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFShape
    public void parseShapeProperties(CTShape cTShape) {
        parseStyleProperties(cTShape.getStyle());
        parseShapeProperties(this.properties, cTShape);
    }

    private void parseShapeProperties(ShapeProperties shapeProperties, CTShape cTShape) {
        shapeProperties.shapeId = cTShape.getId();
        if (cTShape.isSetAllowincell()) {
            shapeProperties.allowInCell = XWPFWordToHtmlUtils.parseSTTrueFalse(cTShape.getAllowincell());
        }
        if (cTShape.isSetSpt()) {
            shapeProperties.spt = cTShape.getSpt();
        }
        if (shapeProperties.anchor.isEmpty()) {
            if (cTShape.isSetCoordorigin()) {
                Point2D parsePoint = XWPFWordToHtmlUtils.parsePoint(cTShape.getCoordorigin());
                if (!WordToHtmlUtils.isNull(parsePoint)) {
                    shapeProperties.anchor.setFrame(parsePoint.getX(), parsePoint.getY(), shapeProperties.anchor.getWidth(), shapeProperties.anchor.getHeight());
                }
            }
            if (cTShape.isSetCoordsize()) {
                Point2D parsePoint2 = XWPFWordToHtmlUtils.parsePoint(cTShape.getCoordsize());
                if (!WordToHtmlUtils.isNull(parsePoint2)) {
                    Rectangle2D rectangle2D = shapeProperties.anchor;
                    rectangle2D.setFrame(rectangle2D.getX(), shapeProperties.anchor.getY(), parsePoint2.getX(), parsePoint2.getY());
                }
            }
        }
        if (cTShape.isSetFilled()) {
            shapeProperties.filled = XWPFWordToHtmlUtils.parseSTTrueFalse(cTShape.getFilled());
            if (cTShape.isSetFillcolor()) {
                shapeProperties.fillColor = ColorUtils.decode(cTShape.getFillcolor());
            }
        } else if (cTShape.sizeOfFillArray() > 0) {
            shapeProperties.filled = XWPFWordToHtmlUtils.parseSTTrueFalse(cTShape.getFillArray(0).getOn());
        }
        if (cTShape.isSetStroked()) {
            shapeProperties.stroked = XWPFWordToHtmlUtils.parseSTTrueFalse(cTShape.getStroked());
        } else {
            shapeProperties.stroked = true;
        }
        if (shapeProperties.stroked && cTShape.isSetStrokecolor()) {
            shapeProperties.strokedColor = ColorUtils.decode(cTShape.getStrokecolor());
        }
        if (cTShape.sizeOfPathArray() > 0) {
            shapeProperties.arrowOk = XWPFWordToHtmlUtils.parseSTTrueFalse(cTShape.getPathArray(0).getArrowok());
        }
        if (cTShape.isSetPath2()) {
            parsePath2(shapeProperties, cTShape.getPath2());
        }
        if (cTShape.sizeOfStrokeArray() > 0) {
            parseStroke(shapeProperties, cTShape.getStrokeArray(0));
        }
    }
}
