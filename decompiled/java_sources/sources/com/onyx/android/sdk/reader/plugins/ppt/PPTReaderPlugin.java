package com.onyx.android.sdk.reader.plugins.ppt;

import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.IntRange;
import androidx.core.content.FileProvider;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.onyx.android.sdk.reader.api.PageRange;
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
import com.onyx.android.sdk.reader.api.ReaderExportArgs;
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
import com.onyx.android.sdk.reader.api.ReaderWritingMode;
import com.onyx.android.sdk.reader.common.FixedDocumentPageTextHelper;
import com.onyx.android.sdk.reader.common.ReaderCharInfo;
import com.onyx.android.sdk.reader.extension.CharRectList;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.onyx.android.sdk.reader.impl.ReaderSelectionImpl;
import com.onyx.android.sdk.reader.plugins.ppt.PPTReaderWrapper;
import com.onyx.engine.sdk.DisplayMetrics;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.poi.sl.MetaData;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008c\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u008d\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f2\u00020\r2\u00020\u000e:\u0002\u008d\u0001B\t¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001J\u001e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\u0016\u0010\u0019\u001a\u00020\u00172\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0018\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0002J\b\u0010$\u001a\u00020#H\u0016J \u0010*\u001a\u00020\u00022\u0006\u0010%\u001a\u00020#2\u0006\u0010'\u001a\u00020&2\u0006\u0010)\u001a\u00020(H\u0016J\b\u0010+\u001a\u00020\u0000H\u0016J\u0010\u0010.\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020,H\u0016J\b\u0010/\u001a\u00020\u0000H\u0016J\b\u00100\u001a\u00020\u0000H\u0016J\n\u00102\u001a\u0004\u0018\u000101H\u0016J\b\u00103\u001a\u00020\u0000H\u0016J\b\u00104\u001a\u00020\u0000H\u0016J\b\u00105\u001a\u00020\u0000H\u0016J\b\u00107\u001a\u000206H\u0016J\b\u00108\u001a\u00020\u0000H\u0016J\u0010\u0010;\u001a\u0002062\u0006\u0010:\u001a\u000209H\u0016J\u0010\u0010>\u001a\u0002062\u0006\u0010=\u001a\u00020<H\u0016J\b\u0010?\u001a\u000206H\u0016J\u0010\u0010A\u001a\u00020@2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010B\u001a\u00020#2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0016\u0010D\u001a\b\u0012\u0004\u0012\u00020#0C2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u001c\u0010G\u001a\u0004\u0018\u00010F2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010E\u001a\u0004\u0018\u00010\u000fH\u0016J\u000e\u0010A\u001a\u00020@2\u0006\u0010H\u001a\u00020 J\b\u0010I\u001a\u00020\u001cH\u0016J\b\u0010J\u001a\u00020\u001cH\u0016J\u0010\u0010M\u001a\u0002062\u0006\u0010L\u001a\u00020KH\u0016J\b\u0010N\u001a\u00020 H\u0016J\u0010\u0010O\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010P\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010Q\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010R\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010S\u001a\u00020\u0000H\u0016J\b\u0010T\u001a\u00020\u0000H\u0016J\b\u0010U\u001a\u00020\u0000H\u0016J\b\u0010V\u001a\u000206H\u0016J\u0010\u0010W\u001a\u0002062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010X\u001a\u00020\u0000H\u0016J\u0010\u0010[\u001a\u0002062\u0006\u0010Z\u001a\u00020YH\u0016J\b\u0010\\\u001a\u00020\u000fH\u0016J\u0010\u0010]\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020 H\u0016J\u0018\u0010`\u001a\u00020\u000f2\u0006\u0010^\u001a\u00020#2\u0006\u0010_\u001a\u000206H\u0016J\u000e\u0010a\u001a\u00020 2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0010\u0010d\u001a\u0002062\u0006\u0010c\u001a\u00020bH\u0016J\u0010\u0010e\u001a\u0002062\u0006\u0010c\u001a\u00020bH\u0016J \u0010h\u001a\u0002062\u0006\u0010f\u001a\u00020 2\u0006\u0010c\u001a\u00020b2\u0006\u0010g\u001a\u000206H\u0016J\u000e\u0010j\u001a\b\u0012\u0004\u0012\u00020i0\u0013H\u0016J\"\u0010n\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010k\u001a\u00020\u00112\u0006\u0010m\u001a\u00020lH\u0016J\u0016\u0010p\u001a\b\u0012\u0004\u0012\u00020\u001a0C2\u0006\u0010o\u001a\u00020\u000fH\u0016J\b\u0010q\u001a\u000206H\u0016J\u0010\u0010r\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ\u0016\u0010t\u001a\u00020\u001c2\u000e\u0010s\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010CJ\u0010\u0010v\u001a\u00020\u001c2\b\u0010u\u001a\u0004\u0018\u00010FJ\b\u0010w\u001a\u00020\u000eH\u0016R\u0014\u0010z\u001a\u00020x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010yR\u0016\u0010|\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010{R\u001c\u0010j\u001a\b\u0012\u0004\u0012\u00020i0\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010}R)\u0010\u0080\u0001\u001a\u0014\u0012\u0004\u0012\u00020#\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130~8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u007fR#\u0010\u0081\u0001\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00170~8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u007fR\u0019\u0010\u0084\u0001\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u0018\u0010q\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0018\u0010\u008a\u0001\u001a\u00030\u0087\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001¨\u0006\u008e\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;", "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;", "Lcom/onyx/android/sdk/reader/api/ReaderDocument;", "Lcom/onyx/android/sdk/reader/api/ReaderView;", "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;", "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;", "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;", "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;", "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "position", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;", gon.f71290o0, "", "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;", "b", "charInfoList", "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "c", "a", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "selection", "", "d", "Lcom/onyx/android/sdk/reader/api/PageRange;", "pageRange", "", "pageIndex", "e", "", FileProvider.f5230t, "path", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "documentOptions", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "pluginOptions", "open", "getPluginFeatures", "Lcom/onyx/android/sdk/base/data/Size;", "size", "updateViewSize", "getRenderer", "getNavigator", "Lcom/onyx/android/sdk/reader/api/ReaderPagination;", "getPagination", "getTextStyleManager", "getReaderHitTestManager", "getSearchManager", "", "supportDrm", "createDrmManager", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;", "metadata", "readMetadata", "Lcom/onyx/android/sdk/reader/api/ReaderImage;", "readImage", "readCover", "isBlankContent", "Landroid/graphics/RectF;", "getPageOriginSize", "getPageText", "", "getPageParagraphList", "sentenceStartPosition", "Lcom/onyx/android/sdk/reader/api/ReaderSentence;", "getSentence", "page", "abortCurrentJob", "clearAbortFlag", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "readTableOfContent", "getTotalPage", "nextScreen", "prevScreen", "nextPage", "prevPage", "getView", "getPageDataProvider", "getDocumentFeatures", "close", "isValidPosition", "getRendererFeatures", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", "args", "draw", "getInitPosition", "positionByPageIndex", "positionString", "useJsonPageIndexIfValid", "positionByPositionString", "pageIndexByPosition", "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;", "options", "searchPrevious", "searchNext", "currentPage", Constants.CLEAR_ATTRIBUTES, "searchInPage", "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;", "searchResults", "end", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;", "hitTestOptions", "selectOnScreen", "pagePosition", "allText", "supportScale", "updateSelectionPageRange", "selectionList", "updateSelectionsPageRange", "sentence", "updateSentencePageRange", "createDocumentExporter", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "benchmark", Constants.STRING_SIG, "documentPath", "Ljava/util/List;", "", "Ljava/util/Map;", "pageCharInfoListMap", "pageWritingModeMap", C6997f.f39671c, "Lcom/onyx/android/sdk/base/data/Size;", "viewSize", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;", C6999h.f39688c, "Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;", "pluginImpl", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPPTReaderPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PPTReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,387:1\n1549#2:388\n1620#2,3:389\n*S KotlinDebug\n*F\n+ 1 PPTReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin\n*L\n308#1:388\n308#1:389,3\n*E\n"})
/* loaded from: classes8.dex */
public final class PPTReaderPlugin implements ReaderPlugin, ReaderDocument, ReaderView, ReaderRenderer, ReaderNavigator, ReaderSearchManager, ReaderTextStyleManager, ReaderDrmManager, ReaderHitTestManager, ReaderRendererFeatures, ReaderPluginFeatures, ReaderPageDataProvider, ReaderDocumentFeatures, ReaderDocumentExporter {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: i */
    @NotNull
    public static final Class<PPTReaderPlugin> f45044i = PPTReaderPlugin.class;

    /* renamed from: j */
    @NotNull
    public static final Lazy<Set<String>> f45045j;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Benchmark benchmark = new Benchmark();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String documentPath = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<ReaderSelectionImpl> searchResults = new ArrayList();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public Map<String, List<ReaderCharInfo>> pageCharInfoListMap = new LinkedHashMap();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public Map<String, ReaderWritingMode> pageWritingModeMap = new LinkedHashMap();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Size viewSize = new Size(0, 0, 3, null);

    /* renamed from: g, reason: from kotlin metadata */
    public boolean supportScale = true;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final PPTReaderWrapper pluginImpl = new PPTReaderWrapper();

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010#\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R!\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin$Companion;", "", "", "path", "", "accept", "", "extensionFilters$delegate", "Lkotlin/Lazy;", "a", "()Ljava/util/Set;", "extensionFilters", "Ljava/lang/Class;", "Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderPlugin;", "TAG", "Ljava/lang/Class;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final Set<String> m34786a() {
            return (Set) PPTReaderPlugin.f45045j.getValue();
        }

        public final boolean accept(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return m34786a().contains(FileUtils.INSTANCE.getFileExtension(path));
        }

        public Companion() {
        }
    }

    static {
        Lazy<Set<String>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Set<String>>() { // from class: com.onyx.android.sdk.reader.plugins.ppt.PPTReaderPlugin$Companion$extensionFilters$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Set<String> invoke() {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                linkedHashSet.add("ppt");
                linkedHashSet.add(FileTypeConstant.PPS);
                linkedHashSet.add(FileTypeConstant.POT);
                linkedHashSet.add(FileTypeConstant.PPA);
                linkedHashSet.add(FileTypeConstant.PPTX);
                linkedHashSet.add(FileTypeConstant.PPSX);
                linkedHashSet.add(FileTypeConstant.PPTM);
                linkedHashSet.add(FileTypeConstant.PPSM);
                linkedHashSet.add(FileTypeConstant.POTX);
                linkedHashSet.add(FileTypeConstant.POTM);
                linkedHashSet.add(FileTypeConstant.PPAM);
                return linkedHashSet;
            }
        });
        f45045j = lazy;
    }

    /* renamed from: a */
    public final ReaderWritingMode m34781a(List<ReaderCharInfo> charInfoList) {
        int collectionSizeOrDefault;
        List<? extends RectF> list;
        ReaderWritingMode.Companion companion = ReaderWritingMode.INSTANCE;
        List<ReaderCharInfo> list2 = charInfoList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ReaderCharInfo) it2.next()).getRect());
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return companion.analysePageWritingModeByCharRect(list);
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
    public List<ReaderSelection> allText(@NotNull ReaderPosition pagePosition) {
        Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
        return this.pluginImpl.allText(pageIndexByPosition(pagePosition));
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0031, code lost:
    
        r3 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r3);
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.onyx.android.sdk.reader.common.ReaderCharInfo> m34782b(com.onyx.android.sdk.reader.api.ReaderPosition r4, com.onyx.android.sdk.reader.api.ReaderHitTestArgs r5) {
        /*
            r3 = this;
            java.lang.String r4 = r4.getStrPosition()
            java.util.Map<java.lang.String, java.util.List<com.onyx.android.sdk.reader.common.ReaderCharInfo>> r0 = r3.pageCharInfoListMap
            boolean r0 = r0.containsKey(r4)
            if (r0 == 0) goto L3f
            com.onyx.android.sdk.base.utils.Debug r5 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class<com.onyx.android.sdk.reader.plugins.ppt.PPTReaderPlugin> r0 = com.onyx.android.sdk.reader.plugins.ppt.PPTReaderPlugin.class
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "hit cache, key = "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r5.m32035d(r0, r1, r2)
            java.util.Map<java.lang.String, java.util.List<com.onyx.android.sdk.reader.common.ReaderCharInfo>> r3 = r3.pageCharInfoListMap
            java.lang.Object r3 = r3.get(r4)
            java.util.List r3 = (java.util.List) r3
            if (r3 == 0) goto L39
            java.util.Collection r3 = (java.util.Collection) r3
            java.util.List r3 = kotlin.collections.CollectionsKt.toMutableList(r3)
            if (r3 != 0) goto L3e
        L39:
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
        L3e:
            return r3
        L3f:
            com.onyx.android.sdk.reader.plugins.ppt.PPTReaderWrapper r0 = r3.pluginImpl
            int r5 = r5.getPageIndex()
            java.util.List r5 = r0.getPageTextCharInfoList(r5)
            java.util.Map<java.lang.String, java.util.List<com.onyx.android.sdk.reader.common.ReaderCharInfo>> r3 = r3.pageCharInfoListMap
            r3.put(r4, r5)
            java.util.Collection r5 = (java.util.Collection) r5
            java.util.List r3 = kotlin.collections.CollectionsKt.toMutableList(r5)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.plugins.ppt.PPTReaderPlugin.m34782b(com.onyx.android.sdk.reader.api.ReaderPosition, com.onyx.android.sdk.reader.api.ReaderHitTestArgs):java.util.List");
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    public void beginLookupPageData() {
        ReaderPageDataProvider.DefaultImpls.beginLookupPageData(this);
    }

    /* renamed from: c */
    public final ReaderWritingMode m34783c(ReaderPosition position, List<ReaderCharInfo> charInfoList) {
        String strPosition = position.getStrPosition();
        if (this.pageWritingModeMap.containsKey(strPosition)) {
            ReaderWritingMode readerWritingMode = this.pageWritingModeMap.get(strPosition);
            return readerWritingMode == null ? ReaderWritingMode.UNKNOWN : readerWritingMode;
        }
        ReaderWritingMode m34781a = m34781a(charInfoList);
        this.pageWritingModeMap.put(strPosition, m34781a);
        return m34781a;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    public void clearAbortFlag() {
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public boolean close() {
        return this.pluginImpl.closeDocument();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    @Nullable
    public ReaderDocumentConverter createDocumentConverter() {
        return ReaderDocument.DefaultImpls.createDocumentConverter(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    @NotNull
    public ReaderDocumentExporter createDocumentExporter() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    @Nullable
    public ReaderDocumentWriter createDocumentWriter() {
        return ReaderDocument.DefaultImpls.createDocumentWriter(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    @NotNull
    public PPTReaderPlugin createDrmManager() {
        return this;
    }

    /* renamed from: d */
    public final void m34784d(ReaderSelection selection) {
        List<RectF> mergeBlockRectanglesByVerticalWord = selection.writingMode() == ReaderWritingMode.VERTICAL_RL ? CharRectList.INSTANCE.mergeBlockRectanglesByVerticalWord(selection.rectangles()) : CharRectList.INSTANCE.mergeBlockRectanglesByWord(selection.rectangles());
        selection.rectangles().clear();
        selection.rectangles().addAll(mergeBlockRectanglesByVerticalWord);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    public void destroy() {
        ReaderPlugin.DefaultImpls.destroy(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    @NotNull
    public String displayName() {
        return "PPTReaderPlugin";
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRenderer
    public boolean draw(@NotNull DrawArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.benchmark.restart();
        boolean draw = this.pluginImpl.draw(args);
        Debug.INSTANCE.m32035d(f45044i, "rendering takes: " + this.benchmark.duration(), new Object[0]);
        return draw;
    }

    /* renamed from: e */
    public final void m34785e(PageRange pageRange, int pageIndex) {
        ReaderPosition positionByPageIndex = positionByPageIndex(pageIndex);
        pageRange.setStartPosition(positionByPageIndex);
        pageRange.setEndPosition(positionByPageIndex);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    public void endLookupPageData() {
        ReaderPageDataProvider.DefaultImpls.endLookupPageData(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentExporter
    public boolean exportPages(@NotNull ReaderExportArgs readerExportArgs) {
        return ReaderDocumentExporter.DefaultImpls.exportPages(this, readerExportArgs);
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
    public PPTReaderPlugin getDocumentFeatures() {
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
    public List<ReaderImage> getImages(@NotNull ReaderPosition readerPosition) {
        return ReaderNavigator.DefaultImpls.getImages(this, readerPosition);
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
    public PPTReaderPlugin getNavigator() {
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
    public PPTReaderPlugin getPageDataProvider() {
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
        return getPageOriginSize(pageIndexByPosition(position));
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public List<String> getPageParagraphList(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.pluginImpl.getPageParagraphList(position.getPageIndex());
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public RectF getPageSizeWithDpi(@NotNull ReaderPosition readerPosition, float f) {
        return ReaderPageDataProvider.DefaultImpls.getPageSizeWithDpi(this, readerPosition, f);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public String getPageText(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.pluginImpl.getPageText(pageIndexByPosition(position));
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @NotNull
    public PageTextInfoState getPageTextInfoState(@NotNull ReaderPosition readerPosition) {
        return ReaderHitTestManager.DefaultImpls.getPageTextInfoState(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @Nullable
    public ReaderPagination getPagination() {
        return null;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    @NotNull
    public PPTReaderPlugin getPluginFeatures() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public PPTReaderPlugin getReaderHitTestManager() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public PPTReaderPlugin getRenderer() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRenderer
    @NotNull
    public PPTReaderPlugin getRendererFeatures() {
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
    public PPTReaderPlugin getSearchManager() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @Nullable
    public ReaderSentence getSentence(@NotNull ReaderPosition position, @Nullable ReaderPosition sentenceStartPosition) {
        Intrinsics.checkNotNullParameter(position, "position");
        ReaderSentence sentence = this.pluginImpl.getSentence(pageIndexByPosition(position), sentenceStartPosition != null ? sentenceStartPosition.getIntPosition() : 0);
        updateSentencePageRange(sentence);
        if (sentence != null) {
            m34784d(sentence.getReaderSelection());
        }
        return sentence;
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
    public PPTReaderPlugin getTextStyleManager() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public int getTotalPage() {
        return this.pluginImpl.pageCount();
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
    public PPTReaderPlugin getView() {
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
        return false;
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
        int pageIndexByPosition = pageIndexByPosition(position);
        return pageIndexByPosition >= 0 && pageIndexByPosition < getTotalPage();
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
    public ReaderDocument open(@NotNull String path, @NotNull ReaderDocumentOptions documentOptions, @NotNull ReaderPluginOptions pluginOptions) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(documentOptions, "documentOptions");
        Intrinsics.checkNotNullParameter(pluginOptions, "pluginOptions");
        this.documentPath = path;
        long openDocument = this.pluginImpl.openDocument(path, documentOptions);
        PPTReaderWrapper.Companion companion = PPTReaderWrapper.INSTANCE;
        if (openDocument == companion.getNO_ERROR()) {
            return this;
        }
        if ((((openDocument > 11L ? 1 : (openDocument == 11L ? 0 : -1)) == 0 || (openDocument > 12L ? 1 : (openDocument == 12L ? 0 : -1)) == 0) || (openDocument > 13L ? 1 : (openDocument == 13L ? 0 : -1)) == 0) || openDocument == 14) {
            throw ReaderException.INSTANCE.extensionNotMatched();
        }
        if (openDocument == 15) {
            throw ReaderException.INSTANCE.emptyDocument();
        }
        if (openDocument == companion.getERROR_PASSWORD_INVALID()) {
            throw ReaderException.INSTANCE.passwordRequired();
        }
        throw ReaderException.INSTANCE.cannotOpen();
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
        return this.pluginImpl.positionByPageIndex(pageIndex);
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
        return this.pluginImpl.positionByPositionString(positionString);
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
    public boolean readCover(@NotNull ReaderImage readImage) {
        Intrinsics.checkNotNullParameter(readImage, "readImage");
        return false;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public boolean readMetadata(@NotNull ReaderDocumentMetadata metadata) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        MetaData metadata2 = this.pluginImpl.metadata();
        if (metadata2 == null) {
            return false;
        }
        String title = metadata2.getTitle();
        Intrinsics.checkNotNullExpressionValue(title, "getTitle(...)");
        metadata.setTitle(title);
        String author = metadata2.getAuthor();
        Intrinsics.checkNotNullExpressionValue(author, "getAuthor(...)");
        metadata.addValidAuthor(author);
        return true;
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
        boolean search = this.pluginImpl.search(currentPage, options, this.searchResults);
        Iterator<ReaderSelectionImpl> it2 = this.searchResults.iterator();
        while (it2.hasNext()) {
            m34784d(it2.next());
        }
        return search;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSearchManager
    public boolean searchNext(@NotNull ReaderSearchOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        this.searchResults.clear();
        int totalPage = getTotalPage();
        for (int fromPage = options.fromPage(); fromPage < totalPage; fromPage++) {
            if (searchInPage(fromPage, options, false)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSearchManager
    public boolean searchPrevious(@NotNull ReaderSearchOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        this.searchResults.clear();
        for (int fromPage = options.fromPage(); -1 < fromPage; fromPage--) {
            if (searchInPage(fromPage, options, false)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSearchManager
    @NotNull
    public List<ReaderSelectionImpl> searchResults() {
        return this.searchResults;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection selectOnDocument(@NotNull ReaderSelectTextArgs readerSelectTextArgs) {
        return ReaderHitTestManager.DefaultImpls.selectOnDocument(this, readerSelectTextArgs);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection selectOnScreen(@NotNull ReaderPosition readerPosition, @NotNull ReaderPosition readerPosition2, @NotNull ReaderPosition readerPosition3) {
        return ReaderHitTestManager.DefaultImpls.selectOnScreen(this, readerPosition, readerPosition2, readerPosition3);
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
        return false;
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
    /* renamed from: supportScale, reason: from getter */
    public boolean getSupportScale() {
        return this.supportScale;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRendererFeatures
    public boolean supportTypefaceAdjustment() {
        return ReaderRendererFeatures.DefaultImpls.supportTypefaceAdjustment(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public void updateDocumentOptions(@NotNull ReaderDocumentOptions readerDocumentOptions, @NotNull ReaderPluginOptions readerPluginOptions) {
        ReaderDocument.DefaultImpls.updateDocumentOptions(this, readerDocumentOptions, readerPluginOptions);
    }

    public final void updateSelectionPageRange(@Nullable ReaderSelection selection) {
        if ((selection != null ? selection.pageRange() : null) == null) {
            return;
        }
        m34785e(selection.pageRange(), selection.pageIndex());
    }

    public final void updateSelectionsPageRange(@Nullable List<? extends ReaderSelection> selectionList) {
        List<? extends ReaderSelection> list = selectionList;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<? extends ReaderSelection> it2 = selectionList.iterator();
        while (it2.hasNext()) {
            updateSelectionPageRange(it2.next());
        }
    }

    public final void updateSentencePageRange(@Nullable ReaderSentence sentence) {
        if (sentence == null) {
            return;
        }
        updateSelectionPageRange(sentence.getReaderSelection());
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

    @NotNull
    public final RectF getPageOriginSize(int page) {
        return DimensionKt.toRectF(this.pluginImpl.getPageSize());
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection selectOnScreen(@NotNull ReaderHitTestArgs start, @NotNull ReaderHitTestArgs end, @NotNull ReaderHitTestOptions hitTestOptions) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(hitTestOptions, "hitTestOptions");
        ReaderPosition positionByPageIndex = positionByPageIndex(start.getPageIndex());
        List<ReaderCharInfo> m34782b = m34782b(positionByPageIndex, start);
        return new FixedDocumentPageTextHelper(positionByPageIndex, m34782b, m34783c(positionByPageIndex, m34782b)).selectOnScreen(getPageOriginSize(start.getPageIndex()), start, end, hitTestOptions);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public void updateTocPageIndex(@NotNull ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry) {
        ReaderNavigator.DefaultImpls.updateTocPageIndex(this, readerDocumentTableOfContentEntry);
    }
}
