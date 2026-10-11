package org.apache.poi.convert;

import java.awt.geom.Rectangle2D;
import java.util.Iterator;
import org.apache.poi.convert.AbstractWordConverter;
import org.apache.poi.convert.exception.AbortConvertException;
import org.apache.poi.picture.PicturesManager;
import org.apache.poi.util.DocumentUtils;
import org.jsoup.nodes.Document;

/* loaded from: classes12.dex */
public abstract class AbstractWordConverter extends AbstractConverter {
    protected static final int IMAGE_MIDDLE_HEIGHT = 32;
    protected static final int IMAGE_SETTING_HEIGHT = 400;
    protected static final int IMAGE_SETTING_WIDTH = 300;
    protected Rectangle2D pageSize = new Rectangle2D.Double(120.0d, 96.0d, 554.0d, 932.0d);
    protected HtmlDocumentFacade documentFacade = new HtmlDocumentFacade();
    protected long startTime = System.currentTimeMillis();
    protected int paraSize = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$0() {
        closeImpl();
        this.LOG.debug("Cache pictures duration = {}", Long.valueOf(System.currentTimeMillis() - this.startTime));
    }

    public void checkAbortConvert() {
        if (this.abort) {
            try {
                throw new AbortConvertException();
            } catch (Throwable th) {
                close();
                throw th;
            }
        }
    }

    public boolean checkSplitDocument() {
        int i = this.documentParaSize;
        if (i <= 0 || this.paraSize < i) {
            return false;
        }
        this.paraSize = 0;
        String attr = this.documentFacade.getBody().attr("class");
        this.documentList.add(this.documentFacade.createDocument());
        this.documentFacade.getBody().attr("class", attr);
        setUpNewDocument();
        return true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        PicturesManager<?> picturesManager = this.picturesManager;
        if (picturesManager != null) {
            picturesManager.finished(new Runnable() { // from class: com.sunia.HTREnginev2.j5
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractWordConverter.this.lambda$close$0();
                }
            });
        } else {
            closeImpl();
        }
    }

    public abstract void closeImpl();

    public boolean compactDocument() {
        if (!WordToHtmlUtils.compactDocument(this.documentList, this.documentParaSize, this.paraSize)) {
            return false;
        }
        this.paraSize += this.documentParaSize;
        return true;
    }

    public void incrementParaSize() {
        this.paraSize++;
    }

    public void reconstructDocumentLink() {
        Iterator<Document> it2 = this.documentList.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Document next = it2.next();
            next.outputSettings().prettyPrint(false);
            i++;
            this.documentMap.put(documentName(i), next);
        }
        DocumentUtils.reconstructDocumentLink(this.documentMap);
        Iterator<Document> it3 = this.documentList.iterator();
        while (it3.hasNext()) {
            DocumentUtils.updateDocumentPosition(it3.next());
        }
        TocUtils.parseWPToc(this.wpToc, this.documentMap);
    }

    public void setUpNewDocument() {
    }
}
