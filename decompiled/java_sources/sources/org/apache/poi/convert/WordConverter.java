package org.apache.poi.convert;

import java.io.Closeable;
import java.util.LinkedHashMap;
import java.util.List;
import org.apache.poi.picture.PicturesManager;
import org.apache.poi.sl.MetaData;
import org.jsoup.nodes.Document;

/* loaded from: classes12.dex */
public interface WordConverter extends Closeable {
    public static final int DOCUMENT_MAX_PARA_SIZE = 2000;
    public static final float TABLE_INDENT_RATIO = 0.2f;

    void convert();

    Document getDocument();

    List<Document> getDocumentList();

    int getDocumentParaSize();

    LinkedHashMap<String, Document> getDocuments();

    MetaData getMetaData();

    PicturesManager<?> getPicturesManager();

    List<WPStyle> getStyleList();

    float getTableIndentRatio();

    WPToc getToc();

    boolean isAbort();

    void setAbort(boolean z);

    void setDocumentParaSize(int i);

    void setPicturesManager(PicturesManager<?> picturesManager);

    void setTableIndentRatio(float f);

    void write(String str, boolean z);
}
