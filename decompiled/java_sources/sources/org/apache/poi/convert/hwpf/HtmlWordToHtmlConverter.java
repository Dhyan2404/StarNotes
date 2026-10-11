package org.apache.poi.convert.hwpf;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.nio.charset.StandardCharsets;
import org.apache.poi.convert.AbstractConverter;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.mozilla.universalchardet.UniversalDetector;

/* loaded from: classes12.dex */
public class HtmlWordToHtmlConverter extends AbstractConverter {
    private byte[] data;
    private Document document;
    private String path;

    public HtmlWordToHtmlConverter(byte[] bArr) {
        this.data = bArr;
    }

    private void convertByData() {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.data);
        String detectCharset = detectCharset(byteArrayInputStream);
        byteArrayInputStream.reset();
        try {
            Document parse = Jsoup.parse(byteArrayInputStream, detectCharset, "");
            this.document = parse;
            this.documentList.add(parse);
            this.documentMap.put(documentName(1), this.document);
        } catch (Exception e) {
            this.LOG.atError().withThrowable(e).log();
        }
    }

    private void convertByPath() {
        try {
            Document parse = Jsoup.parse(new File(this.path), (String) null, "");
            this.document = parse;
            this.documentList.add(parse);
            this.documentMap.put(documentName(1), this.document);
        } catch (Exception e) {
            this.LOG.atError().withThrowable(e).log();
        }
    }

    private String detectCharset(ByteArrayInputStream byteArrayInputStream) {
        try {
            return UniversalDetector.detectCharset(byteArrayInputStream);
        } catch (Exception e) {
            this.LOG.atError().withThrowable(e).log();
            return StandardCharsets.UTF_8.name();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.data = null;
    }

    @Override // org.apache.poi.convert.WordConverter
    public void convert() {
        if (this.data != null) {
            convertByData();
        } else {
            convertByPath();
        }
    }

    @Override // org.apache.poi.convert.AbstractConverter, org.apache.poi.convert.WordConverter
    public Document getDocument() {
        return this.document;
    }

    public HtmlWordToHtmlConverter(String str) {
        this.path = str;
    }
}
