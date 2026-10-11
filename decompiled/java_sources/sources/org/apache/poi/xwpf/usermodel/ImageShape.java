package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.CTImageData;
import java.awt.Graphics2D;
import java.io.InputStream;
import org.apache.poi.common.usermodel.PictureType;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.sl.draw.DrawPictureShape;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.util.StringUtils;

/* loaded from: classes13.dex */
public class ImageShape extends XWPFShape<CTImageData> {
    private XWPFPictureData pictureData;
    private InputStream pictureStream;
    private PictureType pictureType;
    private XWPFRun run;

    public ImageShape(ShapeContainer<XWPFShape<?>> shapeContainer, CTImageData cTImageData, XWPFRun xWPFRun) {
        super(shapeContainer, cTImageData);
        this.run = xWPFRun;
        parsePicture(cTImageData);
    }

    private void parsePicture(CTImageData cTImageData) {
        POIXMLDocumentPart part;
        String id2 = cTImageData.getId2();
        if (StringUtils.isNullOrEmpty(id2) || (part = this.run.getParent().getPart()) == null) {
            return;
        }
        POIXMLDocumentPart relationById = part.getRelationById(id2);
        if (relationById instanceof XWPFPictureData) {
            XWPFPictureData xWPFPictureData = (XWPFPictureData) relationById;
            this.pictureData = xWPFPictureData;
            this.pictureType = XWPFWordToHtmlUtils.getPictureType(xWPFPictureData.getPictureType());
            InputStream inputStream = XWPFWordToHtmlUtils.getInputStream(this.pictureData);
            this.pictureStream = inputStream;
            PictureType pictureType = XWPFWordToHtmlUtils.getPictureType(inputStream);
            if (pictureType != PictureType.UNKNOWN) {
                this.pictureType = pictureType;
            }
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public void draw(Graphics2D graphics2D) {
        if (this.pictureStream == null) {
            return;
        }
        try {
            ImageRenderer imageRenderer = DrawPictureShape.getImageRenderer(graphics2D, this.pictureType.contentType);
            if (imageRenderer.canRender(this.pictureType.contentType)) {
                imageRenderer.loadImage(this.pictureStream, this.pictureType.contentType);
                imageRenderer.drawImage(graphics2D, this.parent.getAnchor(), null);
            }
        } catch (Exception e) {
            this.LOG.atError().withThrowable(e).log();
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFShape
    public void parseShapeProperties(CTImageData cTImageData) {
        this.properties.shapeId = cTImageData.getId();
    }
}
