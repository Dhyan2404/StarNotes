package org.apache.poi.convert.htmlgen;

import java.awt.Font;
import java.awt.font.FontRenderContext;
import java.awt.geom.AffineTransform;
import java.util.HashMap;
import java.util.Map;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.exception.AbortConvertException;
import org.apache.poi.picture.PicturesManager;
import org.apache.poi.style.page.PageStyles;
import org.apache.poi.xwpf.usermodel.BreakType;
import org.jsoup.nodes.Element;
import sun.font.FontUtilities;

/* loaded from: classes12.dex */
public abstract class ConverterContext {
    public static final int FONT_SIZE = 12;
    protected boolean abort;
    protected Element breakElement;
    protected BreakType breakType;
    protected PageStyles currentPage;
    protected HtmlDocumentFacade documentFacade;
    protected Map<String, Float> fontHeightMap = new HashMap();
    protected PicturesManager<?> picturesManager;

    public ConverterContext(HtmlDocumentFacade htmlDocumentFacade) {
        this.documentFacade = htmlDocumentFacade;
    }

    public void checkAbortConvert() throws AbortConvertException {
        if (this.abort) {
            throw new AbortConvertException();
        }
    }

    public Element getBreakElement() {
        return this.breakElement;
    }

    public BreakType getBreakType() {
        return this.breakType;
    }

    public PageStyles getCurrentPage() {
        return this.currentPage;
    }

    public HtmlDocumentFacade getDocumentFacade() {
        return this.documentFacade;
    }

    public float getFontHeight(String str, float f) {
        return (getFontHeight(str) * f) / 12.0f;
    }

    public PicturesManager<?> getPicturesManager() {
        return this.picturesManager;
    }

    public boolean isColumnBreak() {
        return this.breakType == BreakType.COLUMN;
    }

    public boolean isPageBreak() {
        return this.breakType == BreakType.PAGE;
    }

    public void resetBreakType() {
        this.breakType = null;
        this.breakElement = null;
    }

    public void setAbort(boolean z) {
        this.abort = z;
    }

    public void setBreakElement(Element element) {
        BreakType breakType = this.breakType;
        if (breakType == BreakType.COLUMN || breakType == BreakType.PAGE) {
            this.breakElement = element;
        }
    }

    public void setBreakType(BreakType breakType) {
        this.breakType = breakType;
    }

    public void setCurrentPage(PageStyles pageStyles) {
        this.currentPage = pageStyles;
    }

    public void setPicturesManager(PicturesManager<?> picturesManager) {
        this.picturesManager = picturesManager;
    }

    private float getFontHeight(String str) {
        Float f = this.fontHeightMap.get(str);
        if (!WordToHtmlUtils.isNull(f)) {
            return f.floatValue();
        }
        Font font = new Font(str, 0, 12);
        float[] fArr = new float[4];
        FontUtilities.getFont2D(font).getFontMetrics(font, new FontRenderContext((AffineTransform) null, false, false), fArr);
        Float valueOf = Float.valueOf(fArr[0] + fArr[1]);
        this.fontHeightMap.put(str, valueOf);
        return valueOf.floatValue();
    }
}
