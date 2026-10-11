package com.onyx.engine.sdk;

import android.graphics.Bitmap;
import com.onyx.engine.sdk.Chapter;
import com.onyx.engine.sdk.DataList;
import com.onyx.engine.sdk.TableOfContent;
import java.util.List;

/* loaded from: classes8.dex */
public class NeoMarkdownNative implements NeoBaseNative {
    private int bookSize;
    private long handle;

    private native void nativeAbortLayout(long j);

    private native void nativeAbortSearch(long j);

    private native boolean nativeCanGotoPage(long j, String str);

    private native void nativeClose(long j);

    private native String nativeCompatiblePosition(long j, String str);

    private native boolean nativeDrawPage(long j, String str, Bitmap bitmap);

    private native long nativeForkForPagination(long j);

    private native String nativeFromPositionInt(long j, String str);

    private native String nativeFromUtf8PositionInt(long j, String str);

    private native String nativeGetChapterIdList(long j, int i, int i2);

    private native String nativeGetChapterList(long j, int i, int i2);

    private native String nativeGetCurrentPage(long j);

    private native int nativeGetDirection(long j);

    private native String nativeGetFontFamilyList(long j);

    private native String nativeGetImagePage(long j, int i);

    private native long nativeGetLayoutTime(long j, boolean z);

    private native String nativeGetLinkTarget(long j, String str);

    private native String nativeGetMetadata(long j);

    private native String nativeGetPageImages(long j);

    private native String nativeGetPageLinks(long j);

    private native String nativeGetScreenData(long j, String str);

    private native String nativeGetSentenceList(long j, String str);

    private native String nativeGetTableOfContent(long j, String str);

    private native String nativeGetText(long j, int i, int i2);

    private native String nativeGetTextRunList(long j, String str);

    private native String nativeGotoPage(long j, String str);

    private native boolean nativeHasGrayArea(long j, String str);

    private native boolean nativeHasNextPage(long j, String str);

    private native boolean nativeHasPrevPage(long j, String str);

    private native boolean nativeIsImagePage(long j, int i);

    private native String nativeNextPage(long j, String str);

    private native String nativeOpen(String str, DrmSDK drmSDK);

    private native String nativePrevPage(long j, String str);

    private native Bitmap nativeReadBitmap(long j, String str);

    private native Bitmap nativeReadCover(long j);

    private native void nativeRecycleChapter(long j, String str);

    private native void nativeRecycleChapterByIndex(long j, int i);

    private native String nativeSearch(long j, String str);

    private native boolean nativeSetReaderTextStyle(long j, String str);

    private native boolean nativeSetupDisplayMetrics(long j, String str);

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public void abortLayout() {
        nativeAbortLayout(this.handle);
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public void abortSearch() {
        nativeAbortSearch(this.handle);
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public boolean canGotoPage(PageInfo pageInfo) {
        int startPositionInt = pageInfo.getStartPositionInt();
        if (startPositionInt < 0 || startPositionInt >= this.bookSize) {
            return nativeCanGotoPage(this.handle, pageInfo.toJson());
        }
        return true;
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public void close() {
        this.bookSize = 0;
        long j = this.handle;
        if (j != 0) {
            nativeClose(j);
            this.handle = 0L;
        }
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public List<CompatiblePosition> compatiblePosition(List<CompatiblePosition> list) {
        return CompatiblePosition.parseList(nativeCompatiblePosition(this.handle, JsonUtils.toJson(list)));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public NeoPDFConverterNative createPDFConverter() {
        return new NeoPDFConverterNative(this.handle, this.bookSize);
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public boolean drawPage(PageInfo pageInfo, Bitmap bitmap) {
        return nativeDrawPage(this.handle, pageInfo.toJson(), bitmap);
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public List<PinPosition> fromPositionInt(List<Integer> list) {
        return PinPosition.parseList(nativeFromPositionInt(this.handle, JsonUtils.toJson(list)));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public List<PinPosition> fromUtf8PositionInt(List<Integer> list) {
        return PinPosition.parseList(nativeFromUtf8PositionInt(this.handle, JsonUtils.toJson(list)));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public int getBookSize() {
        return this.bookSize;
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public DataList.StringList getChapterIdList(int i, int i2) {
        return DataList.StringList.fromJson(nativeGetChapterIdList(this.handle, i, i2));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public Chapter.ChapterList getChapterList(int i, int i2) {
        return Chapter.ChapterList.fromJson(nativeGetChapterList(this.handle, i, i2));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public PageInfo getCurrentPage() {
        return PageInfo.fromJson(nativeGetCurrentPage(this.handle));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public PageProgressionDirection getDirection() {
        return PageProgressionDirection.valueOf(nativeGetDirection(this.handle));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public List<FontSpec> getFontFamilyList() {
        return FontSpec.parseList(nativeGetFontFamilyList(this.handle));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public ImageInfo getImagePage(int i) {
        return ImageInfo.fromJson(nativeGetImagePage(this.handle, i));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public long getLayoutTime(boolean z) {
        return nativeGetLayoutTime(this.handle, z);
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public boolean getLinkTarget(List<LinkInfo> list) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        List<LinkTarget> parseList = LinkTarget.parseList(nativeGetLinkTarget(this.handle, JsonUtils.toJson(list)));
        if (parseList.size() != list.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            list.get(i).setTarget(parseList.get(i));
        }
        return true;
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public Metadata getMetadata() {
        return Metadata.fromJson(nativeGetMetadata(this.handle));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public List<ImageInfo> getPageImages() {
        return ScreenData.fromJson(nativeGetPageImages(this.handle)).getImageList();
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public List<LinkInfo> getPageLinks() {
        return ScreenData.fromJson(nativeGetPageLinks(this.handle)).getLinkList();
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public ScreenData getScreenData(TextRunParameter textRunParameter) {
        return ScreenData.fromJson(nativeGetScreenData(this.handle, textRunParameter.toJson()));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public List<Sentence> getSentenceList(SentenceParameter sentenceParameter) {
        return Sentence.parseList(nativeGetSentenceList(this.handle, sentenceParameter.toJson()));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public TableOfContent.EntryList getTableOfContent(TableOfContent.TocParameter tocParameter) {
        return TableOfContent.EntryList.fromJson(nativeGetTableOfContent(this.handle, tocParameter.toJson()));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public String getText(int i, int i2) {
        return nativeGetText(this.handle, i, i2);
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public List<TextRun> getTextRunList(TextRunParameter textRunParameter) {
        return ScreenData.fromJson(nativeGetTextRunList(this.handle, textRunParameter.toJson())).getTextRunList();
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public PageInfo gotoPage(PageInfo pageInfo) {
        return PageInfo.fromJson(nativeGotoPage(this.handle, pageInfo.toJson()));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public boolean hasGrayArea(GrayAreaParameter grayAreaParameter) {
        return nativeHasGrayArea(this.handle, grayAreaParameter.toJson());
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public boolean hasNextPage(PageInfo pageInfo) {
        if (pageInfo.getStartPositionInt() < 0 || pageInfo.getEndPositionInt() >= this.bookSize) {
            return nativeHasNextPage(this.handle, pageInfo.toJson());
        }
        return true;
    }

    public boolean hasPrevPage(PageInfo pageInfo) {
        int startPositionInt = pageInfo.getStartPositionInt();
        if (startPositionInt <= 0 || startPositionInt >= this.bookSize) {
            return nativeHasPrevPage(this.handle, pageInfo.toJson());
        }
        return true;
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public boolean isImagePage(int i) {
        return nativeIsImagePage(this.handle, i);
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public PageInfo nextPage(PageInfo pageInfo) {
        return PageInfo.fromJson(nativeNextPage(this.handle, pageInfo.toJson()));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public BookOpenResult open(OpenOptions openOptions) {
        BookOpenResult fromJson = BookOpenResult.fromJson(nativeOpen(openOptions.toJson(), openOptions.getDrmCallback()));
        if (fromJson.getErr() == HandleErrorCode.OK) {
            this.handle = fromJson.getHandle();
            this.bookSize = fromJson.getBookSize();
        }
        return fromJson;
    }

    public PageInfo prevPage(PageInfo pageInfo) {
        return PageInfo.fromJson(nativePrevPage(this.handle, pageInfo.toJson()));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public Bitmap readBitmap(Resource resource) {
        return nativeReadBitmap(this.handle, resource.toJson());
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public Bitmap readCover() {
        return nativeReadCover(this.handle);
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public void recycleChapter(int i) {
        nativeRecycleChapterByIndex(this.handle, i);
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public List<SearchResult> search(SearchOptions searchOptions) {
        return ChapterSearchResult.parseList(nativeSearch(this.handle, searchOptions.toJson()));
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public boolean setReaderTextStyle(ReaderTextStyle readerTextStyle) {
        return nativeSetReaderTextStyle(this.handle, readerTextStyle.toJson());
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public boolean setupDisplayMetrics(DisplayMetrics displayMetrics) {
        return nativeSetupDisplayMetrics(this.handle, displayMetrics.toJson());
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public boolean drawPage(Bitmap bitmap) {
        return nativeDrawPage(this.handle, null, bitmap);
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public NeoMarkdownNative forkForPagination() {
        NeoMarkdownNative neoMarkdownNative = new NeoMarkdownNative();
        neoMarkdownNative.handle = nativeForkForPagination(this.handle);
        neoMarkdownNative.bookSize = this.bookSize;
        return neoMarkdownNative;
    }

    @Override // com.onyx.engine.sdk.NeoBaseNative
    public void recycleChapter(String str) {
        nativeRecycleChapter(this.handle, str);
    }
}
