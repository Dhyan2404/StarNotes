package org.apache.poi.hwpf.extractor;

import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.extractor.POIOLE2TextExtractor;
import org.apache.poi.hwpf.HWPFOldDocument;
import org.apache.poi.hwpf.converter.WordToTextConverter;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public final class Word6Extractor implements POIOLE2TextExtractor {
    private boolean doCloseFilesystem;
    private final HWPFOldDocument doc;

    public Word6Extractor(InputStream inputStream) throws IOException {
        this(new POIFSFileSystem(inputStream));
    }

    @Deprecated
    public String[] getParagraphText() {
        try {
            return WordExtractor.getParagraphText(this.doc.getRange());
        } catch (Exception unused) {
            int size = this.doc.getTextTable().getTextPieces().size();
            String[] strArr = new String[size];
            for (int i = 0; i < size; i++) {
                String sb = this.doc.getTextTable().getTextPieces().get(i).getStringBuilder().toString();
                strArr[i] = sb;
                String replace = sb.replace("\r", "\ufffe");
                strArr[i] = replace;
                strArr[i] = replace.replace("\ufffe", "\r\n");
            }
            return strArr;
        }
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public String getText() {
        try {
            WordToTextConverter wordToTextConverter = new WordToTextConverter();
            wordToTextConverter.processDocument(this.doc);
            return wordToTextConverter.getText();
        } catch (Exception unused) {
            StringBuilder sb = new StringBuilder();
            for (String str : this.getParagraphText()) {
                sb.append(str);
            }
            return sb.toString();
        }
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public boolean isCloseFilesystem() {
        return this.doCloseFilesystem;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public void setCloseFilesystem(boolean z) {
        this.doCloseFilesystem = z;
    }

    public Word6Extractor(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(pOIFSFileSystem.getRoot());
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public HWPFOldDocument getFilesystem() {
        return this.doc;
    }

    @Deprecated
    public Word6Extractor(DirectoryNode directoryNode, POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(directoryNode);
    }

    @Override // org.apache.poi.extractor.POIOLE2TextExtractor, org.apache.poi.extractor.POITextExtractor
    public HWPFOldDocument getDocument() {
        return this.doc;
    }

    public Word6Extractor(DirectoryNode directoryNode) throws IOException {
        this(new HWPFOldDocument(directoryNode));
    }

    public Word6Extractor(HWPFOldDocument hWPFOldDocument) {
        this.doCloseFilesystem = true;
        this.doc = hWPFOldDocument;
    }
}
