package com.onyx.android.sdk.reader.extension;

import android.graphics.RectF;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.api.ReaderNavigator;
import com.onyx.android.sdk.reader.plugins.template.TemplateReaderPlugin;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004\u001a\n\u0010\b\u001a\u00020\t*\u00020\u0002¨\u0006\n"}, m61528d2 = {"isValidContentPage", "", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "path", "", "pageIndex", "", CouchFieldKey.KEY_TOC_PAGE_ID, "viewportRect", "Landroid/graphics/RectF;", "sdk-reader_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderBundleKt {
    public static final boolean isValidContentPage(@NotNull ReaderBundle readerBundle, @NotNull String path, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(readerBundle, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        if (TemplateReaderPlugin.INSTANCE.accept(path)) {
            return true;
        }
        if (ReaderBundle.ensureReaderByPath$default(readerBundle, path, null, 2, null) == null) {
            return false;
        }
        return !r4.getPageDataProvider().getPageOriginSize(ReaderNavigator.DefaultImpls.positionByPositionString$default(r4.getNavigator(), pageId, false, 2, null)).isEmpty();
    }

    @NotNull
    public static final RectF viewportRect(@NotNull ReaderBundle readerBundle) {
        Intrinsics.checkNotNullParameter(readerBundle, "<this>");
        return new RectF(readerBundle.getViewSize().toRectF());
    }

    public static final boolean isValidContentPage(@NotNull ReaderBundle readerBundle, @NotNull String path, int i) {
        Intrinsics.checkNotNullParameter(readerBundle, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        if (TemplateReaderPlugin.INSTANCE.accept(path)) {
            return true;
        }
        if (ReaderBundle.ensureReaderByPath$default(readerBundle, path, null, 2, null) == null) {
            return false;
        }
        return !r3.getPageDataProvider().getPageOriginSize(r3.getNavigator().positionByPageIndex(i)).isEmpty();
    }
}
