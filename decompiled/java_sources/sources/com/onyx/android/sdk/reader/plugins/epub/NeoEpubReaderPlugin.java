package com.onyx.android.sdk.reader.plugins.epub;

import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.IntRange;
import androidx.core.content.FileProvider;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.reader.api.ConvertArgs;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.onyx.android.sdk.reader.api.PageTextInfoState;
import com.onyx.android.sdk.reader.api.PaginationChapterInfo;
import com.onyx.android.sdk.reader.api.ReaderDocument;
import com.onyx.android.sdk.reader.api.ReaderDocumentConverter;
import com.onyx.android.sdk.reader.api.ReaderDocumentExporter;
import com.onyx.android.sdk.reader.api.ReaderDocumentFeatures;
import com.onyx.android.sdk.reader.api.ReaderDocumentMetadata;
import com.onyx.android.sdk.reader.api.ReaderDocumentOptions;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContentEntry;
import com.onyx.android.sdk.reader.api.ReaderDocumentWriter;
import com.onyx.android.sdk.reader.api.ReaderDrmCertificateFactory;
import com.onyx.android.sdk.reader.api.ReaderDrmManager;
import com.onyx.android.sdk.reader.api.ReaderException;
import com.onyx.android.sdk.reader.api.ReaderHitTestArgs;
import com.onyx.android.sdk.reader.api.ReaderHitTestManager;
import com.onyx.android.sdk.reader.api.ReaderHitTestOptions;
import com.onyx.android.sdk.reader.api.ReaderImage;
import com.onyx.android.sdk.reader.api.ReaderNavigator;
import com.onyx.android.sdk.reader.api.ReaderPageDataProvider;
import com.onyx.android.sdk.reader.api.ReaderPageType;
import com.onyx.android.sdk.reader.api.ReaderPagination;
import com.onyx.android.sdk.reader.api.ReaderPlugin;
import com.onyx.android.sdk.reader.api.ReaderPluginFeatures;
import com.onyx.android.sdk.reader.api.ReaderPluginOptions;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.api.ReaderRenderer;
import com.onyx.android.sdk.reader.api.ReaderRendererFeatures;
import com.onyx.android.sdk.reader.api.ReaderRichMedia;
import com.onyx.android.sdk.reader.api.ReaderSearchManager;
import com.onyx.android.sdk.reader.api.ReaderSearchOptions;
import com.onyx.android.sdk.reader.api.ReaderSelectTextArgs;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderSentence;
import com.onyx.android.sdk.reader.api.ReaderTextStyle;
import com.onyx.android.sdk.reader.api.ReaderTextStyleManager;
import com.onyx.android.sdk.reader.api.ReaderView;
import com.onyx.android.sdk.reader.cbox.CBoxDocument;
import com.onyx.android.sdk.reader.extension.ReaderPositionImplKt;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.onyx.engine.sdk.DisplayMetrics;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000è\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u0085\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f2\u00020\r2\u00020\u000e2\u00020\u000f:\u0002\u0085\u0001B\t¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J\b\u0010\u0011\u001a\u00020\u0010H\u0016J \u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0018\u001a\u00020\u0000H\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\b\u0010 \u001a\u00020\u0000H\u0016J\b\u0010!\u001a\u00020\u0000H\u0016J\b\u0010\"\u001a\u00020\u0000H\u0016J\b\u0010#\u001a\u00020\u0000H\u0016J\b\u0010$\u001a\u00020\u0000H\u0016J\u0010\u0010(\u001a\u00020'2\u0006\u0010&\u001a\u00020%H\u0016J\b\u0010)\u001a\u00020\u001bH\u0016J\b\u0010*\u001a\u00020\u001bH\u0016J\u0010\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020+H\u0016J\b\u00100\u001a\u00020/H\u0016J\u0010\u00101\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u00102\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u00103\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u00104\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0016J\b\u00105\u001a\u00020%H\u0016J\b\u00106\u001a\u00020%H\u0016J\u0010\u00107\u001a\u00020/2\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u00108\u001a\u00020-2\u0006\u0010&\u001a\u00020%H\u0016J\b\u00109\u001a\u00020\u0000H\u0016J\b\u0010:\u001a\u00020\u0000H\u0016J\b\u0010;\u001a\u00020\u0000H\u0016J\b\u0010<\u001a\u00020-H\u0016J\u0016\u0010?\u001a\b\u0012\u0004\u0012\u00020>0=2\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u0010@\u001a\u00020-2\u0006\u0010&\u001a\u00020%H\u0016J\b\u0010A\u001a\u00020\u0000H\u0016J\u0010\u0010D\u001a\u00020-2\u0006\u0010C\u001a\u00020BH\u0016J\b\u0010E\u001a\u00020%H\u0016J\u0010\u0010G\u001a\u00020%2\u0006\u0010F\u001a\u00020/H\u0016J\u0010\u0010I\u001a\u00020%2\u0006\u0010H\u001a\u00020/H\u0016J\u0018\u0010L\u001a\u00020%2\u0006\u0010J\u001a\u00020\u00102\u0006\u0010K\u001a\u00020-H\u0016J\b\u0010M\u001a\u00020-H\u0016J\b\u0010N\u001a\u00020\u0000H\u0016J\u0010\u0010Q\u001a\u00020\u001b2\u0006\u0010P\u001a\u00020OH\u0016J\u0010\u0010T\u001a\n\u0012\u0004\u0012\u00020S\u0018\u00010RH\u0016J\n\u0010U\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010Y\u001a\u00020/2\u0006\u0010C\u001a\u00020V2\b\u0010X\u001a\u0004\u0018\u00010WH\u0016J\u000e\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u00100=H\u0016J\u0010\u0010\\\u001a\u00020%2\u0006\u0010[\u001a\u00020\u0010H\u0016J\u0012\u0010_\u001a\u00020-2\b\u0010^\u001a\u0004\u0018\u00010]H\u0016J\u0012\u0010`\u001a\u0004\u0018\u00010]2\u0006\u0010^\u001a\u00020]H\u0016J\b\u0010a\u001a\u00020-H\u0016J\b\u0010b\u001a\u00020-H\u0016J\b\u0010d\u001a\u00020cH\u0016J\b\u0010e\u001a\u00020-H\u0016J\b\u0010f\u001a\u00020\u001bH\u0016J\u0010\u0010h\u001a\u00020\u001b2\u0006\u0010g\u001a\u00020-H\u0016J\b\u0010i\u001a\u00020-H\u0016J\b\u0010j\u001a\u00020-H\u0016J\b\u0010k\u001a\u00020\u001bH\u0016J\b\u0010l\u001a\u00020\u001bH\u0016J\u0010\u0010n\u001a\u00020\u001b2\u0006\u0010m\u001a\u00020\u0010H\u0016J \u0010s\u001a\u00020-2\u0006\u0010o\u001a\u00020/2\u0006\u0010q\u001a\u00020p2\u0006\u0010r\u001a\u00020-H\u0016J\u000e\u0010u\u001a\b\u0012\u0004\u0012\u00020t0=H\u0016J\u0012\u0010v\u001a\u0004\u0018\u00010\u00102\u0006\u0010&\u001a\u00020%H\u0016R\u0016\u0010y\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0016\u0010|\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0015\u0010\u0080\u0001\u001a\u00020}8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u001c\u0010u\u001a\b\u0012\u0004\u0012\u00020t0R8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001¨\u0006\u0086\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin;", "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;", "Lcom/onyx/android/sdk/reader/api/ReaderDocument;", "Lcom/onyx/android/sdk/reader/api/ReaderView;", "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;", "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;", "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;", "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;", "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter;", "Lcom/onyx/android/sdk/reader/api/ReaderPagination;", "", FileProvider.f5230t, "path", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "documentOptions", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "pluginOptions", "open", "getPluginFeatures", "Lcom/onyx/android/sdk/base/data/Size;", "size", "", "updateViewSize", "Lcom/onyx/engine/sdk/DisplayMetrics;", "displayMetrics", "setupDisplayMetrics", "getRenderer", "getNavigator", "getTextStyleManager", "getReaderHitTestManager", "getSearchManager", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "position", "Landroid/graphics/RectF;", "getPageOriginSize", "abortCurrentJob", "clearAbortFlag", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "", "readTableOfContent", "", "getTotalPage", "nextScreen", "prevScreen", "nextPage", "prevPage", "getScreenStartPosition", "getScreenEndPosition", "getPageNumberByPosition", "gotoPosition", "getView", "getPageDataProvider", "getDocumentFeatures", "close", "", "Lcom/onyx/android/sdk/reader/api/ReaderImage;", "getImages", "isValidPosition", "getRendererFeatures", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", "args", "draw", "getInitPosition", "pageIndex", "positionByPageIndex", "positionInt", "positionByPositionInt", "positionString", "useJsonPageIndexIfValid", "positionByPositionString", "supportScale", "getPagination", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "style", "setStyle", "", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;", "getFontFamilyList", "createDocumentConverter", "Lcom/onyx/android/sdk/reader/api/ConvertArgs;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;", "callback", "convertToPDF", "chapterList", "chapterID", "getInitPaginationPosition", "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;", PrivilegedApp.f6532i, "hasPaginationNext", "paginationNext", "isAllPaginationComplete", "isCurrentChapterPaginationComplete", "", "getPaginationProgress", "onPaginationStart", "onPaginationFinally", "abort", "setAbortPagination", "isAbortPagination", "isNeedClearPaginationCache", "clearPaginationCache", "closePagination", "chapterId", "updateReaderPageInfo", "currentPage", "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;", "options", Constants.CLEAR_ATTRIBUTES, "searchInPage", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "searchResults", "getChapterId", "a", "Lcom/onyx/android/sdk/base/data/Size;", "viewSize", "b", Constants.STRING_SIG, "documentPath", "Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;", "c", "Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderWrapper;", "pluginImpl", "d", "Ljava/util/List;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NeoEpubReaderPlugin implements ReaderPlugin, ReaderDocument, ReaderView, ReaderRenderer, ReaderNavigator, ReaderSearchManager, ReaderTextStyleManager, ReaderDrmManager, ReaderHitTestManager, ReaderRendererFeatures, ReaderPluginFeatures, ReaderPageDataProvider, ReaderDocumentFeatures, ReaderDocumentConverter, ReaderPagination {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e */
    @NotNull
    public static final Lazy<Set<String>> f44939e;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Size viewSize = new Size(0, 0, 3, null);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String documentPath = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final NeoEpubReaderWrapper pluginImpl = new NeoEpubReaderWrapper(null, 1, 0 == true ? 1 : 0);

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<ReaderSelection> searchResults = new ArrayList();

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010#\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R!\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/epub/NeoEpubReaderPlugin$Companion;", "", "", "path", "", "accept", "", "extensionFilters$delegate", "Lkotlin/Lazy;", "a", "()Ljava/util/Set;", "extensionFilters", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final Set<String> m34728a() {
            return (Set) NeoEpubReaderPlugin.f44939e.getValue();
        }

        public final boolean accept(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return m34728a().contains(FileUtils.INSTANCE.getFileExtension(path));
        }

        public Companion() {
        }
    }

    static {
        Lazy<Set<String>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Set<String>>() { // from class: com.onyx.android.sdk.reader.plugins.epub.NeoEpubReaderPlugin$Companion$extensionFilters$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Set<String> invoke() {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                linkedHashSet.add("epub");
                return linkedHashSet;
            }
        });
        f44939e = lazy;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    public void abortCurrentJob() {
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDrmManager
    public boolean activateDeviceDRM(@NotNull ReaderDrmCertificateFactory readerDrmCertificateFactory) {
        return ReaderDrmManager.DefaultImpls.activateDeviceDRM(this, readerDrmCertificateFactory);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @NotNull
    public List<ReaderSelection> allText(@NotNull ReaderPosition readerPosition) {
        return ReaderHitTestManager.DefaultImpls.allText(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    public void beginLookupPageData() {
        ReaderPageDataProvider.DefaultImpls.beginLookupPageData(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    @NotNull
    public List<String> chapterList() {
        return this.pluginImpl.chapterList();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    public void clearAbortFlag() {
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public void clearPaginationCache() {
        this.pluginImpl.clearPaginationCache();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public boolean close() {
        this.pluginImpl.closeDocument();
        return true;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public void closePagination() {
        this.pluginImpl.closePagination();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentConverter
    public int convertToPDF(@NotNull ConvertArgs args, @Nullable ReaderDocumentConverter.Callback callback) {
        Intrinsics.checkNotNullParameter(args, "args");
        return this.pluginImpl.convertToPDF(args, callback);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    @Nullable
    public ReaderDocumentConverter createDocumentConverter() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    @Nullable
    public ReaderDocumentExporter createDocumentExporter() {
        return ReaderDocument.DefaultImpls.createDocumentExporter(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    @Nullable
    public ReaderDocumentWriter createDocumentWriter() {
        return ReaderDocument.DefaultImpls.createDocumentWriter(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    @Nullable
    public ReaderDrmManager createDrmManager() {
        return ReaderPlugin.DefaultImpls.createDrmManager(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    public void destroy() {
        ReaderPlugin.DefaultImpls.destroy(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    @NotNull
    public String displayName() {
        String simpleName = NeoEpubReaderPlugin.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRenderer
    public boolean draw(@NotNull DrawArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.pluginImpl.draw(args.getBitmap());
        return true;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    public void endLookupPageData() {
        ReaderPageDataProvider.DefaultImpls.endLookupPageData(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition firstPage() {
        return ReaderNavigator.DefaultImpls.firstPage(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection firstText(@NotNull ReaderPosition readerPosition) {
        return ReaderHitTestManager.DefaultImpls.firstText(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @NotNull
    public List<RectF> getAllCharRectList(int i) {
        return ReaderHitTestManager.DefaultImpls.getAllCharRectList(this, i);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @Nullable
    public String getChapterId(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.pluginImpl.getChapterId(position);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public String getChapterName(@NotNull ReaderPosition readerPosition) {
        return ReaderNavigator.DefaultImpls.getChapterName(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition getChapterStartPosition(@NotNull ReaderPosition readerPosition) {
        return ReaderNavigator.DefaultImpls.getChapterStartPosition(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    @NotNull
    public NeoEpubReaderPlugin getDocumentFeatures() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    @Nullable
    public List<ReaderTextStyle.FontSpec> getFontFamilyList() {
        return this.pluginImpl.getFontFamilyList();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @Nullable
    public ReaderImage getImagePage(@NotNull ReaderPosition readerPosition, int i) {
        return ReaderNavigator.DefaultImpls.getImagePage(this, readerPosition, i);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public List<ReaderImage> getImages(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.pluginImpl.getPageImages();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    @NotNull
    public ReaderPosition getInitPaginationPosition(@NotNull String chapterID) {
        Intrinsics.checkNotNullParameter(chapterID, "chapterID");
        return this.pluginImpl.getInitPaginationPosition(chapterID);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition getInitPosition() {
        return firstPage();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @Nullable
    public ReaderSentence getLastSentence(@NotNull ReaderPosition readerPosition) {
        return ReaderPageDataProvider.DefaultImpls.getLastSentence(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public String getLinkTarget(@NotNull ReaderSelection readerSelection) {
        return ReaderNavigator.DefaultImpls.getLinkTarget(this, readerSelection);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @Nullable
    public ReaderSelection getLinkTargetSelection(@NotNull ReaderSelection readerSelection) {
        return ReaderNavigator.DefaultImpls.getLinkTargetSelection(this, readerSelection);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public List<ReaderSelection> getLinks(@NotNull ReaderPosition readerPosition) {
        return ReaderNavigator.DefaultImpls.getLinks(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public NeoEpubReaderPlugin getNavigator() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    @Nullable
    public ReaderTextStyle getOriginCssStyle() {
        return ReaderTextStyleManager.DefaultImpls.getOriginCssStyle(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public Matrix getPageContentMatrix(int i) {
        return ReaderPageDataProvider.DefaultImpls.getPageContentMatrix(this, i);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    @NotNull
    public NeoEpubReaderPlugin getPageDataProvider() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @IntRange(from = 0)
    public int getPageIndexInCurrentChapter() {
        return ReaderNavigator.DefaultImpls.getPageIndexInCurrentChapter(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public String getPageLabel(@NotNull ReaderPosition readerPosition) {
        return ReaderNavigator.DefaultImpls.getPageLabel(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public List<String> getPageLabelList() {
        return ReaderNavigator.DefaultImpls.getPageLabelList(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public int getPageNumberByPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.pluginImpl.getPageNumberOfPosition(position);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public RectF getPageOriginSize(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.viewSize.toRectF();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public List<String> getPageParagraphList(@NotNull ReaderPosition readerPosition) {
        return ReaderPageDataProvider.DefaultImpls.getPageParagraphList(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public RectF getPageSizeWithDpi(@NotNull ReaderPosition readerPosition, float f) {
        return ReaderPageDataProvider.DefaultImpls.getPageSizeWithDpi(this, readerPosition, f);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @Nullable
    public String getPageText(@NotNull ReaderPosition readerPosition) {
        return ReaderPageDataProvider.DefaultImpls.getPageText(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @NotNull
    public PageTextInfoState getPageTextInfoState(@NotNull ReaderPosition readerPosition) {
        return ReaderHitTestManager.DefaultImpls.getPageTextInfoState(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public NeoEpubReaderPlugin getPagination() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public float getPaginationProgress() {
        return this.pluginImpl.getPaginationProgress();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    @NotNull
    public NeoEpubReaderPlugin getPluginFeatures() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public NeoEpubReaderPlugin getReaderHitTestManager() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public NeoEpubReaderPlugin getRenderer() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRenderer
    @NotNull
    public NeoEpubReaderPlugin getRendererFeatures() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public List<ReaderRichMedia> getRichMedias(@NotNull ReaderPosition readerPosition, @NotNull String[] strArr) {
        return ReaderNavigator.DefaultImpls.getRichMedias(this, readerPosition, strArr);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition getScreenEndPosition() {
        return this.pluginImpl.getScreenEndPosition();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition getScreenStartPosition() {
        return this.pluginImpl.getScreenStartPosition();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public NeoEpubReaderPlugin getSearchManager() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @Nullable
    public ReaderSentence getSentence(@NotNull ReaderPosition readerPosition, @Nullable ReaderPosition readerPosition2) {
        return ReaderPageDataProvider.DefaultImpls.getSentence(this, readerPosition, readerPosition2);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    @Nullable
    public ReaderTextStyle getStyle() {
        return ReaderTextStyleManager.DefaultImpls.getStyle(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public String getText(@NotNull ReaderPosition readerPosition, @NotNull ReaderPosition readerPosition2) {
        return ReaderPageDataProvider.DefaultImpls.getText(this, readerPosition, readerPosition2);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public NeoEpubReaderPlugin getTextStyleManager() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public int getTotalPage() {
        return this.pluginImpl.getTotalPage();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public int getTotalPageCountInCurrentChapter() {
        return ReaderNavigator.DefaultImpls.getTotalPageCountInCurrentChapter(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public float getTotalReadingProgress() {
        return ReaderNavigator.DefaultImpls.getTotalReadingProgress(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    @NotNull
    public NeoEpubReaderPlugin getView() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public String getXPathByPosition(@NotNull ReaderPosition readerPosition) {
        return ReaderNavigator.DefaultImpls.getXPathByPosition(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public boolean gotoPosition(@NotNull ReaderPosition position) throws ReaderException {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.pluginImpl.gotoPosition(position);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    public boolean hasAnnotationData(int i) {
        return ReaderPageDataProvider.DefaultImpls.hasAnnotationData(this, i);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public boolean hasPaginationNext(@Nullable PaginationChapterInfo info) {
        return this.pluginImpl.hasPaginationNext(info);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    public boolean hasText(@NotNull ReaderPosition readerPosition) {
        return ReaderHitTestManager.DefaultImpls.hasText(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public boolean hitPageCache(@NotNull ReaderPosition readerPosition) {
        return ReaderNavigator.DefaultImpls.hitPageCache(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public boolean isAbortPagination() {
        return this.pluginImpl.isAbortPagination();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public boolean isAllPaginationComplete() {
        return this.pluginImpl.isAllPaginationComplete();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentFeatures
    public boolean isBlankContent() {
        return ReaderDocumentFeatures.DefaultImpls.isBlankContent(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public boolean isCurrentChapterPaginationComplete() {
        return this.pluginImpl.isCurrentChapterPaginationComplete();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentFeatures
    public boolean isDamagedFile() {
        return ReaderDocumentFeatures.DefaultImpls.isDamagedFile(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public boolean isFirstPage() {
        return ReaderNavigator.DefaultImpls.isFirstPage(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public boolean isImagePage(@NotNull ReaderPosition readerPosition, int i) {
        return ReaderNavigator.DefaultImpls.isImagePage(this, readerPosition, i);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public boolean isLastPage() {
        return ReaderNavigator.DefaultImpls.isLastPage(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public boolean isNeedClearPaginationCache() {
        return this.pluginImpl.isNeedClearPaginationCache();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public boolean isValidPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        if (ReaderPositionImplKt.isDummy(position)) {
            return false;
        }
        int size = this.pluginImpl.getSize();
        int intPosition = position.getIntPosition();
        return intPosition >= 0 && intPosition < size;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDrmManager
    /* renamed from: isWholeBook */
    public boolean getIsWholeBook() {
        return ReaderDrmManager.DefaultImpls.isWholeBook(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition lastPage() {
        return ReaderNavigator.DefaultImpls.lastPage(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection lastSelectionEndOfLine(@NotNull ReaderPosition readerPosition, @NotNull ReaderPosition readerPosition2) {
        return ReaderHitTestManager.DefaultImpls.lastSelectionEndOfLine(this, readerPosition, readerPosition2);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection lastText(@NotNull ReaderPosition readerPosition) {
        return ReaderHitTestManager.DefaultImpls.lastText(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection lastTextEndOfLine(@NotNull ReaderPosition readerPosition, @NotNull ReaderPosition readerPosition2) {
        return ReaderHitTestManager.DefaultImpls.lastTextEndOfLine(this, readerPosition, readerPosition2);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public void layoutPageForSimpleDocument() {
        ReaderPagination.DefaultImpls.layoutPageForSimpleDocument(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition nextPage(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return nextScreen(position);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition nextScreen(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.pluginImpl.nextScreen() ? getScreenStartPosition() : ReaderPositionImpl.INSTANCE.getDummy();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public void onPaginationFinally() {
        this.pluginImpl.onPaginationFinally();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public boolean onPaginationStart() {
        return this.pluginImpl.onPaginationStart();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    @NotNull
    public ReaderDocument open(@NotNull String path, @NotNull ReaderDocumentOptions documentOptions, @NotNull ReaderPluginOptions pluginOptions) throws ReaderException {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(documentOptions, "documentOptions");
        Intrinsics.checkNotNullParameter(pluginOptions, "pluginOptions");
        this.documentPath = path;
        long openDocument = this.pluginImpl.openDocument(path, documentOptions);
        CBoxDocument.Companion companion = CBoxDocument.INSTANCE;
        if (openDocument == companion.getNO_ERROR()) {
            return this;
        }
        if (openDocument == companion.getERROR_PASSWORD_INVALID()) {
            throw ReaderException.INSTANCE.passwordRequired();
        }
        if (openDocument == companion.getERROR_DRM_INVALID()) {
            throw ReaderException.INSTANCE.drmException();
        }
        if (openDocument == companion.getERROR_ADOBE_DRM_INVALID()) {
            throw ReaderException.INSTANCE.adobeDrmException();
        }
        throw ReaderException.INSTANCE.cannotOpen();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public ReaderPageType pageType(@NotNull ReaderPosition readerPosition) {
        return ReaderPageDataProvider.DefaultImpls.pageType(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    @Nullable
    public PaginationChapterInfo paginationNext(@NotNull PaginationChapterInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        return this.pluginImpl.paginationNext(info);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition positionByPageIndex(int pageIndex) {
        return this.pluginImpl.getPositionOfPageNumber(pageIndex);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition positionByPositionInt(int positionInt) {
        return new ReaderPositionImpl().fromInteger(positionInt).fromString(String.valueOf(positionInt));
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition positionByPositionString(@NotNull String positionString, boolean useJsonPageIndexIfValid) {
        Intrinsics.checkNotNullParameter(positionString, "positionString");
        return this.pluginImpl.positionByPositionString(positionString);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition prevPage(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return prevScreen(position);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition prevScreen(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.pluginImpl.preScreen() ? getScreenStartPosition() : ReaderPositionImpl.INSTANCE.getDummy();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public boolean readCover(@NotNull ReaderImage readerImage) {
        return ReaderDocument.DefaultImpls.readCover(this, readerImage);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public boolean readMetadata(@NotNull ReaderDocumentMetadata readerDocumentMetadata) {
        return ReaderDocument.DefaultImpls.readMetadata(this, readerDocumentMetadata);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public boolean readTableOfContent(@NotNull ReaderDocumentTableOfContent toc) {
        Intrinsics.checkNotNullParameter(toc, "toc");
        return this.pluginImpl.readTableOfContent(toc);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    public boolean reopen() {
        return ReaderPlugin.DefaultImpls.reopen(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSearchManager
    public boolean searchInPage(int currentPage, @NotNull ReaderSearchOptions options, boolean clear) {
        Intrinsics.checkNotNullParameter(options, "options");
        if (clear) {
            this.searchResults.clear();
        }
        return this.pluginImpl.search(options, this.searchResults);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSearchManager
    public boolean searchNext(@NotNull ReaderSearchOptions readerSearchOptions) {
        return ReaderSearchManager.DefaultImpls.searchNext(this, readerSearchOptions);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSearchManager
    public boolean searchPrevious(@NotNull ReaderSearchOptions readerSearchOptions) {
        return ReaderSearchManager.DefaultImpls.searchPrevious(this, readerSearchOptions);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSearchManager
    @NotNull
    public List<ReaderSelection> searchResults() {
        return this.searchResults;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection selectOnDocument(@NotNull ReaderSelectTextArgs readerSelectTextArgs) {
        return ReaderHitTestManager.DefaultImpls.selectOnDocument(this, readerSelectTextArgs);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection selectOnScreen(@NotNull ReaderHitTestArgs readerHitTestArgs, @NotNull ReaderHitTestArgs readerHitTestArgs2, @NotNull ReaderHitTestOptions readerHitTestOptions) {
        return ReaderHitTestManager.DefaultImpls.selectOnScreen(this, readerHitTestArgs, readerHitTestArgs2, readerHitTestOptions);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection selectSelection(@NotNull ReaderPosition readerPosition, @NotNull ReaderPosition readerPosition2, int i) {
        return ReaderHitTestManager.DefaultImpls.selectSelection(this, readerPosition, readerPosition2, i);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public void setAbortPagination(boolean abort) {
        this.pluginImpl.setAbortPagination(abort);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    public void setFontEnhancement(int i, @NotNull int[] iArr) {
        ReaderTextStyleManager.DefaultImpls.setFontEnhancement(this, i, iArr);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    public void setStyle(@NotNull ReaderTextStyle style) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.pluginImpl.setStyle(style);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    public void setTextGamma(float f) {
        ReaderTextStyleManager.DefaultImpls.setTextGamma(this, f);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    public void setupDisplayMetrics(@NotNull DisplayMetrics displayMetrics) {
        Intrinsics.checkNotNullParameter(displayMetrics, "displayMetrics");
        this.pluginImpl.setupDisplayMetrics(displayMetrics);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRendererFeatures
    public boolean supportChangeWritingMode() {
        return ReaderRendererFeatures.DefaultImpls.supportChangeWritingMode(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRendererFeatures
    public boolean supportCssOriginStyle() {
        return ReaderRendererFeatures.DefaultImpls.supportCssOriginStyle(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPluginFeatures
    public boolean supportDrm() {
        return ReaderPluginFeatures.DefaultImpls.supportDrm(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRendererFeatures
    public boolean supportFontEmboldenAdjustment() {
        return ReaderRendererFeatures.DefaultImpls.supportFontEmboldenAdjustment(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRendererFeatures
    public boolean supportFontEnhancementAdjustment() {
        return ReaderRendererFeatures.DefaultImpls.supportFontEnhancementAdjustment(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRendererFeatures
    public boolean supportFontGammaAdjustment() {
        return ReaderRendererFeatures.DefaultImpls.supportFontGammaAdjustment(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRendererFeatures
    public boolean supportFontSizeAdjustment() {
        return ReaderRendererFeatures.DefaultImpls.supportFontSizeAdjustment(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRendererFeatures
    public boolean supportLetterSpacingAdjustment() {
        return ReaderRendererFeatures.DefaultImpls.supportLetterSpacingAdjustment(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPluginFeatures
    public boolean supportNoteEmbeded() {
        return ReaderPluginFeatures.DefaultImpls.supportNoteEmbeded(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public boolean supportPageId() {
        return ReaderNavigator.DefaultImpls.supportPageId(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRendererFeatures
    public boolean supportRenderPageLink() {
        return ReaderRendererFeatures.DefaultImpls.supportRenderPageLink(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPluginFeatures
    public boolean supportSaveOptions() {
        return ReaderPluginFeatures.DefaultImpls.supportSaveOptions(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRendererFeatures
    /* renamed from: supportScale */
    public boolean getSupportScale() {
        return false;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRendererFeatures
    public boolean supportTypefaceAdjustment() {
        return ReaderRendererFeatures.DefaultImpls.supportTypefaceAdjustment(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public void updateDocumentOptions(@NotNull ReaderDocumentOptions readerDocumentOptions, @NotNull ReaderPluginOptions readerPluginOptions) {
        ReaderDocument.DefaultImpls.updateDocumentOptions(this, readerDocumentOptions, readerPluginOptions);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPagination
    public void updateReaderPageInfo(@NotNull String chapterId) {
        Intrinsics.checkNotNullParameter(chapterId, "chapterId");
        this.pluginImpl.updateReaderPageInfo(chapterId);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public void updateTocPageIndex(@NotNull ReaderDocumentTableOfContent readerDocumentTableOfContent) {
        ReaderNavigator.DefaultImpls.updateTocPageIndex(this, readerDocumentTableOfContent);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    public void updateViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.viewSize = Size.copy$default(size, 0, 0, 3, null);
        this.pluginImpl.setViewSize(size);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection selectOnScreen(@NotNull ReaderPosition readerPosition, @NotNull ReaderPosition readerPosition2, @NotNull ReaderPosition readerPosition3) {
        return ReaderHitTestManager.DefaultImpls.selectOnScreen(this, readerPosition, readerPosition2, readerPosition3);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public void updateTocPageIndex(@NotNull ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry) {
        ReaderNavigator.DefaultImpls.updateTocPageIndex(this, readerDocumentTableOfContentEntry);
    }
}
