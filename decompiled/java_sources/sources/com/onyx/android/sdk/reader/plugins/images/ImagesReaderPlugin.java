package com.onyx.android.sdk.reader.plugins.images;

import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.IntRange;
import androidx.core.content.FileProvider;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.onyx.android.sdk.reader.api.PageTextInfoState;
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
import com.onyx.android.sdk.reader.impl.ReaderImageImpl;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.onyx.android.sdk.reader.plugins.images.ImagesReaderPlugin;
import com.onyx.engine.sdk.DisplayMetrics;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0007\u0018\u0000 T2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f2\u00020\r:\u0001TB\u0007¢\u0006\u0004\bR\u0010SJ\b\u0010\u000f\u001a\u00020\u000eH\u0016J \u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\b\u0010\u0016\u001a\u00020\u0000H\u0016J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\b\u0010\u001b\u001a\u00020\u0000H\u0016J\b\u0010\u001c\u001a\u00020\u0000H\u0016J\b\u0010\u001d\u001a\u00020\u0000H\u0016J\b\u0010\u001e\u001a\u00020\u0000H\u0016J\b\u0010\u001f\u001a\u00020\u0000H\u0016J\u0010\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0016J\b\u0010$\u001a\u00020\u0019H\u0016J\b\u0010%\u001a\u00020\u0019H\u0016J\u0010\u0010)\u001a\u00020(2\u0006\u0010'\u001a\u00020&H\u0016J\b\u0010+\u001a\u00020*H\u0016J\u0010\u0010,\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0016J\u0010\u0010-\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0016J\u0010\u0010.\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0016J\u0010\u0010/\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0016J\b\u00100\u001a\u00020\u0000H\u0016J\b\u00101\u001a\u00020\u0000H\u0016J\b\u00102\u001a\u00020\u0000H\u0016J\b\u00103\u001a\u00020(H\u0016J\u0016\u00106\u001a\b\u0012\u0004\u0012\u000205042\u0006\u0010!\u001a\u00020 H\u0016J\u0010\u00107\u001a\u00020(2\u0006\u0010!\u001a\u00020 H\u0016J\b\u00108\u001a\u00020\u0000H\u0016J\u0010\u0010;\u001a\u00020(2\u0006\u0010:\u001a\u000209H\u0016J\b\u0010<\u001a\u00020 H\u0016J\u0010\u0010>\u001a\u00020 2\u0006\u0010=\u001a\u00020*H\u0016J\u0018\u0010A\u001a\u00020 2\u0006\u0010?\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020(H\u0016J\u000e\u0010B\u001a\u00020*2\u0006\u0010!\u001a\u00020 J\b\u0010C\u001a\u00020(H\u0016R\u0016\u0010F\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0014\u0010J\u001a\u00020G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010M\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u001a\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u000e0N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010P¨\u0006U"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin;", "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;", "Lcom/onyx/android/sdk/reader/api/ReaderDocument;", "Lcom/onyx/android/sdk/reader/api/ReaderView;", "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;", "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;", "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;", "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;", "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;", "", FileProvider.f5230t, "path", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "documentOptions", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "pluginOptions", "open", "getPluginFeatures", "Lcom/onyx/android/sdk/base/data/Size;", "size", "", "updateViewSize", "getRenderer", "getNavigator", "getTextStyleManager", "getReaderHitTestManager", "getSearchManager", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "position", "Landroid/graphics/RectF;", "getPageOriginSize", "abortCurrentJob", "clearAbortFlag", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "", "readTableOfContent", "", "getTotalPage", "nextScreen", "prevScreen", "nextPage", "prevPage", "getView", "getPageDataProvider", "getDocumentFeatures", "close", "", "Lcom/onyx/android/sdk/reader/api/ReaderImage;", "getImages", "isValidPosition", "getRendererFeatures", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", "args", "draw", "getInitPosition", "pageIndex", "positionByPageIndex", "positionString", "useJsonPageIndexIfValid", "positionByPositionString", "pageIndexByPosition", "supportScale", "a", "Lcom/onyx/android/sdk/base/data/Size;", "viewSize", "Lcom/onyx/android/sdk/reader/plugins/images/ImagesAndroidWrapper;", "b", "Lcom/onyx/android/sdk/reader/plugins/images/ImagesAndroidWrapper;", "pluginImpl", "c", Constants.STRING_SIG, "documentPath", "", "d", "Ljava/util/List;", "pagePathList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImagesReaderPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagesReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,219:1\n13309#2,2:220\n1864#3,3:222\n*S KotlinDebug\n*F\n+ 1 ImagesReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin\n*L\n72#1:220,2\n105#1:222,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ImagesReaderPlugin implements ReaderPlugin, ReaderDocument, ReaderView, ReaderRenderer, ReaderNavigator, ReaderSearchManager, ReaderTextStyleManager, ReaderDrmManager, ReaderHitTestManager, ReaderRendererFeatures, ReaderPluginFeatures, ReaderPageDataProvider, ReaderDocumentFeatures {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e */
    @NotNull
    public static final Lazy<Set<String>> f44967e;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Size viewSize = new Size(0, 0, 3, null);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final ImagesAndroidWrapper pluginImpl = new ImagesAndroidWrapper();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String documentPath = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<String> pagePathList = new ArrayList();

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010#\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R!\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/images/ImagesReaderPlugin$Companion;", "", "", "path", "", "accept", "", "extensionFilters$delegate", "Lkotlin/Lazy;", "a", "()Ljava/util/Set;", "extensionFilters", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final Set<String> m34741a() {
            return (Set) ImagesReaderPlugin.f44967e.getValue();
        }

        public final boolean accept(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return m34741a().contains(FileUtils.INSTANCE.getFileExtension(path));
        }

        public Companion() {
        }
    }

    static {
        Lazy<Set<String>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Set<String>>() { // from class: com.onyx.android.sdk.reader.plugins.images.ImagesReaderPlugin$Companion$extensionFilters$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Set<String> invoke() {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                linkedHashSet.add("png");
                linkedHashSet.add("jpg");
                linkedHashSet.add("jpeg");
                linkedHashSet.add(FileTypeConstant.BMP);
                linkedHashSet.add(FileTypeConstant.TIF);
                linkedHashSet.add("tiff");
                linkedHashSet.add("webp");
                return linkedHashSet;
            }
        });
        f44967e = lazy;
    }

    /* renamed from: b */
    public static final boolean m34740b(File file) {
        String extension;
        if (file.isFile()) {
            Set m34741a = INSTANCE.m34741a();
            Intrinsics.checkNotNull(file);
            extension = FilesKt__UtilsKt.getExtension(file);
            String lowerCase = extension.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            if (m34741a.contains(lowerCase)) {
                return true;
            }
        }
        return false;
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

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    public void clearAbortFlag() {
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public boolean close() {
        this.pluginImpl.closeAll();
        this.pagePathList.clear();
        return true;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    @Nullable
    public ReaderDocumentConverter createDocumentConverter() {
        return ReaderDocument.DefaultImpls.createDocumentConverter(this);
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
        return "ImagesReaderPlugin";
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRenderer
    public boolean draw(@NotNull DrawArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return this.pluginImpl.drawImage(this.pagePathList.get(args.getPagePosition().getPageIndex()), args);
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
    public String getChapterId(@NotNull ReaderPosition readerPosition) {
        return ReaderNavigator.DefaultImpls.getChapterId(this, readerPosition);
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
    public ImagesReaderPlugin getDocumentFeatures() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    @Nullable
    public List<ReaderTextStyle.FontSpec> getFontFamilyList() {
        return ReaderTextStyleManager.DefaultImpls.getFontFamilyList(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @Nullable
    public ReaderImage getImagePage(@NotNull ReaderPosition readerPosition, int i) {
        return ReaderNavigator.DefaultImpls.getImagePage(this, readerPosition, i);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public List<ReaderImage> getImages(@NotNull ReaderPosition position) {
        List<ReaderImage> listOf;
        Intrinsics.checkNotNullParameter(position, "position");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new ReaderImageImpl(getPageOriginSize(position), null, position, 0.0f, 10, null));
        return listOf;
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
    public ImagesReaderPlugin getNavigator() {
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
    public ImagesReaderPlugin getPageDataProvider() {
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
    public int getPageNumberByPosition(@NotNull ReaderPosition readerPosition) {
        return ReaderNavigator.DefaultImpls.getPageNumberByPosition(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public RectF getPageOriginSize(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.pluginImpl.imageSize(this.pagePathList.get(position.getPageIndex())).toRectF();
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
    @Nullable
    public ReaderPagination getPagination() {
        return ReaderView.DefaultImpls.getPagination(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    @NotNull
    public ImagesReaderPlugin getPluginFeatures() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public ImagesReaderPlugin getReaderHitTestManager() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public ImagesReaderPlugin getRenderer() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRenderer
    @NotNull
    public ImagesReaderPlugin getRendererFeatures() {
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
        return ReaderNavigator.DefaultImpls.getScreenEndPosition(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition getScreenStartPosition() {
        return ReaderNavigator.DefaultImpls.getScreenStartPosition(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public ImagesReaderPlugin getSearchManager() {
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
    public ImagesReaderPlugin getTextStyleManager() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public int getTotalPage() {
        return this.pagePathList.size();
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
    public ImagesReaderPlugin getView() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public String getXPathByPosition(@NotNull ReaderPosition readerPosition) {
        return ReaderNavigator.DefaultImpls.getXPathByPosition(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public boolean gotoPosition(@NotNull ReaderPosition readerPosition) throws ReaderException {
        return ReaderNavigator.DefaultImpls.gotoPosition(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    public boolean hasAnnotationData(int i) {
        return ReaderPageDataProvider.DefaultImpls.hasAnnotationData(this, i);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    public boolean hasText(@NotNull ReaderPosition readerPosition) {
        return ReaderHitTestManager.DefaultImpls.hasText(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public boolean hitPageCache(@NotNull ReaderPosition readerPosition) {
        return ReaderNavigator.DefaultImpls.hitPageCache(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentFeatures
    public boolean isBlankContent() {
        return ReaderDocumentFeatures.DefaultImpls.isBlankContent(this);
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

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public boolean isValidPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        int pageIndex = position.getPageIndex();
        return pageIndex >= 0 && pageIndex < getTotalPage();
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

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition nextPage(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        int pageIndexByPosition = pageIndexByPosition(position) + 1;
        return pageIndexByPosition < getTotalPage() ? positionByPageIndex(pageIndexByPosition) : ReaderPositionImpl.INSTANCE.getDummy();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition nextScreen(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return nextPage(position);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    @NotNull
    public ReaderDocument open(@NotNull String path, @NotNull ReaderDocumentOptions documentOptions, @NotNull ReaderPluginOptions pluginOptions) throws ReaderException {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(documentOptions, "documentOptions");
        Intrinsics.checkNotNullParameter(pluginOptions, "pluginOptions");
        this.documentPath = path;
        File parentFile = new File(path).getParentFile();
        File[] listFiles = parentFile != null ? parentFile.listFiles(new FileFilter() { // from class: com.sunia.HTREnginev2.khi
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                boolean m34740b;
                m34740b = ImagesReaderPlugin.m34740b(file);
                return m34740b;
            }
        }) : null;
        if (listFiles != null) {
            for (File file : listFiles) {
                List<String> list = this.pagePathList;
                String absolutePath = file.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                list.add(absolutePath);
            }
        }
        CollectionsKt__MutableCollectionsJVMKt.sort(this.pagePathList);
        return this;
    }

    public final int pageIndexByPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return position.getPageIndex();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public ReaderPageType pageType(@NotNull ReaderPosition readerPosition) {
        return ReaderPageDataProvider.DefaultImpls.pageType(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition positionByPageIndex(int pageIndex) {
        return new ReaderPositionImpl().fromPageIndex(pageIndex).fromInteger(pageIndex).fromString(String.valueOf(pageIndex));
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition positionByPositionInt(int i) {
        return ReaderNavigator.DefaultImpls.positionByPositionInt(this, i);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition positionByPositionString(@NotNull String positionString, boolean useJsonPageIndexIfValid) {
        Intrinsics.checkNotNullParameter(positionString, "positionString");
        int parseInt = Integer.parseInt(positionString);
        return new ReaderPositionImpl().fromPageIndex(parseInt).fromInteger(parseInt).fromString(String.valueOf(parseInt));
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition prevPage(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        int pageIndexByPosition = pageIndexByPosition(position);
        return pageIndexByPosition > 0 ? positionByPageIndex(pageIndexByPosition - 1) : ReaderPositionImpl.INSTANCE.getDummy();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition prevScreen(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return prevPage(position);
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
        int i = 0;
        for (Object obj : this.pagePathList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            List<ReaderDocumentTableOfContentEntry> children = toc.getRootEntry().getChildren();
            String name = new File((String) obj).getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            children.add(new ReaderDocumentTableOfContentEntry(name, i, positionByPageIndex(i), null, false, false, false, 0L, false, null, 1016, null));
            i = i2;
        }
        return true;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    public boolean reopen() {
        return ReaderPlugin.DefaultImpls.reopen(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSearchManager
    public boolean searchInPage(int i, @NotNull ReaderSearchOptions readerSearchOptions, boolean z) {
        return ReaderSearchManager.DefaultImpls.searchInPage(this, i, readerSearchOptions, z);
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
        return ReaderSearchManager.DefaultImpls.searchResults(this);
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

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    public void setFontEnhancement(int i, @NotNull int[] iArr) {
        ReaderTextStyleManager.DefaultImpls.setFontEnhancement(this, i, iArr);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    public void setStyle(@NotNull ReaderTextStyle readerTextStyle) {
        ReaderTextStyleManager.DefaultImpls.setStyle(this, readerTextStyle);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    public void setTextGamma(float f) {
        ReaderTextStyleManager.DefaultImpls.setTextGamma(this, f);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    public void setupDisplayMetrics(@NotNull DisplayMetrics displayMetrics) {
        ReaderView.DefaultImpls.setupDisplayMetrics(this, displayMetrics);
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
        return true;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRendererFeatures
    public boolean supportTypefaceAdjustment() {
        return ReaderRendererFeatures.DefaultImpls.supportTypefaceAdjustment(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public void updateDocumentOptions(@NotNull ReaderDocumentOptions readerDocumentOptions, @NotNull ReaderPluginOptions readerPluginOptions) {
        ReaderDocument.DefaultImpls.updateDocumentOptions(this, readerDocumentOptions, readerPluginOptions);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public void updateTocPageIndex(@NotNull ReaderDocumentTableOfContent readerDocumentTableOfContent) {
        ReaderNavigator.DefaultImpls.updateTocPageIndex(this, readerDocumentTableOfContent);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    public void updateViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.viewSize = Size.copy$default(size, 0, 0, 3, null);
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
