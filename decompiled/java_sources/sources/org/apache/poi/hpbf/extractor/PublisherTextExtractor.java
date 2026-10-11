package org.apache.poi.hpbf.extractor;

import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.extractor.POIOLE2TextExtractor;
import org.apache.poi.hpbf.HPBFDocument;
import org.apache.poi.hpbf.model.qcbits.QCBit;
import org.apache.poi.hpbf.model.qcbits.QCPLCBit;
import org.apache.poi.hpbf.model.qcbits.QCTextBit;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public final class PublisherTextExtractor implements POIOLE2TextExtractor {
    private boolean doCloseFilesystem;
    private final HPBFDocument doc;
    private boolean hyperlinksByDefault;

    public PublisherTextExtractor(HPBFDocument hPBFDocument) {
        this.doCloseFilesystem = true;
        this.doc = hPBFDocument;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public String getText() {
        StringBuilder sb = new StringBuilder();
        QCBit[] bits = this.doc.getQuillContents().getBits();
        for (QCBit qCBit : bits) {
            if (qCBit instanceof QCTextBit) {
                sb.append(((QCTextBit) qCBit).getText().replace('\r', '\n'));
            }
        }
        if (this.hyperlinksByDefault) {
            for (QCBit qCBit2 : bits) {
                if (qCBit2 instanceof QCPLCBit.Type12) {
                    QCPLCBit.Type12 type12 = (QCPLCBit.Type12) qCBit2;
                    for (int i = 0; i < type12.getNumberOfHyperlinks(); i++) {
                        sb.append("<");
                        sb.append(type12.getHyperlink(i));
                        sb.append(">\n");
                    }
                }
            }
        }
        return sb.toString();
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public boolean isCloseFilesystem() {
        return this.doCloseFilesystem;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public void setCloseFilesystem(boolean z) {
        this.doCloseFilesystem = z;
    }

    public void setHyperlinksByDefault(boolean z) {
        this.hyperlinksByDefault = z;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public HPBFDocument getFilesystem() {
        return this.doc;
    }

    @Override // org.apache.poi.extractor.POIOLE2TextExtractor, org.apache.poi.extractor.POITextExtractor
    public HPBFDocument getDocument() {
        return this.doc;
    }

    public PublisherTextExtractor(DirectoryNode directoryNode) throws IOException {
        this(new HPBFDocument(directoryNode));
    }

    public PublisherTextExtractor(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(new HPBFDocument(pOIFSFileSystem));
    }

    public PublisherTextExtractor(InputStream inputStream) throws IOException {
        this(new POIFSFileSystem(inputStream));
    }
}
