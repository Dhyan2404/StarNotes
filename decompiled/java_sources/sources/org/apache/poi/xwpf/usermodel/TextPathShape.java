package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.CTTextPath;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.font.TextAttribute;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Collections;
import org.apache.logging.log4j.LogBuilder;
import org.apache.poi.util.StringUtils;
import org.apache.poi.xwpf.usermodel.TextParagraph;

/* loaded from: classes13.dex */
public class TextPathShape extends XWPFShape<CTTextPath> {
    private TextParagraph paragraph;
    private String text;

    public TextPathShape(ShapeContainer<XWPFShape<?>> shapeContainer, CTTextPath cTTextPath) {
        super(shapeContainer, cTTextPath);
    }

    private void parseTextParagraph(Graphics2D graphics2D) {
        if (this.paragraph != null) {
            return;
        }
        this.paragraph = new TextParagraph(this.parent.getAnchor(), new Insets(0, 0, 0, 0));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new TextParagraph.AttributedStringData(TextAttribute.FAMILY, this.properties.fontFamily, 0, this.text.length()));
        arrayList.add(new TextParagraph.AttributedStringData(TextAttribute.SIZE, Float.valueOf(this.properties.fontSize), 0, this.text.length()));
        this.paragraph.breakText(graphics2D, this.text, arrayList);
    }

    private void parseTextPathProperties(CTTextPath cTTextPath) {
        this.properties.shapeId = cTTextPath.getId();
        this.text = cTTextPath.getString();
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public void draw(Graphics2D graphics2D) {
        Rectangle2D anchor = this.parent.getAnchor();
        if (StringUtils.isNullOrEmpty(this.text) || anchor.isEmpty() || this.properties.fontSize <= 0.0f) {
            LogBuilder atError = this.LOG.atError();
            String str = this.text;
            ShapeProperties shapeProperties = this.properties;
            atError.log("Text:{}, anchor:{}, fontFamily:{}, fontSize:{}", str, anchor, shapeProperties.fontFamily, Float.valueOf(shapeProperties.fontSize));
            return;
        }
        parseTextParagraph(graphics2D);
        TextParagraph.draw(graphics2D, Collections.singletonList(this.paragraph), anchor.getX(), anchor.getY());
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFShape
    public void parseShapeProperties(CTTextPath cTTextPath) {
        parseStyleProperties(cTTextPath.getStyle());
        parseTextPathProperties(cTTextPath);
    }
}
