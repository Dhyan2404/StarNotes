package com.onyx.engine.sdk;

import android.graphics.Bitmap;
import android.util.Log;
import com.onyx.engine.sdk.Chapter;
import com.onyx.engine.sdk.DataList;
import com.onyx.engine.sdk.TableOfContent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes8.dex */
public interface NeoBaseNative {
    void abortLayout();

    void abortSearch();

    boolean canGotoPage(PageInfo pageInfo);

    void close();

    List<CompatiblePosition> compatiblePosition(List<CompatiblePosition> list);

    NeoPDFConverterNative createPDFConverter();

    boolean drawPage(Bitmap bitmap);

    boolean drawPage(PageInfo pageInfo, Bitmap bitmap);

    NeoBaseNative forkForPagination();

    List<PinPosition> fromPositionInt(List<Integer> list);

    List<PinPosition> fromUtf8PositionInt(List<Integer> list);

    default String generateEpub(String str) {
        Log.e(getClass().getSimpleName(), "Not implemented");
        return null;
    }

    int getBookSize();

    default List<CellOfScreen> getCellOfScreenList() {
        return getCellOfScreenList(new TextRunParameter());
    }

    DataList.StringList getChapterIdList(int i, int i2);

    default List<String> getChapterIdList() {
        DataList.StringList chapterIdList;
        ArrayList arrayList = new ArrayList();
        do {
            chapterIdList = getChapterIdList(arrayList.size(), 100);
            Utils.safelyAddAll(arrayList, chapterIdList.getList());
            if (arrayList.size() >= chapterIdList.total) {
                break;
            }
        } while (chapterIdList.size() >= 100);
        return arrayList;
    }

    Chapter.ChapterList getChapterList(int i, int i2);

    default List<Chapter> getChapterList() {
        Chapter.ChapterList chapterList;
        ArrayList arrayList = new ArrayList();
        do {
            chapterList = getChapterList(arrayList.size(), 100);
            Utils.safelyAddAll(arrayList, chapterList.getList());
            if (arrayList.size() >= chapterList.total) {
                break;
            }
        } while (chapterList.size() >= 100);
        return arrayList;
    }

    PageInfo getCurrentPage();

    PageProgressionDirection getDirection();

    List<FontSpec> getFontFamilyList();

    ImageInfo getImagePage(int i);

    long getLayoutTime(boolean z);

    boolean getLinkTarget(List<LinkInfo> list);

    Metadata getMetadata();

    List<ImageInfo> getPageImages();

    List<LinkInfo> getPageLinks();

    default ScreenData getScreenData() {
        return getScreenData(new TextRunParameter());
    }

    ScreenData getScreenData(TextRunParameter textRunParameter);

    default List<Sentence> getSentenceList() {
        return getSentenceList(new SentenceParameter());
    }

    List<Sentence> getSentenceList(SentenceParameter sentenceParameter);

    TableOfContent.EntryList getTableOfContent(TableOfContent.TocParameter tocParameter);

    default TableOfContent getTableOfContent() {
        return getTableOfContent(true);
    }

    String getText(int i, int i2);

    default List<TextRun> getTextRunList() {
        return getTextRunList(new TextRunParameter());
    }

    List<TextRun> getTextRunList(TextRunParameter textRunParameter);

    PageInfo gotoPage(PageInfo pageInfo);

    boolean hasGrayArea(GrayAreaParameter grayAreaParameter);

    boolean hasNextPage(PageInfo pageInfo);

    boolean isImagePage(int i);

    PageInfo nextPage(PageInfo pageInfo);

    BookOpenResult open(OpenOptions openOptions);

    Bitmap readBitmap(Resource resource);

    Bitmap readCover();

    void recycleChapter(int i);

    void recycleChapter(String str);

    List<SearchResult> search(SearchOptions searchOptions);

    boolean setReaderTextStyle(ReaderTextStyle readerTextStyle);

    boolean setupDisplayMetrics(DisplayMetrics displayMetrics);

    default List<CellOfScreen> getCellOfScreenList(TextRunParameter textRunParameter) {
        ArrayList arrayList = new ArrayList();
        Iterator<TextRun> it2 = getTextRunList(textRunParameter).iterator();
        while (it2.hasNext()) {
            arrayList.addAll(it2.next().getCellOfScreenList());
        }
        return arrayList;
    }

    default TableOfContent getTableOfContent(boolean z) {
        TableOfContent tableOfContent = new TableOfContent();
        tableOfContent.setLoadPosition(z);
        TableOfContent.TocParameter tocParameter = new TableOfContent.TocParameter();
        tocParameter.loadPosition = z;
        tocParameter.loadRootTitle = true;
        tocParameter.recursive = true;
        getTableOfContent(tableOfContent.getRoot(), tocParameter);
        return tableOfContent;
    }

    default DataList.StringList getChapterIdList(int i) {
        return getChapterIdList(0, i);
    }

    default Chapter.ChapterList getChapterList(int i) {
        return getChapterList(0, i);
    }

    default boolean getTableOfContent(TableOfContentEntry tableOfContentEntry, TableOfContent.TocParameter tocParameter) {
        while (true) {
            TableOfContent.EntryList tableOfContent = getTableOfContent(tocParameter);
            tableOfContentEntry.setChildrenSize(tableOfContent.total);
            tableOfContentEntry.addAll(tableOfContent.list);
            if (tocParameter.loadRootTitle) {
                tableOfContentEntry.setTitle(tableOfContent.title);
                tocParameter.loadRootTitle = false;
            }
            if (tableOfContentEntry.size() >= tableOfContent.total || tableOfContent.size() < tocParameter.limit) {
                break;
            }
            tocParameter.start = tableOfContentEntry.size();
        }
        if (tableOfContentEntry.getChildrenSize() <= 0) {
            tocParameter.path.pollLast();
            return false;
        }
        if (!tocParameter.recursive) {
            return true;
        }
        List<TableOfContentEntry> children = tableOfContentEntry.getChildren();
        for (int i = 0; i < children.size(); i++) {
            TableOfContentEntry tableOfContentEntry2 = children.get(i);
            if (tableOfContentEntry2.getChildrenSize() > 0) {
                tocParameter.start = 0;
                tocParameter.path.addLast(Integer.valueOf(i));
                getTableOfContent(tableOfContentEntry2, tocParameter);
            }
        }
        tocParameter.path.pollLast();
        return true;
    }
}
