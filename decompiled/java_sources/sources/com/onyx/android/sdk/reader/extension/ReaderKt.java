package com.onyx.android.sdk.reader.extension;

import android.graphics.RectF;
import com.blankj.utilcode.util.LogUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.onyx.android.sdk.reader.api.ReaderDocumentOptions;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContentEntry;
import com.onyx.android.sdk.reader.api.ReaderException;
import com.onyx.android.sdk.reader.api.ReaderNavigator;
import com.onyx.android.sdk.reader.api.ReaderPlugin;
import com.onyx.android.sdk.reader.api.ReaderPluginOptions;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.config.ReaderConfig;
import com.onyx.android.sdk.reader.data.OpenDocumentArgs;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0004\u001a\u0012\u0010\b\u001a\u00020\t*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b\u001a\u001a\u0010\b\u001a\u00020\t*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t\u001a\u0012\u0010\r\u001a\u00020\t*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0006\u001a\n\u0010\u000f\u001a\u00020\u0010*\u00020\u0002\u001a\u0012\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013\u001a\n\u0010\u0014\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0015\u001a\u00020\u0016*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b\u001a\u0012\u0010\u0017\u001a\u00020\u0016*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b\u001a\u0012\u0010\u0018\u001a\u00020\u0019*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u001b\u001a\u0014\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u001a\n\u0010\u001f\u001a\u00020\u0016*\u00020\u0002¨\u0006 "}, m61528d2 = {"close", "", "Lcom/onyx/android/sdk/reader/Reader;", "getPageText", "", "pageIndex", "", CouchFieldKey.KEY_TOC_PAGE_ID, "getReaderPageInfo", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "position", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "readerPageInfo", "getReaderPageInfoAndText", FirebaseAnalytics.Param.INDEX, "loadToc", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", "open", "openDocumentArgs", "Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;", "reopen", "safeGetPageOriginSize", "Landroid/graphics/RectF;", "safeGetPageSizeWithDpi", "safeRender", "", "args", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", "updateEntryToc", "entry", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;", "viewportRect", "sdk-reader_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderKt {
    public static final void close(@NotNull Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        if (reader.isDocumentOpen()) {
            reader.getDocument().close();
        }
    }

    @NotNull
    public static final String getPageText(@NotNull Reader reader, int i) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        String pageText = reader.getPageDataProvider().getPageText(reader.getNavigator().positionByPageIndex(i));
        return pageText == null ? "" : pageText;
    }

    @NotNull
    public static final ReaderPageInfo getReaderPageInfo(@NotNull Reader reader, @NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        Intrinsics.checkNotNullParameter(position, "position");
        return getReaderPageInfo(reader, position, new ReaderPageInfo());
    }

    @NotNull
    public static final ReaderPageInfo getReaderPageInfoAndText(@NotNull Reader reader, int i) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        ReaderPosition positionByPageIndex = reader.getNavigator().positionByPageIndex(i);
        ReaderPageInfo readerPageInfo = getReaderPageInfo(reader, positionByPageIndex);
        String pageText = reader.getPageDataProvider().getPageText(positionByPageIndex);
        if (pageText == null) {
            pageText = "";
        }
        readerPageInfo.setPageText(pageText);
        return readerPageInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final ReaderDocumentTableOfContent loadToc(@NotNull Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        ReaderDocumentTableOfContent readerDocumentTableOfContent = new ReaderDocumentTableOfContent(null, 1, 0 == true ? 1 : 0);
        if (!reader.getDocument().readTableOfContent(readerDocumentTableOfContent)) {
            return readerDocumentTableOfContent;
        }
        updateEntryToc(reader, readerDocumentTableOfContent.getRootEntry());
        return readerDocumentTableOfContent;
    }

    public static final void open(@NotNull Reader reader, @NotNull OpenDocumentArgs openDocumentArgs) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        Intrinsics.checkNotNullParameter(openDocumentArgs, "openDocumentArgs");
        String path = openDocumentArgs.getPath();
        Size size = openDocumentArgs.getSize();
        ReaderPlugin selectPlugin = reader.selectPlugin(path);
        if (selectPlugin == null) {
            throw ReaderException.INSTANCE.illegalFormat(path);
        }
        ReaderDocumentOptions readerDocumentOptions = new ReaderDocumentOptions(null, null, null, null, 0, null, null, false, false, 0, null, 2047, null);
        readerDocumentOptions.setExtraOptions(openDocumentArgs.getExtraOptions());
        readerDocumentOptions.setDocumentPassword(openDocumentArgs.getPassword());
        ReaderPluginOptions create = ReaderPluginOptions.INSTANCE.create(ResManager.INSTANCE.getAppContext());
        create.setResDirs(TemplatePaths.INSTANCE.templatePathDirList(openDocumentArgs.getDocumentId()));
        reader.onDocumentOpen(path, selectPlugin, readerDocumentOptions, create, selectPlugin.open(path, readerDocumentOptions, create), selectPlugin.createDrmManager());
        reader.initViewSize(size);
    }

    public static final void reopen(@NotNull Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        if (reader.isDocumentOpen()) {
            reader.getPlugin().reopen();
        }
    }

    @NotNull
    public static final RectF safeGetPageOriginSize(@NotNull Reader reader, @NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        Intrinsics.checkNotNullParameter(position, "position");
        RectF pageOriginSize = reader.getPageDataProvider().getPageOriginSize(position);
        if (!pageOriginSize.isEmpty()) {
            return pageOriginSize;
        }
        Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(reader), "position = " + position.getStrPosition() + ", pageOriginSize empty, return default value", new Object[0]);
        return ReaderConfig.INSTANCE.getDEFAULT_SIZE().toRectF();
    }

    @NotNull
    public static final RectF safeGetPageSizeWithDpi(@NotNull Reader reader, @NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        Intrinsics.checkNotNullParameter(position, "position");
        RectF pageSizeWithDpi = reader.getPageDataProvider().getPageSizeWithDpi(position, 253.69f);
        if (!pageSizeWithDpi.isEmpty()) {
            return pageSizeWithDpi;
        }
        Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(reader), "position = " + position.getStrPosition() + ", pageSizeWithDpi empty, return default value", new Object[0]);
        return ReaderConfig.INSTANCE.getDEFAULT_SIZE().toRectF();
    }

    public static final boolean safeRender(@NotNull Reader reader, @NotNull DrawArgs args) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        try {
            reader.getRenderer().draw(args);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            LogUtils.wTag(AnyKt.toSimpleNameString(reader), "render fail, args = " + args.getPagePosition().getStrPosition());
            return false;
        }
    }

    public static final void updateEntryToc(@NotNull Reader reader, @Nullable ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        if (readerDocumentTableOfContentEntry == null) {
            return;
        }
        reader.getNavigator().updateTocPageIndex(readerDocumentTableOfContentEntry);
        if (CollectionKt.isNullOrEmpty(readerDocumentTableOfContentEntry.getChildren())) {
            return;
        }
        Iterator<ReaderDocumentTableOfContentEntry> it2 = readerDocumentTableOfContentEntry.getChildren().iterator();
        while (it2.hasNext()) {
            updateEntryToc(reader, it2.next());
        }
    }

    @NotNull
    public static final RectF viewportRect(@NotNull Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        return new RectF(reader.getViewSize().toRectF());
    }

    @NotNull
    public static final String getPageText(@NotNull Reader reader, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        String pageText = reader.getPageDataProvider().getPageText(ReaderNavigator.DefaultImpls.positionByPositionString$default(reader.getNavigator(), pageId, false, 2, null));
        return pageText == null ? "" : pageText;
    }

    @NotNull
    public static final ReaderPageInfo getReaderPageInfo(@NotNull Reader reader, @NotNull ReaderPosition position, @NotNull ReaderPageInfo readerPageInfo) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(readerPageInfo, "readerPageInfo");
        readerPageInfo.setPath(reader.getDocumentPath());
        readerPageInfo.setPageId(position.getStrPosition());
        readerPageInfo.setPageOriginSize(safeGetPageOriginSize(reader, position));
        readerPageInfo.setPageSizeWithDpi(safeGetPageSizeWithDpi(reader, position));
        return readerPageInfo;
    }
}
