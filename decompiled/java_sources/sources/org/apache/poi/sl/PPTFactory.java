package org.apache.poi.sl;

import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.POIDocument;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.hslf.usermodel.HSLFSlideShowFactory;
import org.apache.poi.ooxml.POIXMLDocument;
import org.apache.poi.openxml4j.exceptions.OLE2NotOfficeXmlFileException;
import org.apache.poi.poifs.filesystem.OfficeXmlFileException;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.Slide;
import org.apache.poi.sl.usermodel.SlideShow;
import org.apache.poi.sl.usermodel.TableShape;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.sl.usermodel.TextShape;
import org.apache.poi.text.ITextHandler;
import org.apache.poi.text.Line;
import org.apache.poi.text.OneWord;
import org.apache.poi.text.Piece;
import org.apache.poi.text.TextHandler;
import org.apache.poi.text.TextSheet;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.LruCache;
import org.apache.poi.util.StringUtils;
import org.apache.poi.xslf.usermodel.XSLFShape;
import org.apache.poi.xslf.usermodel.XSLFSlideShowFactory;
import org.apache.poi.xslf.usermodel.XSLFTextParagraph;

/* loaded from: classes12.dex */
public class PPTFactory {
    private static final Logger LOG = LogManager.getLogger((Class<?>) PPTFactory.class);
    public static final List<String> pptExtensions = new ArrayList<String>(4) { // from class: org.apache.poi.sl.PPTFactory.1
        {
            add("ppt");
            add(FileTypeConstant.PPS);
            add(FileTypeConstant.POT);
            add(FileTypeConstant.PPA);
        }
    };
    public static final List<String> pptxExtensions = new ArrayList<String>(7) { // from class: org.apache.poi.sl.PPTFactory.2
        {
            add(FileTypeConstant.PPTX);
            add(FileTypeConstant.PPSX);
            add(FileTypeConstant.PPTM);
            add(FileTypeConstant.PPSM);
            add(FileTypeConstant.POTX);
            add(FileTypeConstant.POTM);
            add(FileTypeConstant.PPAM);
        }
    };
    private String filePath;
    private MetaData metaData;
    private Dimension pageSize;
    private String password;
    private LruCache<Integer, Slide<? extends Shape, ? extends TextParagraph>> slideCache;
    private SlideShow<? extends Shape, ? extends TextParagraph> slideShow;
    private int slideSize;
    private TextHandler textHandler;

    /* loaded from: classes12.dex */
    public static class Builder {
        private String filePath;
        private String password;

        public PPTFactory build() {
            PPTFactory pPTFactory = new PPTFactory();
            pPTFactory.filePath = this.filePath;
            pPTFactory.password = this.password;
            return pPTFactory;
        }

        public Builder setFilePath(String str) {
            this.filePath = str;
            return this;
        }

        public Builder setPassword(String str) {
            this.password = str;
            return this;
        }
    }

    /* loaded from: classes12.dex */
    public interface Creator {
        Graphics2D create();
    }

    public static boolean accept(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf < 0) {
            return false;
        }
        String substring = str.substring(lastIndexOf + 1);
        return pptExtensions.contains(substring) || pptxExtensions.contains(substring);
    }

    private SlideShow<? extends Shape, ? extends TextParagraph> createWithHSLF() throws Exception {
        try {
            return new HSLFSlideShowFactory().create2(new File(this.filePath), this.password, true);
        } catch (OfficeXmlFileException unused) {
            return this.createWithXSLF();
        } catch (Exception e) {
            throw e;
        }
    }

    private SlideShow<? extends Shape, ? extends TextParagraph> createWithXSLF() throws Exception {
        try {
            try {
                XmlBeanUtils.parseDocument(false);
                SlideShow<XSLFShape, XSLFTextParagraph> create2 = new XSLFSlideShowFactory().create2(new File(this.filePath), this.password, true);
                XmlBeanUtils.parseDocument(true);
                return create2;
            } catch (OLE2NotOfficeXmlFileException unused) {
                SlideShow<? extends Shape, ? extends TextParagraph> createWithHSLF = this.createWithHSLF();
                XmlBeanUtils.parseDocument(true);
                return createWithHSLF;
            } catch (Exception e) {
                throw e;
            }
        } catch (Throwable th) {
            XmlBeanUtils.parseDocument(true);
            throw th;
        }
    }

    private Slide<? extends Shape, ? extends TextParagraph> getCurrentSlide(int i) {
        Slide<? extends Shape, ? extends TextParagraph> slide = this.slideCache.get(Integer.valueOf(i));
        if (slide == null) {
            slide = this.slideShow.getSlides().get(i);
            this.slideCache.put(Integer.valueOf(i), slide);
        }
        slide.init();
        return slide;
    }

    private String getExtension() {
        int lastIndexOf = this.filePath.lastIndexOf(".");
        return lastIndexOf > 0 ? this.filePath.substring(lastIndexOf + 1).toLowerCase(Locale.ROOT) : "";
    }

    private void handleTextAfter(Graphics2D graphics2D) {
        if (this.textHandler.getActiveSheet().isCompleted()) {
            return;
        }
        graphics2D.setRenderingHint(ITextHandler.TEXT_HANDLER, null);
        this.textHandler.getActiveSheet().setCompleted(true);
        this.textHandler.getActiveSheet().handleTextCompleted();
        this.textHandler.bindGraphics(null);
    }

    private void handleTextBefore(Graphics2D graphics2D, int i) {
        this.textHandler.setActiveSheet(i);
        if (this.textHandler.getActiveSheet().isCompleted()) {
            return;
        }
        graphics2D.setRenderingHint(ITextHandler.TEXT_HANDLER, this.textHandler);
        this.textHandler.setTransform(graphics2D.getTransform());
        this.textHandler.bindGraphics(graphics2D);
    }

    public void close() {
        this.slideCache.evictAll();
        CloseUtils.close(this.slideShow);
    }

    public void drawSlide(Graphics2D graphics2D, int i) {
        handleTextBefore(graphics2D, i);
        getCurrentSlide(i).draw(graphics2D);
        handleTextAfter(graphics2D);
    }

    public void drawTextBounds(Graphics2D graphics2D, int i) {
        TextSheet textSheet = this.textHandler.getTextSheet(i);
        graphics2D.setColor(Color.RED);
        Iterator<Piece> it2 = textSheet.getPieces().iterator();
        while (it2.hasNext()) {
            Iterator<Line> it3 = it2.next().getLines().iterator();
            while (it3.hasNext()) {
                Iterator<OneWord> it4 = it3.next().getWords().iterator();
                while (it4.hasNext()) {
                    graphics2D.draw(it4.next().getRectangle());
                }
            }
        }
    }

    public String getFilePath() {
        return this.filePath;
    }

    public MetaData getMetaData() {
        return this.metaData;
    }

    public Dimension getPageSize() {
        return this.pageSize;
    }

    public String getPassword() {
        return this.password;
    }

    public SlideShow<? extends Shape, ? extends TextParagraph> getSlideShow() {
        return this.slideShow;
    }

    public int getSlideSize() {
        return this.slideSize;
    }

    public String getSlideTitle(int i) {
        Slide<? extends Shape, ? extends TextParagraph> slide = this.slideShow.getSlides().get(i);
        slide.init();
        String title = slide.getTitle();
        if (StringUtils.isNullOrEmpty(title)) {
            title = slide.getSlideName();
        }
        if (this.slideCache.get(Integer.valueOf(i)) == null) {
            slide.free();
        }
        return title;
    }

    public TextHandler getTextHandler() {
        return this.textHandler;
    }

    public InputStream getThumbnail() {
        byte[] thumbnail;
        Closeable closeable = this.slideShow;
        if (closeable instanceof POIDocument) {
            SummaryInformation summaryInformation = ((POIDocument) closeable).getSummaryInformation();
            if (summaryInformation == null || (thumbnail = summaryInformation.getThumbnail()) == null) {
                return null;
            }
            return new ByteArrayInputStream(thumbnail);
        }
        if (closeable instanceof POIXMLDocument) {
            try {
                return ((POIXMLDocument) closeable).getProperties().getThumbnailImage();
            } catch (IOException e) {
                LOG.atError().withThrowable(e).log();
            }
        }
        return null;
    }

    public void handleText(Graphics2D graphics2D, int i) {
        if (this.textHandler.getTextSheet(i).isCompleted()) {
            return;
        }
        handleTextBefore(graphics2D, i);
        getCurrentSlide(i).draw(graphics2D);
        handleTextAfter(graphics2D);
    }

    public boolean hasText(int i) {
        this.textHandler.setActiveSheet(i);
        TextSheet activeSheet = this.textHandler.getActiveSheet();
        int textState = activeSheet.getTextState();
        if (textState == 1) {
            return false;
        }
        if (textState == 2) {
            return true;
        }
        if (activeSheet.getPieces().size() > 0) {
            activeSheet.setTextState(2);
            return true;
        }
        Slide<? extends Shape, ? extends TextParagraph> slide = this.slideShow.getSlides().get(i);
        slide.init();
        boolean hasText = hasText(slide);
        activeSheet.setTextState(hasText ? 2 : 1);
        if (this.slideCache.get(Integer.valueOf(i)) == null) {
            slide.free();
        }
        return hasText;
    }

    public void openPPT() throws Exception {
        String extension = getExtension();
        if (pptExtensions.contains(extension)) {
            this.slideShow = createWithHSLF();
        } else {
            if (!pptxExtensions.contains(extension)) {
                throw new UnsupportedOperationException("Unsupported path " + this.filePath);
            }
            this.slideShow = createWithXSLF();
        }
        this.metaData.readProperties(this.slideShow);
        this.slideSize = this.slideShow.getSlides().size();
        this.pageSize = this.slideShow.getPageSize();
        this.textHandler = new TextHandler(this.slideSize);
    }

    private PPTFactory() {
        this.slideCache = new LruCache<Integer, Slide<? extends Shape, ? extends TextParagraph>>(2) { // from class: org.apache.poi.sl.PPTFactory.3
            @Override // org.apache.poi.util.LruCache
            public void entryRemoved(boolean z, Integer num, Slide<? extends Shape, ? extends TextParagraph> slide, Slide<? extends Shape, ? extends TextParagraph> slide2) {
                if (slide != null) {
                    slide.free();
                }
            }
        };
        this.metaData = new MetaData();
    }

    public void handleText(Creator creator, int i) {
        if (this.textHandler.getTextSheet(i).isCompleted()) {
            return;
        }
        Graphics2D create = creator.create();
        handleTextBefore(create, i);
        getCurrentSlide(i).draw(create);
        handleTextAfter(create);
        create.dispose();
    }

    private boolean hasText(ShapeContainer<? extends Shape, ? extends TextParagraph> shapeContainer) {
        Iterator<S> it2 = shapeContainer.iterator();
        while (it2.hasNext()) {
            Shape shape = (Shape) it2.next();
            if (shape instanceof TextShape) {
                return true;
            }
            if (shape instanceof TableShape) {
                if (hasText((TableShape) shape)) {
                    return true;
                }
            } else if ((shape instanceof ShapeContainer) && hasText((ShapeContainer<? extends Shape, ? extends TextParagraph>) shape)) {
                return true;
            }
        }
        return false;
    }

    private boolean hasText(TableShape tableShape) {
        int numberOfRows = tableShape.getNumberOfRows();
        int numberOfColumns = tableShape.getNumberOfColumns();
        for (int i = 0; i < numberOfRows; i++) {
            for (int i2 = 0; i2 < numberOfColumns; i2++) {
                if (tableShape.getCell2(i, i2) != null) {
                    return true;
                }
            }
        }
        return false;
    }
}
