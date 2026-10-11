package com.onyx.android.sdk.reader.plugins.template;

import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.IntRange;
import androidx.core.content.FileProvider;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.PageMargins;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.neopdf.lib.JSONUtils;
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
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.onyx.engine.sdk.DisplayMetrics;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 ]2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f2\u00020\r:\u0001]B\u0007¢\u0006\u0004\b[\u0010\\J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\u0012\u0010\u0012\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u000eH\u0002J\b\u0010\u0014\u001a\u00020\u0010H\u0016J \u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\b\u0010\u001b\u001a\u00020\u0000H\u0016J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016J\b\u0010\u001f\u001a\u00020\u0000H\u0016J\b\u0010 \u001a\u00020\u0000H\u0016J\b\u0010!\u001a\u00020\u0000H\u0016J\b\u0010\"\u001a\u00020\u0000H\u0016J\b\u0010#\u001a\u00020\u0000H\u0016J\u0010\u0010'\u001a\u00020&2\u0006\u0010%\u001a\u00020$H\u0016J\b\u0010(\u001a\u00020\u000eH\u0016J\b\u0010)\u001a\u00020\u000eH\u0016J\u0010\u0010-\u001a\u00020,2\u0006\u0010+\u001a\u00020*H\u0016J\b\u0010/\u001a\u00020.H\u0016J\u0010\u00100\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0016J\u0010\u00101\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0016J\u0010\u00102\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0016J\u0010\u00103\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0016J\b\u00104\u001a\u00020\u0000H\u0016J\b\u00105\u001a\u00020\u0000H\u0016J\b\u00106\u001a\u00020\u0000H\u0016J\b\u00107\u001a\u00020,H\u0016J\u0016\u0010:\u001a\b\u0012\u0004\u0012\u000209082\u0006\u0010%\u001a\u00020$H\u0016J\u0010\u0010;\u001a\u00020,2\u0006\u0010%\u001a\u00020$H\u0016J\b\u0010<\u001a\u00020\u0000H\u0016J\u0010\u0010?\u001a\u00020,2\u0006\u0010>\u001a\u00020=H\u0016J\u0018\u0010@\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\b\u0010A\u001a\u00020$H\u0016J\u0010\u0010C\u001a\u00020$2\u0006\u0010B\u001a\u00020.H\u0016J\u0018\u0010F\u001a\u00020$2\u0006\u0010D\u001a\u00020\u00102\u0006\u0010E\u001a\u00020,H\u0016J\b\u0010G\u001a\u00020,H\u0016R\u0016\u0010I\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010HR\u0014\u0010L\u001a\u00020J8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010KR\u0016\u0010O\u001a\u00020M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010NR\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0018\u0010W\u001a\u0004\u0018\u00010T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010Z\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010Y¨\u0006^"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin;", "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;", "Lcom/onyx/android/sdk/reader/api/ReaderDocument;", "Lcom/onyx/android/sdk/reader/api/ReaderView;", "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;", "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;", "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;", "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;", "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;", "", "a", "", "json", "b", "c", FileProvider.f5230t, "path", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "documentOptions", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "pluginOptions", "open", "getPluginFeatures", "Lcom/onyx/android/sdk/base/data/Size;", "size", "updateViewSize", "getRenderer", "getNavigator", "getTextStyleManager", "getReaderHitTestManager", "getSearchManager", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "position", "Landroid/graphics/RectF;", "getPageOriginSize", "abortCurrentJob", "clearAbortFlag", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "", "readTableOfContent", "", "getTotalPage", "nextScreen", "prevScreen", "nextPage", "prevPage", "getView", "getPageDataProvider", "getDocumentFeatures", "close", "", "Lcom/onyx/android/sdk/reader/api/ReaderImage;", "getImages", "isValidPosition", "getRendererFeatures", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", "args", "draw", "updateDocumentOptions", "getInitPosition", "pageIndex", "positionByPageIndex", "positionString", "useJsonPageIndexIfValid", "positionByPositionString", "supportScale", "Lcom/onyx/android/sdk/base/data/Size;", "viewSize", "Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;", "Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderWrapper;", "pluginImpl", "Lcom/onyx/android/sdk/reader/plugins/template/TemplateDataInfo;", "Lcom/onyx/android/sdk/reader/plugins/template/TemplateDataInfo;", "templateDataInfo", "d", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "e", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", C6997f.f39671c, "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "geoLayout", C6998g.f39679a, Constants.STRING_SIG, "documentPath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTemplateReaderPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"})
/* loaded from: classes8.dex */
public final class TemplateReaderPlugin implements ReaderPlugin, ReaderDocument, ReaderView, ReaderRenderer, ReaderNavigator, ReaderSearchManager, ReaderTextStyleManager, ReaderDrmManager, ReaderHitTestManager, ReaderRendererFeatures, ReaderPluginFeatures, ReaderPageDataProvider, ReaderDocumentFeatures {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String TEMPLATE_SUFFIX = "template_json";

    /* renamed from: h */
    @NotNull
    public static final Lazy<Set<String>> f45075h;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public GeoLayout geoLayout;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Size viewSize = new Size(0, 0, 3, null);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final TemplateReaderWrapper pluginImpl = new TemplateReaderWrapper();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public TemplateDataInfo templateDataInfo = new TemplateDataInfo();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public ReaderDocumentOptions documentOptions = new ReaderDocumentOptions(null, null, null, null, 0, null, null, false, false, 0, null, 2047, null);

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public ReaderPluginOptions pluginOptions = new ReaderPluginOptions(null, null, 3, null);

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String documentPath = "";

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010#\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R!\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/template/TemplateReaderPlugin$Companion;", "", "", "path", "", "accept", "", "extensionFilters$delegate", "Lkotlin/Lazy;", "a", "()Ljava/util/Set;", "extensionFilters", "TEMPLATE_SUFFIX", Constants.STRING_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final Set<String> m34815a() {
            return (Set) TemplateReaderPlugin.f45075h.getValue();
        }

        public final boolean accept(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return m34815a().contains(FileUtils.INSTANCE.getFileExtension(path));
        }

        public Companion() {
        }
    }

    static {
        Lazy<Set<String>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Set<String>>() { // from class: com.onyx.android.sdk.reader.plugins.template.TemplateReaderPlugin$Companion$extensionFilters$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Set<String> invoke() {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                linkedHashSet.add("template_json");
                return linkedHashSet;
            }
        });
        f45075h = lazy;
    }

    /* renamed from: a */
    public final void m34812a() {
        if (new File(this.documentPath).exists()) {
            m34814c();
            m34813b(FileUtils.INSTANCE.readContentOfFile(this.documentPath));
        }
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

    /* renamed from: b */
    public final void m34813b(String json) {
        if (json == null) {
            return;
        }
        this.geoLayout = (GeoLayout) JSONUtils.INSTANCE.parseObject(json, GeoLayout.class);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    public void beginLookupPageData() {
        ReaderPageDataProvider.DefaultImpls.beginLookupPageData(this);
    }

    /* renamed from: c */
    public final void m34814c() {
        GeoLayout geoLayout = this.geoLayout;
        if (geoLayout != null) {
            geoLayout.recycle();
        }
        this.geoLayout = null;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    public void clearAbortFlag() {
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public boolean close() {
        this.pluginImpl.close();
        m34814c();
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
        String simpleName = TemplateReaderPlugin.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRenderer
    public boolean draw(@NotNull DrawArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        GeoLayout geoLayout = this.geoLayout;
        if (geoLayout != null) {
            return this.pluginImpl.drawGeoLayout(args, geoLayout, this.pluginOptions);
        }
        return false;
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
    public TemplateReaderPlugin getDocumentFeatures() {
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
        List<ReaderImage> emptyList;
        Intrinsics.checkNotNullParameter(position, "position");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
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
    public TemplateReaderPlugin getNavigator() {
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
    public TemplateReaderPlugin getPageDataProvider() {
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
        Properties properties;
        PageMargins pageMargins;
        RectF layoutRect;
        Intrinsics.checkNotNullParameter(position, "position");
        GeoLayout geoLayout = this.geoLayout;
        return (geoLayout == null || (properties = geoLayout.getProperties()) == null || (pageMargins = properties.getPageMargins()) == null || (layoutRect = pageMargins.getLayoutRect()) == null) ? ResManager.INSTANCE.getScreenRectF() : layoutRect;
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
    public TemplateReaderPlugin getPluginFeatures() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public TemplateReaderPlugin getReaderHitTestManager() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public TemplateReaderPlugin getRenderer() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRenderer
    @NotNull
    public TemplateReaderPlugin getRendererFeatures() {
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
    public TemplateReaderPlugin getSearchManager() {
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
    public TemplateReaderPlugin getTextStyleManager() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public int getTotalPage() {
        return this.templateDataInfo.getPageIdList().size();
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
    public TemplateReaderPlugin getView() {
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
        int pageIndex = position.getPageIndex() + 1;
        return pageIndex < getTotalPage() ? positionByPageIndex(pageIndex) : ReaderPositionImpl.INSTANCE.getDummy();
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
        m34812a();
        this.documentOptions = documentOptions;
        this.pluginOptions = pluginOptions;
        return this;
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
        int parseInt = MathUtils.INSTANCE.parseInt(positionString);
        return new ReaderPositionImpl().fromPageIndex(parseInt).fromInteger(parseInt).fromString(String.valueOf(parseInt));
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderPosition prevPage(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        int pageIndex = position.getPageIndex();
        return pageIndex > 0 ? positionByPageIndex(pageIndex - 1) : ReaderPositionImpl.INSTANCE.getDummy();
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
        return false;
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
    public void updateDocumentOptions(@NotNull ReaderDocumentOptions documentOptions, @NotNull ReaderPluginOptions pluginOptions) {
        Intrinsics.checkNotNullParameter(documentOptions, "documentOptions");
        Intrinsics.checkNotNullParameter(pluginOptions, "pluginOptions");
        this.documentOptions = documentOptions;
        m34812a();
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
