package org.apache.poi.convert;

import androidx.core.app.NotificationCompat;
import androidx.core.net.MailTo;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.FileUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.picture.PicturesManager;
import org.apache.poi.sl.MetaData;
import org.apache.poi.util.DocumentUtils;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.XmlDeclaration;

/* loaded from: classes12.dex */
public abstract class AbstractConverter implements WordConverter {
    protected static String FONT_UNIT = "pt";
    protected boolean abort;
    protected PicturesManager<?> picturesManager;
    protected final Logger LOG = LogManager.getLogger(getClass().getSimpleName());
    protected LinkedHashMap<String, Document> documentMap = new LinkedHashMap<>();
    protected ArrayList<Document> documentList = new ArrayList<>();
    protected ArrayList<WPStyle> styleList = new ArrayList<>();
    protected DecimalFormat decimalFormat = new DecimalFormat("0000.html");
    protected MetaData metaData = new MetaData();
    protected WPToc wpToc = new WPToc();
    protected float tableIndentRatio = 1.0f;
    protected int documentParaSize = -1;

    private Document buildConfig() {
        Document document = new Document("");
        document.outputSettings().syntax(Document.OutputSettings.Syntax.xml);
        XmlDeclaration xmlDeclaration = new XmlDeclaration("xml", false);
        xmlDeclaration.attr("version", "1.0");
        xmlDeclaration.attr("encoding", "UTF-8");
        document.appendChild(xmlDeclaration);
        Element appendTo = document.createElement("xml").appendTo(document);
        Element appendTo2 = document.createElement("htmlList").appendTo(appendTo);
        Iterator<Map.Entry<String, Document>> it2 = this.documentMap.entrySet().iterator();
        while (it2.hasNext()) {
            document.createElement("li").text(it2.next().getKey()).appendTo(appendTo2);
        }
        Element appendTo3 = document.createElement("styleList").appendTo(appendTo);
        Iterator<WPStyle> it3 = this.styleList.iterator();
        while (it3.hasNext()) {
            document.createElement("li").text(it3.next().getName()).appendTo(appendTo3);
        }
        document.createElement(SyncConstant.LOCAL_TOC_DIR_NAME).text("toc.html").appendTo(appendTo);
        Element appendTo4 = document.createElement("metadata").appendTo(appendTo);
        document.createElement("meta").attr("name", "application").attr("content", this.metaData.getApplication()).appendTo(appendTo4);
        document.createElement("meta").attr("name", NotificationCompat.CarExtender.f4973i).attr("content", this.metaData.getAuthor()).appendTo(appendTo4);
        document.createElement("meta").attr("name", "title").attr("content", this.metaData.getTitle()).appendTo(appendTo4);
        document.createElement("meta").attr("name", MailTo.f5529g).attr("content", this.metaData.getSubject()).appendTo(appendTo4);
        document.createElement("meta").attr("name", "category").attr("content", this.metaData.getCategory()).appendTo(appendTo4);
        document.createElement("meta").attr("name", "company").attr("content", this.metaData.getCompany()).appendTo(appendTo4);
        document.createElement("meta").attr("name", "keywords").attr("content", this.metaData.getKeywords()).appendTo(appendTo4);
        document.createElement("meta").attr("name", "description").attr("content", this.metaData.getDescription()).appendTo(appendTo4);
        document.createElement("meta").attr("name", "identifier").attr("content", this.metaData.getIdentifier()).appendTo(appendTo4);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS);
        document.createElement("meta").attr("name", "created").attr("content", simpleDateFormat.format(new Date(this.metaData.getCreated()))).appendTo(appendTo4);
        document.createElement("meta").attr("name", "modified").attr("content", simpleDateFormat.format(new Date(this.metaData.getModified()))).appendTo(appendTo4);
        return document;
    }

    public static final String getFontUnit() {
        return FONT_UNIT;
    }

    public static final void setFontUnit(String str) {
        FONT_UNIT = str;
    }

    public void addHtmlDocumentStyle(String str) {
        WPStyle wPStyle = new WPStyle();
        if (!this.styleList.isEmpty()) {
            wPStyle.setName(String.format("style%d.css", Integer.valueOf(this.styleList.size())));
        }
        wPStyle.setData(str);
        this.styleList.add(wPStyle);
    }

    public String documentName(int i) {
        return this.decimalFormat.format(i);
    }

    @Override // org.apache.poi.convert.WordConverter
    public Document getDocument() {
        return this.documentList.get(0);
    }

    @Override // org.apache.poi.convert.WordConverter
    public List<Document> getDocumentList() {
        return this.documentList;
    }

    @Override // org.apache.poi.convert.WordConverter
    public int getDocumentParaSize() {
        return this.documentParaSize;
    }

    @Override // org.apache.poi.convert.WordConverter
    public LinkedHashMap<String, Document> getDocuments() {
        return this.documentMap;
    }

    @Override // org.apache.poi.convert.WordConverter
    public MetaData getMetaData() {
        return this.metaData;
    }

    @Override // org.apache.poi.convert.WordConverter
    public PicturesManager<?> getPicturesManager() {
        return this.picturesManager;
    }

    @Override // org.apache.poi.convert.WordConverter
    public List<WPStyle> getStyleList() {
        return this.styleList;
    }

    @Override // org.apache.poi.convert.WordConverter
    public float getTableIndentRatio() {
        return this.tableIndentRatio;
    }

    @Override // org.apache.poi.convert.WordConverter
    public WPToc getToc() {
        return this.wpToc;
    }

    @Override // org.apache.poi.convert.WordConverter
    public boolean isAbort() {
        return this.abort;
    }

    @Override // org.apache.poi.convert.WordConverter
    public void setAbort(boolean z) {
        this.abort = z;
    }

    @Override // org.apache.poi.convert.WordConverter
    public void setDocumentParaSize(int i) {
        this.documentParaSize = i;
    }

    @Override // org.apache.poi.convert.WordConverter
    public void setPicturesManager(PicturesManager<?> picturesManager) {
        this.picturesManager = picturesManager;
    }

    @Override // org.apache.poi.convert.WordConverter
    public void setTableIndentRatio(float f) {
        this.tableIndentRatio = f;
    }

    @Override // org.apache.poi.convert.WordConverter
    public void write(String str, boolean z) {
        try {
            FileUtils.forceMkdir(new File(str));
            for (Map.Entry<String, Document> entry : this.documentMap.entrySet()) {
                Document value = entry.getValue();
                value.outputSettings().prettyPrint(z);
                DocumentUtils.saveDocument(value, new File(str, entry.getKey()));
            }
            Iterator<WPStyle> it2 = this.styleList.iterator();
            while (it2.hasNext()) {
                WPStyle next = it2.next();
                DocumentUtils.saveContentToFile(next.getAllData(), new File(str, next.getName()));
            }
            Document buildHtml = TocUtils.buildHtml(this.wpToc);
            buildHtml.outputSettings().prettyPrint(z);
            DocumentUtils.saveContentToFile(buildHtml.html(), new File(str, "toc.html"));
            Document buildConfig = buildConfig();
            buildConfig.outputSettings().prettyPrint(z);
            DocumentUtils.saveContentToFile(buildConfig.html(), new File(str, "config.xml"));
        } catch (IOException e) {
            throw new RuntimeException(e.getMessage());
        }
    }
}
