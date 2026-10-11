package org.apache.poi.hwpf.extractor;

import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.extractor.POIOLE2TextExtractor;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.HWPFDocumentCore;
import org.apache.poi.hwpf.converter.WordToTextConverter;
import org.apache.poi.hwpf.usermodel.HeaderStories;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public final class WordExtractor implements POIOLE2TextExtractor {
    private boolean doCloseFilesystem;
    private final HWPFDocument doc;

    public WordExtractor(InputStream inputStream) throws IOException {
        this(HWPFDocumentCore.verifyAndBuildPOIFS(inputStream));
    }

    private void appendHeaderFooter(String str, StringBuilder sb) {
        if (str == null || str.length() == 0) {
            return;
        }
        String replace = str.replace('\r', '\n');
        if (!replace.endsWith("\n")) {
            sb.append(replace);
            sb.append('\n');
        } else if (replace.endsWith("\n\n")) {
            sb.append((CharSequence) replace, 0, replace.length() - 1);
        } else {
            sb.append(replace);
        }
    }

    public static String stripFields(String str) {
        return Range.stripFields(str);
    }

    public String[] getCommentsText() {
        return getParagraphText(this.doc.getCommentsRange());
    }

    public String[] getEndnoteText() {
        return getParagraphText(this.doc.getEndnoteRange());
    }

    @Deprecated
    public String getFooterText() {
        HeaderStories headerStories = new HeaderStories(this.doc);
        StringBuilder sb = new StringBuilder();
        if (headerStories.getFirstFooter() != null) {
            appendHeaderFooter(headerStories.getFirstFooter(), sb);
        }
        if (headerStories.getEvenFooter() != null) {
            appendHeaderFooter(headerStories.getEvenFooter(), sb);
        }
        if (headerStories.getOddFooter() != null) {
            appendHeaderFooter(headerStories.getOddFooter(), sb);
        }
        return sb.toString();
    }

    public String[] getFootnoteText() {
        return getParagraphText(this.doc.getFootnoteRange());
    }

    @Deprecated
    public String getHeaderText() {
        HeaderStories headerStories = new HeaderStories(this.doc);
        StringBuilder sb = new StringBuilder();
        if (headerStories.getFirstHeader() != null) {
            appendHeaderFooter(headerStories.getFirstHeader(), sb);
        }
        if (headerStories.getEvenHeader() != null) {
            appendHeaderFooter(headerStories.getEvenHeader(), sb);
        }
        if (headerStories.getOddHeader() != null) {
            appendHeaderFooter(headerStories.getOddHeader(), sb);
        }
        return sb.toString();
    }

    public String[] getMainTextboxText() {
        return getParagraphText(this.doc.getMainTextboxRange());
    }

    public String[] getParagraphText() {
        try {
            return getParagraphText(this.doc.getRange());
        } catch (Exception unused) {
            return new String[]{this.getTextFromPieces()};
        }
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public String getText() {
        try {
            WordToTextConverter wordToTextConverter = new WordToTextConverter();
            HeaderStories headerStories = new HeaderStories(this.doc);
            if (headerStories.getFirstHeaderSubrange() != null) {
                wordToTextConverter.processDocumentPart(this.doc, headerStories.getFirstHeaderSubrange());
            }
            if (headerStories.getEvenHeaderSubrange() != null) {
                wordToTextConverter.processDocumentPart(this.doc, headerStories.getEvenHeaderSubrange());
            }
            if (headerStories.getOddHeaderSubrange() != null) {
                wordToTextConverter.processDocumentPart(this.doc, headerStories.getOddHeaderSubrange());
            }
            wordToTextConverter.processDocument(this.doc);
            HWPFDocument hWPFDocument = this.doc;
            wordToTextConverter.processDocumentPart(hWPFDocument, hWPFDocument.getMainTextboxRange());
            if (headerStories.getFirstFooterSubrange() != null) {
                wordToTextConverter.processDocumentPart(this.doc, headerStories.getFirstFooterSubrange());
            }
            if (headerStories.getEvenFooterSubrange() != null) {
                wordToTextConverter.processDocumentPart(this.doc, headerStories.getEvenFooterSubrange());
            }
            if (headerStories.getOddFooterSubrange() != null) {
                wordToTextConverter.processDocumentPart(this.doc, headerStories.getOddFooterSubrange());
            }
            return wordToTextConverter.getText();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new IllegalStateException(e2);
        }
    }

    public String getTextFromPieces() {
        String replace = this.doc.getDocumentText().replace("\r\r\r", "\r\n\r\n\r\n").replace("\r\r", "\r\n\r\n");
        if (!replace.endsWith("\r")) {
            return replace;
        }
        return replace + "\n";
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public boolean isCloseFilesystem() {
        return this.doCloseFilesystem;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public void setCloseFilesystem(boolean z) {
        this.doCloseFilesystem = z;
    }

    public WordExtractor(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(new HWPFDocument(pOIFSFileSystem));
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public HWPFDocument getFilesystem() {
        return this.doc;
    }

    public WordExtractor(DirectoryNode directoryNode) throws IOException {
        this(new HWPFDocument(directoryNode));
    }

    @Override // org.apache.poi.extractor.POIOLE2TextExtractor, org.apache.poi.extractor.POITextExtractor
    public HWPFDocument getDocument() {
        return this.doc;
    }

    public WordExtractor(HWPFDocument hWPFDocument) {
        this.doCloseFilesystem = true;
        this.doc = hWPFDocument;
    }

    public static String[] getParagraphText(Range range) {
        int numParagraphs = range.numParagraphs();
        String[] strArr = new String[numParagraphs];
        for (int i = 0; i < numParagraphs; i++) {
            String text = range.getParagraph(i).text();
            strArr[i] = text;
            if (text.endsWith("\r")) {
                strArr[i] = strArr[i] + "\n";
            }
        }
        return strArr;
    }
}
