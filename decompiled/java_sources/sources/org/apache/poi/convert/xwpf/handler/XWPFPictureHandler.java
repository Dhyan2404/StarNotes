package org.apache.poi.convert.xwpf.handler;

import java.awt.geom.Rectangle2D;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.p114wp.usermodel.IPicture;
import org.apache.poi.p114wp.usermodel.Position;
import org.apache.poi.picture.PicturesManager;
import org.apache.poi.style.TextRunStyles;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.RectUtils;
import org.apache.poi.util.StringUtils;
import org.apache.poi.xwpf.usermodel.AbsolutePicture;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
class XWPFPictureHandler extends XWPFRunPartHandler {
    private IPicture picture;

    public XWPFPictureHandler(XWPFContext xWPFContext, IPicture iPicture) {
        super(xWPFContext);
        this.picture = iPicture;
    }

    private String getImageStyle() {
        Rectangle2D anchor = this.picture.getAnchor();
        StringBuilder sb = new StringBuilder();
        sb.append("width:");
        sb.append(ExtUnits.getFormatValue(anchor.getWidth()));
        sb.append("px;height:");
        sb.append(ExtUnits.getFormatValue(anchor.getHeight()));
        sb.append("px;");
        if (this.picture.getPosition() == Position.ABSOLUTE) {
            IPicture iPicture = this.picture;
            if (iPicture instanceof AbsolutePicture) {
                sb.append(((AbsolutePicture) iPicture).getAbsolutePositionStyle(this.context.getCurrentPage(), this.context.peekLast()));
            } else {
                sb.append("margin-left:");
                sb.append(ExtUnits.getFormatValue(anchor.getX()));
                sb.append("px;margin-top:");
                sb.append(ExtUnits.getFormatValue(anchor.getY()));
                sb.append("px;");
            }
        }
        return sb.toString();
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFRunPartHandler
    public void handleRunPart(Element element, TextRunStyles textRunStyles, int i, int i2, int i3) {
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        PicturesManager<?> picturesManager = this.context.getPicturesManager();
        if (WordToHtmlUtils.isNull(picturesManager)) {
            element.appendChild(documentFacade.createComment("Image link to '" + this.picture.getName() + "' can be here"));
            return;
        }
        String processPicture = picturesManager.processPicture(this.picture);
        if (RectUtils.isNullOrEmpty(this.picture.getAnchor())) {
            element.appendChild(documentFacade.createComment("Empty image link to '" + this.picture.getName() + "' can be here"));
            return;
        }
        if (StringUtils.isNullOrEmpty(processPicture)) {
            element.appendChild(documentFacade.createComment("Error image link to '" + this.picture.getName() + "' can be here"));
            return;
        }
        Element createImage = documentFacade.createImage(processPicture);
        documentFacade.addStyleClass(createImage, "img", this.picture.getPosition().getStyle());
        WordToHtmlUtils.setStyle(createImage, getImageStyle());
        if (this.picture.getPosition() != Position.ABSOLUTE) {
            if (this.picture.isBehindDoc()) {
                element.insertChildren(0, createImage);
                return;
            } else {
                element.appendChild(createImage);
                return;
            }
        }
        createImage.attr("name", Constants.NAME_IMAGE_ABSOLUTE);
        if (this.picture.isBehindDoc()) {
            element.insertChildren(0, createImage);
        } else {
            WordToHtmlUtils.insertAfterAbsoluteImage(element, createImage);
        }
    }
}
