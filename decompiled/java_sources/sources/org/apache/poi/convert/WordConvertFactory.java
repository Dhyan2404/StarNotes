package org.apache.poi.convert;

import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.convert.hwpf.HWPFWordToHtmlConverter;
import org.apache.poi.convert.hwpf.HWPFWordToHtmlUtils;
import org.apache.poi.convert.hwpf.HtmlWordToHtmlConverter;
import org.apache.poi.convert.smtp.SMTPConverter;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlConverter;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.hwpf.OLE2InternalFileException;
import org.apache.poi.openxml4j.exceptions.OLE2NotOfficeXmlFileException;
import org.apache.poi.picture.PicturesCache;
import org.apache.poi.picture.PicturesManager;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.HTMLFormatException;
import org.apache.poi.poifs.filesystem.OfficeXmlFileException;
import org.apache.poi.poifs.filesystem.SMTPFormatException;
import org.apache.poi.sl.MetaData;
import org.apache.poi.smtp.SMTPDocument;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.xwpf.usermodel.XWPFDocument;

/* loaded from: classes12.dex */
public class WordConvertFactory {
    private boolean abort;
    private WordConverter converter;
    private int documentSize;
    private String filePath;
    private String password;
    private PicturesCache<?> picturesCache;
    private PicturesManager<?> picturesManager;
    private float tableIndentRatio;
    public static final List<String> DOC_EXTENSION = new ArrayList<String>(2) { // from class: org.apache.poi.convert.WordConvertFactory.1
        {
            add("doc");
            add(gon.f71308x0);
        }
    };
    public static final List<String> DOCX_EXTENSION = new ArrayList<String>(4) { // from class: org.apache.poi.convert.WordConvertFactory.2
        {
            add(FileTypeConstant.DOCX);
            add("dotx");
            add("dotm");
            add("docm");
        }
    };

    /* loaded from: classes12.dex */
    public static class Builder {
        private int documentParaSize;
        private String filePath;
        private String password;
        private PicturesManager<?> picturesManager;
        private float tableIndentRatio;

        public WordConvertFactory build() {
            WordConvertFactory wordConvertFactory = new WordConvertFactory();
            wordConvertFactory.filePath = this.filePath;
            wordConvertFactory.password = this.password;
            wordConvertFactory.documentSize = this.documentParaSize;
            wordConvertFactory.tableIndentRatio = this.tableIndentRatio;
            wordConvertFactory.picturesManager = this.picturesManager;
            return wordConvertFactory;
        }

        public Builder setDocumentParaSize(int i) {
            this.documentParaSize = i;
            return this;
        }

        public Builder setFilePath(String str) {
            this.filePath = str;
            return this;
        }

        public Builder setPassword(String str) {
            this.password = str;
            return this;
        }

        public Builder setPicturesManager(PicturesManager picturesManager) {
            this.picturesManager = picturesManager;
            return this;
        }

        public Builder setTableIndentRatio(float f) {
            this.tableIndentRatio = f;
            return this;
        }
    }

    public static boolean accept(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf < 0) {
            return false;
        }
        String substring = str.substring(lastIndexOf + 1);
        return DOC_EXTENSION.contains(substring) || DOCX_EXTENSION.contains(substring);
    }

    private WordConverter createConvert() throws Exception {
        String extension = getExtension();
        if (DOC_EXTENSION.contains(extension)) {
            return createWithHWPF();
        }
        if (DOCX_EXTENSION.contains(extension)) {
            return createWithXWPF();
        }
        throw new UnsupportedOperationException("Unsupported path " + this.filePath);
    }

    private WordConverter createHtmlWordToHtmlConvert(OLE2InternalFileException oLE2InternalFileException) {
        byte[] data = oLE2InternalFileException.getData();
        FileMagic valueOf = FileMagic.valueOf(data);
        if (valueOf != FileMagic.HTML && valueOf != FileMagic.XML) {
            throw new UnsupportedOperationException("Unknown file: " + valueOf.name());
        }
        return new HtmlWordToHtmlConverter(data);
    }

    private WordConverter createSMTPConvert() throws Exception {
        SMTPDocument sMTPDocument = new SMTPDocument(new FileInputStream(this.filePath));
        try {
            SMTPConverter sMTPConverter = new SMTPConverter(sMTPDocument);
            setPicturesManager(sMTPConverter);
            sMTPDocument.close();
            return sMTPConverter;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    sMTPDocument.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private WordConverter createWithHWPF() throws Exception {
        try {
            HWPFWordToHtmlConverter hWPFWordToHtmlConverter = new HWPFWordToHtmlConverter(HWPFWordToHtmlUtils.loadDoc(new File(this.filePath), this.password));
            hWPFWordToHtmlConverter.setTableIndentRatio(this.tableIndentRatio);
            hWPFWordToHtmlConverter.setDocumentParaSize(this.documentSize);
            setPicturesManager(hWPFWordToHtmlConverter);
            return hWPFWordToHtmlConverter;
        } catch (OLE2InternalFileException e) {
            return createHtmlWordToHtmlConvert(e);
        } catch (HTMLFormatException unused) {
            return createHtmlWordToHtmlConvert();
        } catch (OfficeXmlFileException unused2) {
            return createWithXWPF();
        } catch (SMTPFormatException unused3) {
            return createSMTPConvert();
        } catch (Exception e2) {
            throw e2;
        }
    }

    private WordConverter createWithXWPF() throws Exception {
        try {
            XmlBeanUtils.parseDocument(false);
            XWPFDocument loadDoc = XWPFWordToHtmlUtils.loadDoc(new File(this.filePath), this.password);
            XmlBeanUtils.parseDocument(true);
            XWPFWordToHtmlConverter xWPFWordToHtmlConverter = new XWPFWordToHtmlConverter(loadDoc);
            xWPFWordToHtmlConverter.setTableIndentRatio(this.tableIndentRatio);
            xWPFWordToHtmlConverter.setDocumentParaSize(this.documentSize);
            setPicturesManager(xWPFWordToHtmlConverter);
            return xWPFWordToHtmlConverter;
        } catch (OLE2NotOfficeXmlFileException unused) {
            return createWithHWPF();
        } catch (HTMLFormatException unused2) {
            return createHtmlWordToHtmlConvert();
        } catch (SMTPFormatException unused3) {
            return createSMTPConvert();
        } catch (Exception e) {
            throw e;
        }
    }

    private String getExtension() {
        int lastIndexOf = this.filePath.lastIndexOf(".");
        return lastIndexOf > 0 ? this.filePath.substring(lastIndexOf + 1).toLowerCase(Locale.getDefault()) : "";
    }

    private void setPicturesManager(WordConverter wordConverter) {
        PicturesManager<?> picturesManager = this.picturesManager;
        if (picturesManager != null) {
            wordConverter.setPicturesManager(picturesManager);
            this.picturesCache = this.picturesManager.getPicturesCache();
        }
    }

    public static void setXWPFDocumentSupportedSize(int i) {
        XWPFDocument.DOCUMENT_MAX_SIZE = i;
    }

    public void close() {
        CloseUtils.close(this.picturesManager);
    }

    public void convertWord() throws Exception {
        WordConverter createConvert = createConvert();
        this.converter = createConvert;
        createConvert.setAbort(this.abort);
        this.converter.convert();
        this.converter.close();
    }

    public WordConverter getConverter() {
        return this.converter;
    }

    public int getDocumentSize() {
        return this.documentSize;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public MetaData getMetaData() {
        return this.converter.getMetaData();
    }

    public String getPassword() {
        return this.password;
    }

    public PicturesCache<?> getPicturesCache() {
        return this.picturesCache;
    }

    public PicturesManager<?> getPicturesManager() {
        return this.picturesManager;
    }

    public float getTableIndentRatio() {
        return this.tableIndentRatio;
    }

    public boolean isAbort() {
        return this.abort;
    }

    public void setAbort(boolean z) {
        this.abort = z;
        WordConverter wordConverter = this.converter;
        if (wordConverter != null) {
            wordConverter.setAbort(z);
        }
    }

    public void write(String str) {
        this.converter.write(str, false);
    }

    private WordConvertFactory() {
    }

    public void write(String str, boolean z) {
        this.converter.write(str, z);
    }

    private WordConverter createHtmlWordToHtmlConvert() {
        return new HtmlWordToHtmlConverter(this.filePath);
    }
}
