package com.onyx.android.sdk.reader.plugins.msdoc;

import android.graphics.Bitmap;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.reader.api.ConvertArgs;
import com.onyx.android.sdk.reader.api.PaginationChapterInfo;
import com.onyx.android.sdk.reader.api.ReaderChineseConvertType;
import com.onyx.android.sdk.reader.api.ReaderDocumentConverter;
import com.onyx.android.sdk.reader.api.ReaderDocumentOptions;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.api.ReaderDrmCertificateFactory;
import com.onyx.android.sdk.reader.api.ReaderException;
import com.onyx.android.sdk.reader.api.ReaderHitTestArgs;
import com.onyx.android.sdk.reader.api.ReaderImage;
import com.onyx.android.sdk.reader.api.ReaderPageProgressionDirection;
import com.onyx.android.sdk.reader.api.ReaderPluginOptions;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.api.ReaderSearchOptions;
import com.onyx.android.sdk.reader.api.ReaderSelectTextArgs;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderSentence;
import com.onyx.android.sdk.reader.api.ReaderTextSplitter;
import com.onyx.android.sdk.reader.api.ReaderTextStyle;
import com.onyx.android.sdk.reader.cbox.CBoxDocument;
import com.onyx.android.sdk.reader.cbox.page.CBoxDataOnScreen;
import com.onyx.android.sdk.reader.cbox.utils.CBoxUtils;
import com.onyx.engine.sdk.DiskCacheManager;
import com.onyx.engine.sdk.DisplayMetrics;
import com.onyx.engine.sdk.FontSpec;
import com.onyx.engine.sdk.HandleErrorCode;
import com.onyx.engine.sdk.NeoMSDocNative;
import com.onyx.engine.sdk.OpenOptions;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import com.onyx.poi.POIFactory;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import org.apache.commons.math3.linear.SymmLQ;
import org.apache.logging.NeoLogger;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.convert.WordConvertFactory;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000þ\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 «\u00012\u00020\u0001:\u0002«\u0001B\u0015\u0012\n\b\u0002\u0010¢\u0001\u001a\u00030 \u0001¢\u0006\u0006\b©\u0001\u0010ª\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u0016\u0010\f\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016J\u0016\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001a2\u0006\u0010\u0019\u001a\u00020\u0002J\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cJ\u0016\u0010 \u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001eJ\u0010\u0010\"\u001a\u0004\u0018\u00010\u00022\u0006\u0010!\u001a\u00020\u0002J\b\u0010#\u001a\u0004\u0018\u00010\u0002J\u0006\u0010%\u001a\u00020$J\u0006\u0010&\u001a\u00020$J\u000e\u0010(\u001a\u00020\u00072\u0006\u0010'\u001a\u00020$J\u000e\u0010+\u001a\u00020\u00072\u0006\u0010*\u001a\u00020)J\u000e\u0010.\u001a\u00020\u00072\u0006\u0010-\u001a\u00020,J\u0018\u00103\u001a\u00020\u00072\u0006\u00100\u001a\u00020/2\b\u00102\u001a\u0004\u0018\u000101J\u000e\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u001cJ\f\u00108\u001a\b\u0012\u0004\u0012\u00020706J\b\u00109\u001a\u0004\u0018\u00010\u0002J\u0018\u0010=\u001a\u0004\u0018\u00010\u00022\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020:J\f\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00020\u001aJ\u0010\u0010@\u001a\u0004\u0018\u00010?2\u0006\u0010;\u001a\u00020:J\b\u0010A\u001a\u0004\u0018\u00010?J\f\u0010C\u001a\b\u0012\u0004\u0012\u00020B0\u001aJ\u0010\u0010E\u001a\u0004\u0018\u00010B2\u0006\u0010D\u001a\u00020BJ\f\u0010G\u001a\b\u0012\u0004\u0012\u00020F0\u001aJ\u0016\u0010J\u001a\u00020\u00162\u0006\u0010H\u001a\u00020:2\u0006\u0010I\u001a\u00020/J\u0018\u0010K\u001a\u0004\u0018\u00010F2\u0006\u0010H\u001a\u00020:2\u0006\u0010I\u001a\u00020/J\u0010\u0010M\u001a\u0004\u0018\u00010\u001c2\u0006\u0010L\u001a\u00020FJ\u0006\u0010N\u001a\u00020/J\u0006\u0010O\u001a\u00020/J\u0006\u0010P\u001a\u00020/J\u0006\u0010Q\u001a\u00020:J\u0006\u0010R\u001a\u00020:J\u0006\u0010S\u001a\u00020/J\u0006\u0010T\u001a\u00020\u0016J\u0006\u0010U\u001a\u00020\u0016J\u0006\u0010V\u001a\u00020\u0016J\u0006\u0010W\u001a\u00020\u0016J\u000e\u0010X\u001a\u00020\u00162\u0006\u0010H\u001a\u00020:J\u000e\u0010Y\u001a\u00020\u00162\u0006\u0010H\u001a\u00020:J\u000e\u0010[\u001a\u00020\u00162\u0006\u0010Z\u001a\u00020/J\u000e\u0010\\\u001a\u00020:2\u0006\u0010Z\u001a\u00020/J\u000e\u0010]\u001a\u00020/2\u0006\u0010H\u001a\u00020:J\u000e\u0010^\u001a\u00020:2\u0006\u0010H\u001a\u00020\u0002J\u0010\u0010a\u001a\u00020\u00072\b\u0010`\u001a\u0004\u0018\u00010_J\u0010\u0010b\u001a\u00020\u00162\b\u0010`\u001a\u0004\u0018\u00010_J\u001c\u0010f\u001a\u00020\u00162\u0006\u0010d\u001a\u00020c2\f\u0010e\u001a\b\u0012\u0004\u0012\u00020B06J\u001c\u0010j\u001a\u0004\u0018\u00010B2\b\u0010h\u001a\u0004\u0018\u00010g2\b\u0010i\u001a\u0004\u0018\u00010gJ\u001c\u0010n\u001a\u0004\u0018\u00010B2\b\u0010k\u001a\u0004\u0018\u00010g2\b\u0010m\u001a\u0004\u0018\u00010lJ\u0018\u0010j\u001a\u0004\u0018\u00010B2\u0006\u0010o\u001a\u00020:2\u0006\u0010p\u001a\u00020:J\u0012\u0010j\u001a\u0004\u0018\u00010B2\b\u0010r\u001a\u0004\u0018\u00010qJ\u0018\u0010t\u001a\u0004\u0018\u00010B2\u0006\u0010o\u001a\u00020:2\u0006\u0010s\u001a\u00020/J\b\u0010u\u001a\u0004\u0018\u00010BJ\b\u0010v\u001a\u0004\u0018\u00010BJ\u0010\u0010w\u001a\u0004\u0018\u00010B2\u0006\u0010;\u001a\u00020:J\u0010\u0010x\u001a\u0004\u0018\u00010B2\u0006\u0010;\u001a\u00020:J\u0006\u0010y\u001a\u00020\u0016J\u0010\u0010z\u001a\u0004\u0018\u00010\u00022\u0006\u0010H\u001a\u00020:J\f\u0010{\u001a\b\u0012\u0004\u0012\u00020\u00020\u001aJ\u0010\u0010|\u001a\u0004\u0018\u00010\u00022\u0006\u0010H\u001a\u00020:J\u0010\u0010}\u001a\u0004\u0018\u00010\u00022\u0006\u0010H\u001a\u00020:J\u000e\u0010~\u001a\u00020:2\u0006\u0010H\u001a\u00020:J\u000f\u0010\u0080\u0001\u001a\u00020:2\u0006\u0010\u007f\u001a\u00020\u0002J\u0013\u0010\u0083\u0001\u001a\u00020\u00162\n\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0081\u0001J\u0014\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0081\u00012\b\u0010\u0082\u0001\u001a\u00030\u0081\u0001J\u0007\u0010\u0085\u0001\u001a\u00020\u0016J\u0007\u0010\u0086\u0001\u001a\u00020\u0016J\u0007\u0010\u0087\u0001\u001a\u00020,J\u0007\u0010\u0088\u0001\u001a\u00020\u0016J\u0007\u0010\u0089\u0001\u001a\u00020\u0007J\u000f\u0010\u008a\u0001\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016J\u0007\u0010\u008b\u0001\u001a\u00020\u0016J\u0007\u0010\u008c\u0001\u001a\u00020\u0016J\u0007\u0010\u008d\u0001\u001a\u00020\u0007J\u0010\u0010\u008f\u0001\u001a\u00020\u00072\u0007\u0010\u008e\u0001\u001a\u00020\u0002J\b\u0010\u0091\u0001\u001a\u00030\u0090\u0001J\u0007\u0010\u0092\u0001\u001a\u00020\u0016J\u0007\u0010\u0093\u0001\u001a\u00020,J\u0007\u0010\u0094\u0001\u001a\u00020/J\u0007\u0010\u0095\u0001\u001a\u00020/J\u0011\u0010\u0096\u0001\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010B\u0018\u00010\u001aJ\u0014\u0010\u0098\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0097\u00010\u001a0\u001aJ\u001c\u0010\u009c\u0001\u001a\u00020/2\u0007\u0010r\u001a\u00030\u0099\u00012\n\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u009a\u0001J\u0007\u0010\u009d\u0001\u001a\u00020\u0007J\u0007\u0010\u009e\u0001\u001a\u00020\u0007J\u0007\u0010\u009f\u0001\u001a\u00020\u0007R\u0017\u0010¢\u0001\u001a\u00030 \u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0006\u0010¡\u0001R\u0016\u0010¤\u0001\u001a\u00020/8\u0002X\u0082D¢\u0006\u0007\n\u0005\b\t\u0010£\u0001R\u001a\u0010¦\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\b\u0010¥\u0001R\u001b\u0010¨\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¥\u0001¨\u0006¬\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderWrapper;", "", "", "path", "password", "", "a", "", "c", "b", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "documentOptions", "openDocument", "Lcom/onyx/android/sdk/base/data/Size;", "size", "setViewSize", "Lcom/onyx/engine/sdk/DisplayMetrics;", "displayMetrics", "setupDisplayMetrics", "Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;", "factory", "activateDeviceDRM", "", "abort", "setAborted", "dirPath", "", "saveLogFiles", "Landroid/graphics/Bitmap;", "readCover", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "pluginOptions", "updateDocumentOptions", "tag", "metadataString", "readDocumentLanguage", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "getStyle", "getOriginCssStyle", "style", "setStyle", "Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;", "convertType", "setChineseConvertType", "", "gamma", "setTextGamma", "", SymmLQ.f108603e, "", "colorTable", "setFontEnhancement", "bitmap", "draw", "", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;", "getFontFamilyList", "getScreenText", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "startPosition", "endPosition", "getText", "getPageParagraphList", "Lcom/onyx/android/sdk/reader/api/ReaderSentence;", "getSentence", "getLastSentence", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "getPageLinks", "link", "getLinkTargetSelection", "Lcom/onyx/android/sdk/reader/api/ReaderImage;", "getPageImages", "position", "column", "isImagePage", "getImagePage", "readerImage", "getBitmap", "getTotalPage", "getScreenStartPage", "getScreenEndPage", "getScreenStartPosition", "getScreenEndPosition", "getSize", "isFirstPage", "isLastPage", "nextScreen", "preScreen", "gotoPosition", "hitPageCache", "page", "gotoPage", "getPositionOfPageNumber", "getPageNumberOfPosition", "positionByPositionString", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "updateTocPageNumber", "readTableOfContent", "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;", "options", "list", "search", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;", "startArgs", "endArgs", "selectTextOnScreen", gon.f71290o0, "Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;", "splitter", "selectWordOnScreen", "startPos", "endPos", "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;", "args", "textNum", "selectSelection", "firstText", "lastText", "lastSelectionEndOfLine", "lastTextEndOfLine", "hasText", "getXPathByPosition", "chapterList", "getChapterId", "getChapterName", "getChapterStartPosition", "chapterID", "getInitPaginationPosition", "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;", PrivilegedApp.f6532i, "hasPaginationNext", "paginationNext", "isAllPaginationComplete", "isCurrentChapterPaginationComplete", "getPaginationProgress", "onPaginationStart", "onPaginationFinally", "setAbortPagination", "isAbortPagination", "isNeedClearPaginationCache", "clearPaginationCache", "chapterId", "updateReaderPageInfo", "Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;", "getReaderPageProgressDirection", "supportCssOriginStyle", "getTotalReadingProgress", "getPageNumberInCurrentChapter", "getTotalPageCountInCurrentChapter", "allText", "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;", "getAllPieceOfText", "Lcom/onyx/android/sdk/reader/api/ConvertArgs;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentConverter$Callback;", "callback", "convertToPDF", "closeDocument", "closePagination", "destroy", "Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;", "Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;", "cboxDocument", "I", "POI_VERSION", Constants.STRING_SIG, "cachePath", "d", "bookKeyCode", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/cbox/CBoxDocument;)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNeoMSDocReaderWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoMSDocReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,507:1\n731#2,9:508\n1549#2:519\n1620#2,3:520\n37#3,2:517\n*S KotlinDebug\n*F\n+ 1 NeoMSDocReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderWrapper\n*L\n144#1:508,9\n205#1:519\n205#1:520,3\n144#1:517,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NeoMSDocReaderWrapper {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e */
    public static long f44990e;

    /* renamed from: f */
    public static long f44991f;

    /* renamed from: g */
    public static long f44992g;

    /* renamed from: h */
    public static long f44993h;

    /* renamed from: i */
    public static long f44994i;

    /* renamed from: j */
    public static long f44995j;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CBoxDocument cboxDocument;

    /* renamed from: b, reason: from kotlin metadata */
    public final int POI_VERSION;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String cachePath;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String bookKeyCode;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0014\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\b¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/msdoc/NeoMSDocReaderWrapper$Companion;", "", "()V", "ERROR_CONFIG_NOT_EXIST", "", "getERROR_CONFIG_NOT_EXIST", "()J", "setERROR_CONFIG_NOT_EXIST", "(J)V", "ERROR_CONTENT_NOT_EXIST", "getERROR_CONTENT_NOT_EXIST", "setERROR_CONTENT_NOT_EXIST", "ERROR_FILE_INVALID", "getERROR_FILE_INVALID", "setERROR_FILE_INVALID", "ERROR_PASSWORD_INVALID", "getERROR_PASSWORD_INVALID", "setERROR_PASSWORD_INVALID", "ERROR_UNKNOWN", "getERROR_UNKNOWN", "setERROR_UNKNOWN", "NO_ERROR", "getNO_ERROR", "setNO_ERROR", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long getERROR_CONFIG_NOT_EXIST() {
            return NeoMSDocReaderWrapper.f44993h;
        }

        public final long getERROR_CONTENT_NOT_EXIST() {
            return NeoMSDocReaderWrapper.f44994i;
        }

        public final long getERROR_FILE_INVALID() {
            return NeoMSDocReaderWrapper.f44991f;
        }

        public final long getERROR_PASSWORD_INVALID() {
            return NeoMSDocReaderWrapper.f44992g;
        }

        public final long getERROR_UNKNOWN() {
            return NeoMSDocReaderWrapper.f44995j;
        }

        public final long getNO_ERROR() {
            return NeoMSDocReaderWrapper.f44990e;
        }

        public final void setERROR_CONFIG_NOT_EXIST(long j) {
            NeoMSDocReaderWrapper.f44993h = j;
        }

        public final void setERROR_CONTENT_NOT_EXIST(long j) {
            NeoMSDocReaderWrapper.f44994i = j;
        }

        public final void setERROR_FILE_INVALID(long j) {
            NeoMSDocReaderWrapper.f44991f = j;
        }

        public final void setERROR_PASSWORD_INVALID(long j) {
            NeoMSDocReaderWrapper.f44992g = j;
        }

        public final void setERROR_UNKNOWN(long j) {
            NeoMSDocReaderWrapper.f44995j = j;
        }

        public final void setNO_ERROR(long j) {
            NeoMSDocReaderWrapper.f44990e = j;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HandleErrorCode.values().length];
            try {
                iArr[HandleErrorCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HandleErrorCode.MSDOC_CONFIG_NOT_EXIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[HandleErrorCode.MSDOC_CONTENT_NOT_EXIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        POIFactory.init(ResManager.INSTANCE.getAppContext());
        f44991f = 1L;
        f44992g = 2L;
        f44993h = 3L;
        f44994i = 4L;
        f44995j = 5L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NeoMSDocReaderWrapper() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* renamed from: a */
    public final long m34749a(String path, String password) {
        try {
            DiskCacheManager diskCacheManager = CBoxUtils.INSTANCE.getDiskCacheManager();
            DiskCacheManager.Metadata metadata = diskCacheManager.getMetadata(this.bookKeyCode);
            String absolutePath = new File(diskCacheManager.getCacheDir(), this.bookKeyCode).getAbsolutePath();
            this.cachePath = absolutePath;
            if (metadata.version >= this.POI_VERSION) {
                if (!StringKt.safelyEquals(password, metadata.password)) {
                    return CBoxDocument.INSTANCE.getERROR_PASSWORD_INVALID();
                }
                metadata.modifyTime = System.currentTimeMillis();
                diskCacheManager.writeMetadata(this.bookKeyCode, metadata);
                return CBoxDocument.INSTANCE.getNO_ERROR();
            }
            FileUtils.INSTANCE.deleteFile(absolutePath, true);
            WordConvertFactory openWord = POIFactory.openWord(path, password, this.cachePath);
            openWord.convertWord();
            openWord.write(this.cachePath);
            openWord.close();
            metadata.version = this.POI_VERSION;
            metadata.password = password;
            metadata.modifyTime = System.currentTimeMillis();
            diskCacheManager.writeMetadata(this.bookKeyCode, metadata);
            return CBoxDocument.INSTANCE.getNO_ERROR();
        } catch (IllegalArgumentException e) {
            Debug.INSTANCE.m32044e(NeoMSDocReaderWrapper.class, NeoLogger.getStackTrace(e), new Object[0]);
            return CBoxDocument.INSTANCE.getERROR_FILE_INVALID();
        } catch (EncryptedDocumentException e2) {
            Debug.INSTANCE.m32044e(NeoMSDocReaderWrapper.class, NeoLogger.getStackTrace(e2), new Object[0]);
            return CBoxDocument.INSTANCE.getERROR_PASSWORD_INVALID();
        } catch (InvalidFormatException e3) {
            Debug.INSTANCE.m32044e(NeoMSDocReaderWrapper.class, NeoLogger.getStackTrace(e3), new Object[0]);
            return CBoxDocument.INSTANCE.getERROR_FILE_INVALID();
        } catch (Exception e4) {
            Debug.INSTANCE.m32044e(NeoMSDocReaderWrapper.class, NeoLogger.getStackTrace(e4), new Object[0]);
            return CBoxDocument.INSTANCE.getERROR_UNKNOWN();
        }
    }

    public final void activateDeviceDRM(@NotNull ReaderDrmCertificateFactory factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
    }

    @Nullable
    public final List<ReaderSelection> allText() {
        return this.cboxDocument.allText();
    }

    /* renamed from: b */
    public final String m34750b() {
        String str = "path = " + this.cboxDocument.getBookPath() + "\n";
        Intrinsics.checkNotNullExpressionValue(str, "toString(...)");
        return str;
    }

    /* renamed from: c */
    public final void m34751c() {
        List emptyList;
        List listOf;
        if (Debug.INSTANCE.getDebug()) {
            List<String> split = new Regex("\n").split(m34750b(), 0);
            if (!split.isEmpty()) {
                ListIterator<String> listIterator = split.listIterator(split.size());
                while (listIterator.hasPrevious()) {
                    if (!(listIterator.previous().length() == 0)) {
                        emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            String[] strArr = (String[]) emptyList.toArray(new String[0]);
            listOf = CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(strArr, strArr.length));
            Iterator it2 = listOf.iterator();
            while (it2.hasNext()) {
                Debug.INSTANCE.m32035d(NeoMSDocReaderWrapper.class, (String) it2.next(), new Object[0]);
            }
        }
    }

    @NotNull
    public final List<String> chapterList() {
        return this.cboxDocument.chapterList();
    }

    public final void clearPaginationCache() {
        this.cboxDocument.clearPaginationCache();
    }

    public final void closeDocument() {
        this.cboxDocument.close();
    }

    public final void closePagination() {
        this.cboxDocument.setAbortPagination(true);
    }

    public final int convertToPDF(@NotNull ConvertArgs args, @Nullable ReaderDocumentConverter.Callback callback) {
        Intrinsics.checkNotNullParameter(args, "args");
        return ReaderDocumentConverter.INSTANCE.convertToPDF(this.cboxDocument.getNeoNative(), args, callback);
    }

    public final void destroy() {
        this.cboxDocument.destroy();
    }

    public final void draw(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.cboxDocument.draw(bitmap);
        m34751c();
    }

    @Nullable
    public final ReaderSelection firstText() {
        return this.cboxDocument.firstText();
    }

    @NotNull
    public final List<List<CBoxDataOnScreen.PieceOfText>> getAllPieceOfText() {
        return this.cboxDocument.getAllPieceOfText();
    }

    @Nullable
    public final Bitmap getBitmap(@NotNull ReaderImage readerImage) {
        Intrinsics.checkNotNullParameter(readerImage, "readerImage");
        return this.cboxDocument.getBitmap(readerImage);
    }

    @Nullable
    public final String getChapterId(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getChapterId(position);
    }

    @Nullable
    public final String getChapterName(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getChapterName(position);
    }

    @NotNull
    public final ReaderPosition getChapterStartPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getChapterStartPosition(position);
    }

    @NotNull
    public final List<ReaderTextStyle.FontSpec> getFontFamilyList() {
        int collectionSizeOrDefault;
        ArrayList arrayList = new ArrayList();
        List<FontSpec> fontFamilyList = this.cboxDocument.getFontFamilyList();
        if (fontFamilyList != null) {
            List<FontSpec> list = fontFamilyList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Boolean.valueOf(arrayList.add(CBoxUtils.INSTANCE.convert((FontSpec) it2.next()))));
            }
        }
        return arrayList;
    }

    @Nullable
    public final ReaderImage getImagePage(@NotNull ReaderPosition position, int column) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getImagePage(position, column);
    }

    @NotNull
    public final ReaderPosition getInitPaginationPosition(@NotNull String chapterID) {
        Intrinsics.checkNotNullParameter(chapterID, "chapterID");
        return this.cboxDocument.getInitPaginationPosition(chapterID);
    }

    @Nullable
    public final ReaderSentence getLastSentence() {
        return this.cboxDocument.getLastSentence();
    }

    @Nullable
    public final ReaderSelection getLinkTargetSelection(@NotNull ReaderSelection link) {
        Intrinsics.checkNotNullParameter(link, "link");
        return this.cboxDocument.getLinkTargetSelection(link);
    }

    @NotNull
    public final ReaderTextStyle getOriginCssStyle() {
        return this.cboxDocument.getOriginCssStyle();
    }

    @NotNull
    public final List<ReaderImage> getPageImages() {
        return this.cboxDocument.getPageImages();
    }

    @NotNull
    public final List<ReaderSelection> getPageLinks() {
        return this.cboxDocument.getPageLinks();
    }

    public final int getPageNumberInCurrentChapter() {
        return this.cboxDocument.getPageNumberInCurrentChapter();
    }

    public final int getPageNumberOfPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getPageNumberOfPosition(position);
    }

    @NotNull
    public final List<String> getPageParagraphList() {
        return this.cboxDocument.getPageParagraphList();
    }

    public final float getPaginationProgress() {
        return this.cboxDocument.getPaginationProgress();
    }

    @NotNull
    public final ReaderPosition getPositionOfPageNumber(int page) {
        return this.cboxDocument.getPositionByPageNumber(page);
    }

    @NotNull
    public final ReaderPageProgressionDirection getReaderPageProgressDirection() {
        return this.cboxDocument.getReaderPageProgressDirection();
    }

    public final int getScreenEndPage() {
        return this.cboxDocument.getScreenEndPage();
    }

    @NotNull
    public final ReaderPosition getScreenEndPosition() {
        return this.cboxDocument.getScreenEndPosition();
    }

    public final int getScreenStartPage() {
        return this.cboxDocument.getScreenStartPage();
    }

    @NotNull
    public final ReaderPosition getScreenStartPosition() {
        return this.cboxDocument.getScreenStartPosition();
    }

    @Nullable
    public final String getScreenText() {
        return this.cboxDocument.getScreenText();
    }

    @Nullable
    public final ReaderSentence getSentence(@NotNull ReaderPosition startPosition) {
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        return this.cboxDocument.getSentence(startPosition);
    }

    public final int getSize() {
        return this.cboxDocument.getBookSize();
    }

    @NotNull
    public final ReaderTextStyle getStyle() {
        return this.cboxDocument.getReaderTextStyle();
    }

    @Nullable
    public final String getText(@NotNull ReaderPosition startPosition, @NotNull ReaderPosition endPosition) {
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        Intrinsics.checkNotNullParameter(endPosition, "endPosition");
        return this.cboxDocument.getText(startPosition, endPosition);
    }

    public final int getTotalPage() {
        return this.cboxDocument.getTotalPage();
    }

    public final int getTotalPageCountInCurrentChapter() {
        return this.cboxDocument.getTotalPageCountInCurrentChapter();
    }

    public final float getTotalReadingProgress() {
        return this.cboxDocument.getTotalReadingProgress();
    }

    @Nullable
    public final String getXPathByPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getXPathByPosition(position);
    }

    public final boolean gotoPage(int page) throws ReaderException {
        return this.cboxDocument.gotoPage(page);
    }

    public final boolean gotoPosition(@NotNull ReaderPosition position) throws ReaderException {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.gotoPosition(position);
    }

    public final boolean hasPaginationNext(@Nullable PaginationChapterInfo info) {
        return this.cboxDocument.hasPaginationNext(info);
    }

    public final boolean hasText() {
        return this.cboxDocument.hasText();
    }

    public final boolean hitPageCache(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.hitPageCache(position);
    }

    public final boolean isAbortPagination() {
        return this.cboxDocument.isAbortPagination();
    }

    public final boolean isAllPaginationComplete() {
        return this.cboxDocument.isAllPaginationComplete();
    }

    public final boolean isCurrentChapterPaginationComplete() {
        return this.cboxDocument.isCurrentChapterPaginationComplete();
    }

    public final boolean isFirstPage() {
        return this.cboxDocument.isFirstPage();
    }

    public final boolean isImagePage(@NotNull ReaderPosition position, int column) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.isImagePage(position, column);
    }

    public final boolean isLastPage() {
        return this.cboxDocument.isLastPage();
    }

    public final boolean isNeedClearPaginationCache() {
        return this.cboxDocument.isNeedClearPaginationCache();
    }

    @Nullable
    public final ReaderSelection lastSelectionEndOfLine(@NotNull ReaderPosition startPosition) {
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        return this.cboxDocument.lastSelectionEndOfLine(startPosition);
    }

    @Nullable
    public final ReaderSelection lastText() {
        return this.cboxDocument.lastText();
    }

    @Nullable
    public final ReaderSelection lastTextEndOfLine(@NotNull ReaderPosition startPosition) {
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        return this.cboxDocument.lastTextEndOfLine(startPosition);
    }

    @Nullable
    public final String metadataString(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        return this.cboxDocument.metadataString(tag);
    }

    public final boolean nextScreen() throws ReaderException {
        return this.cboxDocument.nextScreen();
    }

    public final void onPaginationFinally() {
        this.cboxDocument.onPaginationFinally();
    }

    public final boolean onPaginationStart() {
        return this.cboxDocument.onPaginationStart();
    }

    public final long openDocument(@NotNull String path, @NotNull ReaderDocumentOptions documentOptions) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(documentOptions, "documentOptions");
        this.bookKeyCode = FileUtils.INSTANCE.computeMD5(path);
        long m34749a = m34749a(path, documentOptions.getDocumentPassword());
        CBoxDocument.Companion companion = CBoxDocument.INSTANCE;
        if (m34749a != companion.getNO_ERROR()) {
            return m34749a;
        }
        OpenOptions openOptions = new OpenOptions(this.cachePath);
        CBoxDocument cBoxDocument = this.cboxDocument;
        String str = this.bookKeyCode;
        Intrinsics.checkNotNull(str);
        HandleErrorCode err = cBoxDocument.open(openOptions, str).getErr();
        int i = err == null ? -1 : WhenMappings.$EnumSwitchMapping$0[err.ordinal()];
        return i != 1 ? (i == 2 || i == 3) ? companion.getERROR_FILE_NOT_FOUND() : companion.getERROR_UNKNOWN() : companion.getNO_ERROR();
    }

    @Nullable
    public final PaginationChapterInfo paginationNext(@NotNull PaginationChapterInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        return this.cboxDocument.paginationNext(info);
    }

    @NotNull
    public final ReaderPosition positionByPositionString(@NotNull String position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.cboxDocument.getPositionFromString(position);
    }

    public final boolean preScreen() throws ReaderException {
        return this.cboxDocument.preScreen();
    }

    @Nullable
    public final Bitmap readCover() {
        return this.cboxDocument.readCover();
    }

    @Nullable
    public final String readDocumentLanguage() {
        return this.cboxDocument.readLanguage();
    }

    public final boolean readTableOfContent(@Nullable ReaderDocumentTableOfContent toc) {
        CBoxDocument cBoxDocument = this.cboxDocument;
        Intrinsics.checkNotNull(toc);
        return cBoxDocument.readTableOfContent(toc);
    }

    @Nullable
    public final List<String> saveLogFiles(@NotNull String dirPath) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        List<String> saveLogFiles = this.cboxDocument.saveLogFiles(dirPath);
        String m34750b = m34750b();
        File file = new File(dirPath, NeoMSDocReaderWrapper.class.getName() + NameUtil.USCORE + DateTimeUtil.INSTANCE.getCurrentTime24Format() + LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION);
        FileUtils.INSTANCE.saveContentToFile(m34750b, file);
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        saveLogFiles.add(absolutePath);
        return saveLogFiles;
    }

    public final boolean search(@NotNull ReaderSearchOptions options, @NotNull List<ReaderSelection> list) {
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(list, "list");
        return this.cboxDocument.search(options, list);
    }

    @Nullable
    public final ReaderSelection selectSelection(@NotNull ReaderPosition startPos, int textNum) {
        Intrinsics.checkNotNullParameter(startPos, "startPos");
        return this.cboxDocument.selectSelection(startPos, textNum);
    }

    @Nullable
    public final ReaderSelection selectTextOnScreen(@Nullable ReaderHitTestArgs startArgs, @Nullable ReaderHitTestArgs endArgs) {
        CBoxDocument cBoxDocument = this.cboxDocument;
        Intrinsics.checkNotNull(startArgs);
        Intrinsics.checkNotNull(endArgs);
        return cBoxDocument.selectTextOnScreen(startArgs, endArgs);
    }

    @Nullable
    public final ReaderSelection selectWordOnScreen(@Nullable ReaderHitTestArgs start, @Nullable ReaderTextSplitter splitter) {
        CBoxDocument cBoxDocument = this.cboxDocument;
        Intrinsics.checkNotNull(start);
        Intrinsics.checkNotNull(splitter);
        return cBoxDocument.selectWordOnScreen(start, splitter);
    }

    public final void setAbortPagination(boolean abort) {
        this.cboxDocument.setAbortPagination(abort);
    }

    public final void setAborted(boolean abort) {
        this.cboxDocument.setAborted(abort);
    }

    public final void setChineseConvertType(@NotNull ReaderChineseConvertType convertType) {
        Intrinsics.checkNotNullParameter(convertType, "convertType");
        this.cboxDocument.setChineseConvertType(convertType);
    }

    public final void setFontEnhancement(int threshold, @Nullable int[] colorTable) {
        this.cboxDocument.setFontEnhancement(threshold, colorTable);
    }

    public final void setStyle(@NotNull ReaderTextStyle style) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.cboxDocument.setStyle(style);
    }

    public final void setTextGamma(float gamma) {
        this.cboxDocument.setTextGamma(gamma);
    }

    public final void setViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.cboxDocument.setViewSize(size.getWidth(), size.getHeight());
    }

    public final void setupDisplayMetrics(@NotNull DisplayMetrics displayMetrics) {
        Intrinsics.checkNotNullParameter(displayMetrics, "displayMetrics");
        this.cboxDocument.setupDisplayMetrics(displayMetrics);
    }

    public final boolean supportCssOriginStyle() {
        return this.cboxDocument.supportCssOriginStyle();
    }

    public final void updateDocumentOptions(@NotNull ReaderDocumentOptions documentOptions, @NotNull ReaderPluginOptions pluginOptions) {
        Intrinsics.checkNotNullParameter(documentOptions, "documentOptions");
        Intrinsics.checkNotNullParameter(pluginOptions, "pluginOptions");
    }

    public final void updateReaderPageInfo(@NotNull String chapterId) {
        Intrinsics.checkNotNullParameter(chapterId, "chapterId");
        this.cboxDocument.updateReaderPageInfo(chapterId);
    }

    public final void updateTocPageNumber(@Nullable ReaderDocumentTableOfContent toc) {
        CBoxDocument cBoxDocument = this.cboxDocument;
        Intrinsics.checkNotNull(toc);
        cBoxDocument.updateTocPageNumber(toc);
    }

    public NeoMSDocReaderWrapper(@NotNull CBoxDocument cboxDocument) {
        Intrinsics.checkNotNullParameter(cboxDocument, "cboxDocument");
        this.cboxDocument = cboxDocument;
        this.POI_VERSION = 1;
    }

    @Nullable
    public final ReaderSelection selectTextOnScreen(@NotNull ReaderPosition startPos, @NotNull ReaderPosition endPos) {
        Intrinsics.checkNotNullParameter(startPos, "startPos");
        Intrinsics.checkNotNullParameter(endPos, "endPos");
        return this.cboxDocument.selectTextOnScreen(startPos, endPos);
    }

    @Nullable
    public final ReaderSelection selectTextOnScreen(@Nullable ReaderSelectTextArgs args) {
        CBoxDocument cBoxDocument = this.cboxDocument;
        Intrinsics.checkNotNull(args);
        return cBoxDocument.selectTextOnScreen(args);
    }

    public /* synthetic */ NeoMSDocReaderWrapper(CBoxDocument cBoxDocument, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new CBoxDocument(new NeoMSDocNative(), CBoxUtils.getMSDocDisplayMetrics$default(CBoxUtils.INSTANCE, null, 1, null)) : cBoxDocument);
    }
}
