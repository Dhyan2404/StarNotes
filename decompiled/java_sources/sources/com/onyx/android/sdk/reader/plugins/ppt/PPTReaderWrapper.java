package com.onyx.android.sdk.reader.plugins.ppt;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CharKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.PointFKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.lite.extension.RectFKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.onyx.android.sdk.reader.api.PageRange;
import com.onyx.android.sdk.reader.api.ReaderDocumentOptions;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContent;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContentEntry;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.api.ReaderSearchOptions;
import com.onyx.android.sdk.reader.api.ReaderSelectTextArgs;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.reader.api.ReaderSentence;
import com.onyx.android.sdk.reader.api.ReaderTextSplitter;
import com.onyx.android.sdk.reader.common.ReaderCharInfo;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.onyx.android.sdk.reader.impl.ReaderSelectionImpl;
import com.onyx.android.sdk.reader.plugins.internal.PluginPositionUtils;
import com.onyx.android.sdk.reader.plugins.ppt.PPTReaderWrapper;
import com.onyx.android.sdk.reader.utils.ReaderSelectionUtils;
import com.onyx.common.util.ContextUtils;
import com.onyx.poi.POIFactory;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import com.trans.android.AndroidGraphics2D;
import com.trans.android.font.DefaultFontProvider;
import com.trans.android.font.FontProvider;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.logging.NeoLogger;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.openxml4j.exceptions.NotOfficeXmlFileException;
import org.apache.poi.openxml4j.exceptions.OLE2NotOfficeXmlFileException;
import org.apache.poi.poifs.filesystem.NotOLE2FileException;
import org.apache.poi.poifs.filesystem.OfficeXmlFileException;
import org.apache.poi.sl.MetaData;
import org.apache.poi.sl.PPTFactory;
import org.apache.poi.sl.draw.AndroidImageRenderer;
import org.apache.poi.sl.draw.Drawable;
import org.apache.poi.text.Line;
import org.apache.poi.text.OneWord;
import org.apache.poi.text.Piece;
import org.apache.poi.text.SearchOptions;
import org.apache.poi.text.Selection;
import org.apache.poi.text.TextSheet;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0084\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 \u0086\u00012\u00020\u0001:\u0002\u0086\u0001B\t¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0002J\u0014\u0010\b\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\tH\u0002J8\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH\u0002JJ\u0010!\u001a\u00020\u00052\n\u0010\u001b\u001a\u00060\u0019j\u0002`\u001a2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH\u0002J8\u0010&\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020\tH\u0002JJ\u0010\u0004\u001a\u00020\u00052\n\u0010\u001b\u001a\u00060\u0019j\u0002`\u001a2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020\tH\u0002J(\u0010)\u001a\u00020(2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010'\u001a\u00020\tH\u0002J(\u0010*\u001a\u00020(2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010'\u001a\u00020\tH\u0002J\u001a\u0010-\u001a\u0004\u0018\u00010\u00112\u0006\u0010,\u001a\u00020+2\u0006\u0010\u0010\u001a\u00020\tH\u0002J,\u00103\u001a\u00020\u00052\f\u00100\u001a\b\u0012\u0004\u0012\u00020/0.2\f\u00102\u001a\b\u0012\u0004\u0012\u0002010\u001c2\u0006\u0010\u0010\u001a\u00020\tH\u0002J\u0018\u00105\u001a\u0002042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010,\u001a\u00020+H\u0002J\f\u00107\u001a\u000206*\u00020\u001dH\u0002J\u0018\u00108\u001a\b\u0012\u0004\u0012\u0002060.*\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\b\u0010:\u001a\u000209H\u0002J\b\u0010;\u001a\u000209H\u0002J\u0010\u0010=\u001a\u0002092\u0006\u0010<\u001a\u000206H\u0002J\u0010\u0010>\u001a\u0002092\u0006\u0010<\u001a\u000206H\u0002J\u0010\u0010A\u001a\u00020@2\u0006\u0010?\u001a\u00020+H\u0002J\u0016\u0010E\u001a\u00020\u00072\u0006\u0010B\u001a\u00020(2\u0006\u0010D\u001a\u00020CJ\b\u0010G\u001a\u0004\u0018\u00010FJ\b\u0010I\u001a\u0004\u0018\u00010HJ\u0006\u0010J\u001a\u000204J\u0006\u0010K\u001a\u00020\u0005J\u000e\u0010L\u001a\u00020(2\u0006\u0010\u0010\u001a\u00020\tJ\u0014\u0010M\u001a\b\u0012\u0004\u0012\u00020(0\u001c2\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010P\u001a\u0002042\u0006\u0010O\u001a\u00020NJ\u000e\u0010R\u001a\u00020Q2\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010T\u001a\u00020Q2\u0006\u0010S\u001a\u00020(J\u000e\u0010U\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010X\u001a\u0002042\u0006\u0010W\u001a\u00020VJ\u0006\u0010Y\u001a\u00020\tJ\u0014\u0010Z\u001a\b\u0012\u0004\u0012\u0002060\u001c2\u0006\u0010\n\u001a\u00020\tJ\u0014\u0010\\\u001a\b\u0012\u0004\u0012\u00020[0.2\u0006\u0010\n\u001a\u00020\tJ\u0014\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00170\u001c2\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010^\u001a\u00020/2\u0006\u0010\r\u001a\u00020\tJ \u0010a\u001a\u0004\u0018\u00010\u00172\u0006\u0010\n\u001a\u00020\t2\u0006\u0010_\u001a\u00020\t2\u0006\u0010`\u001a\u00020\tJ\u0018\u0010d\u001a\u0004\u0018\u00010c2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010b\u001a\u00020\tJ(\u0010g\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010,\u001a\u00020+2\u0006\u0010<\u001a\u0002062\u0006\u0010f\u001a\u00020eJ(\u0010a\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010_\u001a\u00020+2\u0006\u0010`\u001a\u00020+2\u0006\u0010<\u001a\u000206J\u0016\u0010j\u001a\u00020\u00172\u0006\u0010\n\u001a\u00020\t2\u0006\u0010i\u001a\u00020hJ$\u0010m\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010l\u001a\u00020k2\f\u00100\u001a\b\u0012\u0004\u0012\u00020/0.J\u000e\u0010o\u001a\u00020\t2\u0006\u0010n\u001a\u00020(J\u000e\u0010q\u001a\u00020(2\u0006\u0010p\u001a\u00020\tR\u0018\u0010u\u001a\u0004\u0018\u00010r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR\u0018\u0010x\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010wR\u0017\u0010}\u001a\u00020y8\u0006¢\u0006\f\n\u0004\b!\u0010z\u001a\u0004\b{\u0010|R\u0019\u0010\u0081\u0001\u001a\u0002068\u0006¢\u0006\r\n\u0004\b&\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001R\u0018\u0010\u0083\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0004\u0010\u0082\u0001¨\u0006\u0087\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "", "r", "", "i", "", "page", "Lorg/apache/poi/text/TextSheet;", GoogleApiAvailabilityLight.f29016b, "pageIndex", "Lcom/onyx/android/sdk/reader/api/PageRange;", C6998g.f39679a, "pageNum", "Lorg/apache/poi/text/Piece;", "piece", "startLineIndex", "endLineIndex", "startWordIndex", "endWordIndex", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "b", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "builder", "", "Ljava/awt/geom/Rectangle2D;", "rectangles", "startPieceIndex", "endPieceIndex", "c", "lineIndex", "wordIndex", "leftOffset", "rightOffset", "d", "length", "", C4921e.f26537n, "l", "Landroid/graphics/PointF;", "point", C6999h.f39688c, "", "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;", "list", "Lorg/apache/poi/text/Selection;", "selections", C6997f.f39671c, "", "p", "Landroid/graphics/RectF;", "t", "u", "", "s", "q", "displayRect", "m", "j", "pointF", "Ljava/awt/geom/Point2D;", "v", "path", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "documentOptions", "openDocument", "Lorg/apache/poi/sl/MetaData;", "metadata", "Ljava/io/InputStream;", "thumbnail", "closeDocument", "destroy", "getPageText", "getPageParagraphList", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "readTableOfContent", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "positionByPageIndex", "positionString", "positionByPositionString", "hasText", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", "drawArgs", "draw", "pageCount", "getAllCharRectList", "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;", "getPageTextCharInfoList", "allText", "createReaderSelectionImpl", gon.f71290o0, "end", "selectTextOnScreen", "startPos", "Lcom/onyx/android/sdk/reader/api/ReaderSentence;", "getSentence", "Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;", "splitter", "selectWordOnScreen", "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;", "args", "selectOnDocument", "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;", "options", "search", "position", "getPositionInt", "positionInt", "getPosition", "Lorg/apache/poi/sl/PPTFactory;", "a", "Lorg/apache/poi/sl/PPTFactory;", "pptFactory", "Lcom/trans/android/font/FontProvider;", "Lcom/trans/android/font/FontProvider;", "fontProvider", "Ljava/awt/Dimension;", "Ljava/awt/Dimension;", "getPageSize", "()Ljava/awt/Dimension;", "pageSize", "Landroid/graphics/RectF;", "getViewport", "()Landroid/graphics/RectF;", "viewport", Constants.STRING_SIG, "bookName", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPPTReaderWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PPTReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,595:1\n1549#2:596\n1620#2,3:597\n1360#2:600\n1446#2,2:601\n1360#2:603\n1446#2,2:604\n1549#2:606\n1620#2,3:607\n1448#2,3:610\n1448#2,3:613\n1360#2:616\n1446#2,2:617\n1360#2:619\n1446#2,2:620\n1549#2:622\n1620#2,3:623\n1448#2,3:626\n1448#2,3:629\n1855#2,2:632\n1549#2:634\n1620#2,3:635\n*S KotlinDebug\n*F\n+ 1 PPTReaderWrapper.kt\ncom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper\n*L\n156#1:596\n156#1:597,3\n245#1:600\n245#1:601,2\n246#1:603\n246#1:604,2\n247#1:606\n247#1:607,3\n246#1:610,3\n245#1:613,3\n258#1:616\n258#1:617,2\n259#1:619\n259#1:620,2\n260#1:622\n260#1:623,3\n259#1:626,3\n258#1:629,3\n274#1:632,2\n549#1:634\n549#1:635,3\n*E\n"})
/* loaded from: classes8.dex */
public final class PPTReaderWrapper {
    public static final long ERROR_EMPTY_FILE = 15;
    public static final long ERROR_NOT_OFFICE_XML_FILE = 14;
    public static final long ERROR_NOT_OLE2_FILE = 13;
    public static final long ERROR_OFFICE_XML_FILE = 12;
    public static final long ERROR_OLE2_FILE = 11;
    public static final int PADDING_SPACE = 10;

    /* renamed from: g */
    public static final int f45055g = 50;

    /* renamed from: h */
    public static final int f45056h = 200;

    /* renamed from: i */
    public static long f45057i;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public PPTFactory pptFactory;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public FontProvider fontProvider;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Dimension pageSize = new Dimension();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final RectF viewport = new RectF();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String bookName = "";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: f */
    @NotNull
    public static final Class<?> f45054f = PPTReaderWrapper.class;

    /* renamed from: j */
    public static long f45058j = 1;

    /* renamed from: k */
    public static long f45059k = 2;

    /* renamed from: l */
    public static long f45060l = 3;

    /* renamed from: m */
    public static long f45061m = 4;

    /* renamed from: n */
    public static long f45062n = 5;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0016\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0006\"\u0004\b\u000f\u0010\bR\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\bR\u001a\u0010\u0017\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0006\"\u0004\b\u0019\u0010\bR\u000e\u0010\u001a\u001a\u00020\u001bX\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\bR\u000e\u0010\u001f\u001a\u00020\u001bX\u0086T¢\u0006\u0002\n\u0000R\u0015\u0010 \u001a\u0006\u0012\u0002\b\u00030!¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u000e\u0010$\u001a\u00020\u001bX\u0082T¢\u0006\u0002\n\u0000¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper$Companion;", "", "()V", "ERROR_CONFIG_NOT_EXIST", "", "getERROR_CONFIG_NOT_EXIST", "()J", "setERROR_CONFIG_NOT_EXIST", "(J)V", "ERROR_CONTENT_NOT_EXIST", "getERROR_CONTENT_NOT_EXIST", "setERROR_CONTENT_NOT_EXIST", "ERROR_EMPTY_FILE", "ERROR_FILE_INVALID", "getERROR_FILE_INVALID", "setERROR_FILE_INVALID", "ERROR_NOT_OFFICE_XML_FILE", "ERROR_NOT_OLE2_FILE", "ERROR_OFFICE_XML_FILE", "ERROR_OLE2_FILE", "ERROR_PASSWORD_INVALID", "getERROR_PASSWORD_INVALID", "setERROR_PASSWORD_INVALID", "ERROR_UNKNOWN", "getERROR_UNKNOWN", "setERROR_UNKNOWN", "MAX_SENTENCE_LENGTH", "", "NO_ERROR", "getNO_ERROR", "setNO_ERROR", "PADDING_SPACE", "TAG", "Ljava/lang/Class;", "getTAG", "()Ljava/lang/Class;", "WORD_EDGE_OFFSET", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long getERROR_CONFIG_NOT_EXIST() {
            return PPTReaderWrapper.f45060l;
        }

        public final long getERROR_CONTENT_NOT_EXIST() {
            return PPTReaderWrapper.f45061m;
        }

        public final long getERROR_FILE_INVALID() {
            return PPTReaderWrapper.f45058j;
        }

        public final long getERROR_PASSWORD_INVALID() {
            return PPTReaderWrapper.f45059k;
        }

        public final long getERROR_UNKNOWN() {
            return PPTReaderWrapper.f45062n;
        }

        public final long getNO_ERROR() {
            return PPTReaderWrapper.f45057i;
        }

        @NotNull
        public final Class<?> getTAG() {
            return PPTReaderWrapper.f45054f;
        }

        public final void setERROR_CONFIG_NOT_EXIST(long j) {
            PPTReaderWrapper.f45060l = j;
        }

        public final void setERROR_CONTENT_NOT_EXIST(long j) {
            PPTReaderWrapper.f45061m = j;
        }

        public final void setERROR_FILE_INVALID(long j) {
            PPTReaderWrapper.f45058j = j;
        }

        public final void setERROR_PASSWORD_INVALID(long j) {
            PPTReaderWrapper.f45059k = j;
        }

        public final void setERROR_UNKNOWN(long j) {
            PPTReaderWrapper.f45062n = j;
        }

        public final void setNO_ERROR(long j) {
            PPTReaderWrapper.f45057i = j;
        }

        public Companion() {
        }
    }

    public PPTReaderWrapper() {
        Context appContext = ResManager.INSTANCE.getAppContext();
        ContextUtils.initContext(appContext);
        POIFactory.init(appContext);
        this.fontProvider = new DefaultFontProvider();
    }

    /* renamed from: o */
    public static final Graphics2D m34788o(PPTReaderWrapper this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.RGB_565);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        AndroidGraphics2D androidGraphics2D = new AndroidGraphics2D(createBitmap);
        androidGraphics2D.setRenderingHint(Drawable.IMAGE_RENDERER, new AndroidImageRenderer());
        androidGraphics2D.setRenderingHint(Drawable.DISABLE_DRAW, Boolean.TRUE);
        androidGraphics2D.setFontProvider(this$0.fontProvider);
        androidGraphics2D.setRecycleBitmap(true);
        return androidGraphics2D;
    }

    @NotNull
    public final List<ReaderSelection> allText(int page) {
        List<ReaderSelection> emptyList;
        TextSheet m34801n = m34801n(page);
        if (m34801n.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Collection<Piece> pieces = m34801n.getPieces();
        StringBuilder sb = new StringBuilder();
        Intrinsics.checkNotNull(pieces);
        for (Piece piece : pieces) {
            ReaderSelectionImpl createReaderSelectionImpl = createReaderSelectionImpl(page);
            Iterator<Line> it2 = piece.getLines().iterator();
            while (it2.hasNext()) {
                Rectangle2D rectangle = it2.next().getRectangle();
                Intrinsics.checkNotNullExpressionValue(rectangle, "getRectangle(...)");
                arrayList2.add(rectangle);
            }
            String text = piece.getText();
            if (text == null) {
                text = "";
            }
            createReaderSelectionImpl.setText(text);
            createReaderSelectionImpl.getRectList().addAll(m34807u(arrayList2));
            createReaderSelectionImpl.setSelectionRange(PageRange.INSTANCE.createSelectionRange(piece.getStartPos(), piece.getEndPos()));
            arrayList.add(createReaderSelectionImpl);
            arrayList2.clear();
            sb.setLength(0);
        }
        return arrayList;
    }

    /* renamed from: b */
    public final ReaderSelection m34789b(int pageNum, Piece piece, int startLineIndex, int endLineIndex, int startWordIndex, int endWordIndex) {
        ReaderSelectionImpl createReaderSelectionImpl = createReaderSelectionImpl(pageNum);
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        m34790c(sb, arrayList, piece, startLineIndex, endLineIndex, startWordIndex, endWordIndex);
        int position = piece.getPosition(startLineIndex, startWordIndex);
        int position2 = piece.getPosition(endLineIndex, endWordIndex);
        if (position > position2) {
            position2 = position;
            position = position2;
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        createReaderSelectionImpl.setText(sb2);
        createReaderSelectionImpl.setRectList(m34807u(arrayList));
        createReaderSelectionImpl.setSelectionRange(PageRange.INSTANCE.createSelectionRange(position, position2));
        return createReaderSelectionImpl;
    }

    /* renamed from: c */
    public final void m34790c(StringBuilder builder, List<? extends Rectangle2D> rectangles, Piece piece, int startPieceIndex, int endPieceIndex, int startWordIndex, int endWordIndex) {
        piece.combineSelectText(builder, rectangles, startPieceIndex, endPieceIndex, startWordIndex, endWordIndex);
    }

    public final boolean closeDocument() {
        PPTFactory pPTFactory = this.pptFactory;
        if (pPTFactory == null) {
            return false;
        }
        pPTFactory.close();
        this.pptFactory = null;
        return true;
    }

    @NotNull
    public final ReaderSelectionImpl createReaderSelectionImpl(int pageIndex) {
        ReaderSelectionImpl readerSelectionImpl = new ReaderSelectionImpl();
        readerSelectionImpl.setPageIndex(pageIndex);
        readerSelectionImpl.setPageRange(m34794g(pageIndex));
        return readerSelectionImpl;
    }

    /* renamed from: d */
    public final ReaderSelection m34791d(int pageNum, Piece piece, int lineIndex, int wordIndex, int leftOffset, int rightOffset) {
        ReaderSelectionImpl createReaderSelectionImpl = createReaderSelectionImpl(pageNum);
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        m34792e(sb, arrayList, piece, lineIndex, wordIndex, leftOffset, rightOffset);
        int position = piece.getPosition(lineIndex, wordIndex);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        createReaderSelectionImpl.setText(sb2);
        createReaderSelectionImpl.setRectList(m34807u(arrayList));
        createReaderSelectionImpl.setSelectionRange(PageRange.INSTANCE.createSelectionRange(position - leftOffset, position + rightOffset));
        return createReaderSelectionImpl;
    }

    public final void destroy() {
        FontProvider fontProvider = this.fontProvider;
        if (fontProvider != null) {
            fontProvider.release();
        }
    }

    public final boolean draw(@NotNull DrawArgs drawArgs) {
        Intrinsics.checkNotNullParameter(drawArgs, "drawArgs");
        PPTFactory pPTFactory = this.pptFactory;
        if (pPTFactory == null) {
            return false;
        }
        float scale = drawArgs.getScale();
        RectF displayRect = drawArgs.getDisplayRect();
        AndroidGraphics2D androidGraphics2D = new AndroidGraphics2D(drawArgs.getBitmap());
        float rotation = drawArgs.getRotation();
        androidGraphics2D.setRenderingHint(Drawable.IMAGE_RENDERER, new AndroidImageRenderer());
        androidGraphics2D.setAntiAlias(drawArgs.getAntialias());
        androidGraphics2D.setFontProvider(this.fontProvider);
        if (rotation == 0.0f) {
            double d = scale;
            androidGraphics2D.scale(d, d);
            androidGraphics2D.translate(displayRect.left / scale, displayRect.top / scale);
        } else {
            float[] matrixValue = MatrixKt.getMatrixValue(BitmapUtils.INSTANCE.calculateRotationMatrix(RectKt.toSizeF(RectFKt.rotatedSize$default(drawArgs.getPageRect(), -rotation, 0.0f, 0.0f, 6, null)), displayRect, rotation));
            androidGraphics2D.transform(new AffineTransform(matrixValue[0], matrixValue[3], matrixValue[1], matrixValue[4], matrixValue[2], matrixValue[5]));
        }
        pPTFactory.drawSlide(androidGraphics2D, drawArgs.getPagePosition().getPageIndex());
        return true;
    }

    /* renamed from: e */
    public final void m34792e(StringBuilder builder, List<? extends Rectangle2D> rectangles, Piece piece, int lineIndex, int wordIndex, int leftOffset, int rightOffset) {
        if (leftOffset > 0) {
            piece.combineLeftText(builder, rectangles, lineIndex, wordIndex, leftOffset);
        }
        piece.combineRightText(builder, rectangles, lineIndex, wordIndex, rightOffset + 1);
    }

    /* renamed from: f */
    public final void m34793f(List<ReaderSelectionImpl> list, List<? extends Selection> selections, int pageNum) {
        for (Selection selection : selections) {
            ReaderSelectionImpl createReaderSelectionImpl = createReaderSelectionImpl(pageNum);
            List<Rectangle2D> displayRectangle = selection.getDisplayRectangle();
            Intrinsics.checkNotNull(displayRectangle);
            createReaderSelectionImpl.setRectList(m34807u(displayRectangle));
            String leftText = selection.getLeftText();
            Intrinsics.checkNotNullExpressionValue(leftText, "getLeftText(...)");
            createReaderSelectionImpl.setLeftText(leftText);
            String text = selection.getText();
            Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
            createReaderSelectionImpl.setText(text);
            String rightText = selection.getRightText();
            Intrinsics.checkNotNullExpressionValue(rightText, "getRightText(...)");
            createReaderSelectionImpl.setRightText(rightText);
            createReaderSelectionImpl.setSelectionRange(PageRange.INSTANCE.createSelectionRange(selection.getStartPosition(), selection.getEndPosition()));
            list.add(createReaderSelectionImpl);
        }
    }

    /* renamed from: g */
    public final PageRange m34794g(int pageIndex) {
        ReaderPosition positionByPageIndex = positionByPageIndex(pageIndex);
        return new PageRange(positionByPageIndex, positionByPageIndex);
    }

    @NotNull
    public final List<RectF> getAllCharRectList(int page) {
        int collectionSizeOrDefault;
        List<RectF> emptyList;
        TextSheet m34801n = m34801n(page);
        if (m34801n.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        Collection<Piece> pieces = m34801n.getPieces();
        Intrinsics.checkNotNullExpressionValue(pieces, "getPieces(...)");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = pieces.iterator();
        while (it2.hasNext()) {
            List<Line> lines = ((Piece) it2.next()).getLines();
            Intrinsics.checkNotNullExpressionValue(lines, "getLines(...)");
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it3 = lines.iterator();
            while (it3.hasNext()) {
                List<OneWord> words = ((Line) it3.next()).getWords();
                Intrinsics.checkNotNullExpressionValue(words, "getWords(...)");
                List<OneWord> list = words;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
                Iterator<T> it4 = list.iterator();
                while (it4.hasNext()) {
                    arrayList3.add(((OneWord) it4.next()).getRectangle());
                }
                CollectionsKt__MutableCollectionsKt.addAll(arrayList2, arrayList3);
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList2);
        }
        return m34807u(arrayList);
    }

    @NotNull
    public final List<String> getPageParagraphList(int pageNum) {
        int collectionSizeOrDefault;
        List<String> list;
        List<String> emptyList;
        TextSheet m34801n = m34801n(pageNum);
        if (m34801n.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        Collection<Piece> pieces = m34801n.getPieces();
        Intrinsics.checkNotNullExpressionValue(pieces, "getPieces(...)");
        Collection<Piece> collection = pieces;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Piece) it2.next()).getText());
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    @NotNull
    public final Dimension getPageSize() {
        return this.pageSize;
    }

    @NotNull
    public final String getPageText(int pageNum) {
        TextSheet m34801n = m34801n(pageNum);
        if (m34801n.isEmpty()) {
            return "";
        }
        String text = m34801n.getText();
        Intrinsics.checkNotNull(text);
        return text;
    }

    @NotNull
    public final List<ReaderCharInfo> getPageTextCharInfoList(int page) {
        List<ReaderCharInfo> mutableList;
        int collectionSizeOrDefault;
        TextSheet m34801n = m34801n(page);
        if (m34801n.isEmpty()) {
            return new ArrayList();
        }
        Collection<Piece> pieces = m34801n.getPieces();
        Intrinsics.checkNotNullExpressionValue(pieces, "getPieces(...)");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = pieces.iterator();
        while (it2.hasNext()) {
            List<Line> lines = ((Piece) it2.next()).getLines();
            Intrinsics.checkNotNullExpressionValue(lines, "getLines(...)");
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it3 = lines.iterator();
            while (it3.hasNext()) {
                List<OneWord> words = ((Line) it3.next()).getWords();
                Intrinsics.checkNotNullExpressionValue(words, "getWords(...)");
                List<OneWord> list = words;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
                for (OneWord oneWord : list) {
                    String text = oneWord.getText();
                    Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
                    Rectangle2D rectangle = oneWord.getRectangle();
                    Intrinsics.checkNotNullExpressionValue(rectangle, "getRectangle(...)");
                    arrayList3.add(new ReaderCharInfo(text, m34806t(rectangle)));
                }
                CollectionsKt__MutableCollectionsKt.addAll(arrayList2, arrayList3);
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList2);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    @NotNull
    public final String getPosition(int positionInt) {
        return PluginPositionUtils.INSTANCE.getDefaultPosition(positionInt);
    }

    public final int getPositionInt(@NotNull String position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return PluginPositionUtils.INSTANCE.getDefaultPositionInt(position);
    }

    @Nullable
    public final ReaderSentence getSentence(int page, int startPos) {
        Piece pieceByPos;
        Line lineByPos;
        TextSheet m34801n = m34801n(page);
        if (m34801n.isEmpty() || (pieceByPos = m34801n.getPieceByPos(startPos)) == null || (lineByPos = pieceByPos.getLineByPos(startPos)) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        new ArrayList();
        StringBuilder sb = new StringBuilder();
        List<Line> lines = pieceByPos.getLines();
        int size = lines.size();
        OneWord oneWord = null;
        boolean z = false;
        int i = 0;
        for (int index = lineByPos.getIndex(); index < size && !z; index++) {
            Line line = lines.get(index);
            Intrinsics.checkNotNullExpressionValue(line, "get(...)");
            Line line2 = line;
            Iterator<OneWord> it2 = line2.getWords().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                OneWord next = it2.next();
                if (next.getPos() >= startPos) {
                    char[] charArray = next.toCharArray();
                    char c = charArray[0];
                    char c2 = charArray[charArray.length - 1];
                    sb.append(next.getText());
                    Rectangle2D rectangle = next.getRectangle();
                    Intrinsics.checkNotNullExpressionValue(rectangle, "getRectangle(...)");
                    arrayList.add(rectangle);
                    i++;
                    if (i >= 200) {
                        oneWord = next;
                        z = true;
                        break;
                    }
                    oneWord = next;
                }
            }
            if (line2.isParagraphEnd()) {
                break;
            }
        }
        if (arrayList.isEmpty() || oneWord == null) {
            return null;
        }
        ReaderSelectionImpl createReaderSelectionImpl = createReaderSelectionImpl(page);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        createReaderSelectionImpl.setText(sb2);
        createReaderSelectionImpl.setRectList(m34807u(arrayList));
        createReaderSelectionImpl.setSelectionRange(PageRange.INSTANCE.createSelectionRange(startPos, oneWord.getPos() + 1));
        return new ReaderSentence(createReaderSelectionImpl, positionByPageIndex(oneWord.getPos() + 1), pieceByPos.getIndex() == m34801n.size() + (-1) && oneWord.getPos() == pieceByPos.getEndPos() + (-1), page >= pageCount() + (-1));
    }

    @NotNull
    public final RectF getViewport() {
        return this.viewport;
    }

    /* renamed from: h */
    public final Piece m34795h(PointF point, int pageNum) {
        for (Piece piece : m34801n(pageNum).getPieces()) {
            Intrinsics.checkNotNull(piece);
            if (m34802p(piece, point)) {
                return piece;
            }
        }
        return null;
    }

    public final boolean hasText(int pageNum) {
        PPTFactory pPTFactory;
        if (MathUtils.INSTANCE.withinRange(pageNum, 0, pageCount()) && (pPTFactory = this.pptFactory) != null) {
            return pPTFactory.hasText(pageNum);
        }
        return false;
    }

    /* renamed from: i */
    public final long m34796i(Exception e) {
        if (e instanceof OLE2NotOfficeXmlFileException) {
            return 11L;
        }
        if (e instanceof OfficeXmlFileException) {
            return 12L;
        }
        if (e instanceof NotOLE2FileException) {
            return 13L;
        }
        if (e instanceof NotOfficeXmlFileException) {
            return 14L;
        }
        return f45062n;
    }

    /* renamed from: j */
    public final float m34797j(RectF displayRect) {
        return 1 / m34800m(displayRect);
    }

    /* renamed from: k */
    public final String m34798k(Piece piece, int lineIndex, int wordIndex, int length) {
        StringBuilder sb = new StringBuilder();
        piece.combineLeftText(sb, null, lineIndex, wordIndex, length);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    /* renamed from: l */
    public final String m34799l(Piece piece, int lineIndex, int wordIndex, int length) {
        StringBuilder sb = new StringBuilder();
        piece.combineRightText(sb, null, lineIndex, wordIndex, length);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    /* renamed from: m */
    public final float m34800m(RectF displayRect) {
        return Math.min(displayRect.width() / this.pageSize.width, displayRect.height() / this.pageSize.height);
    }

    @Nullable
    public final MetaData metadata() {
        PPTFactory pPTFactory = this.pptFactory;
        if (pPTFactory != null) {
            return pPTFactory.getMetaData();
        }
        return null;
    }

    /* renamed from: n */
    public final TextSheet m34801n(int page) {
        PPTFactory pPTFactory = this.pptFactory;
        if (pPTFactory == null) {
            return new TextSheet();
        }
        pPTFactory.handleText(new PPTFactory.Creator() { // from class: com.sunia.HTREnginev2.dlk
            @Override // org.apache.poi.sl.PPTFactory.Creator
            public final Graphics2D create() {
                Graphics2D m34788o;
                m34788o = PPTReaderWrapper.m34788o(PPTReaderWrapper.this);
                return m34788o;
            }
        }, page);
        TextSheet textSheet = pPTFactory.getTextHandler().getTextSheet(page);
        Intrinsics.checkNotNullExpressionValue(textSheet, "getTextSheet(...)");
        return textSheet;
    }

    public final long openDocument(@NotNull String path, @NotNull ReaderDocumentOptions documentOptions) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(documentOptions, "documentOptions");
        this.bookName = FileUtils.INSTANCE.getFileBaseName(path);
        try {
            PPTFactory openPPT = POIFactory.openPPT(path, documentOptions.getDocumentPassword());
            this.pptFactory = openPPT;
            Dimension pageSize = openPPT.getPageSize();
            this.pageSize.setSize(pageSize.width, pageSize.height);
            if (pageCount() <= 0) {
                return 15L;
            }
            return f45057i;
        } catch (EncryptedDocumentException e) {
            m34804r(e);
            return f45059k;
        } catch (Exception e2) {
            m34804r(e2);
            return m34796i(e2);
        }
    }

    /* renamed from: p */
    public final boolean m34802p(Piece piece, PointF point) {
        Rectangle2D rectangle = piece.getRectangle();
        Intrinsics.checkNotNull(rectangle);
        RectF m34806t = m34806t(rectangle);
        RectKt.expand(m34806t, 10.0f);
        return m34806t.contains(point.x, point.y);
    }

    public final int pageCount() {
        PPTFactory pPTFactory = this.pptFactory;
        if (pPTFactory != null) {
            return pPTFactory.getSlideSize();
        }
        return 0;
    }

    @NotNull
    public final ReaderPosition positionByPageIndex(int pageIndex) {
        return new ReaderPositionImpl().fromPageIndex(pageIndex).fromInteger(pageIndex).fromString(String.valueOf(pageIndex));
    }

    @NotNull
    public final ReaderPosition positionByPositionString(@NotNull String positionString) {
        Intrinsics.checkNotNullParameter(positionString, "positionString");
        ReaderPosition fromString = new ReaderPositionImpl().fromString(positionString);
        MathUtils mathUtils = MathUtils.INSTANCE;
        return fromString.fromPageIndex(mathUtils.parseInt(positionString)).fromInteger(mathUtils.parseInt(positionString));
    }

    /* renamed from: q */
    public final float m34803q() {
        return 1 / m34805s();
    }

    /* renamed from: r */
    public final void m34804r(Exception e) {
        Debug.INSTANCE.m32044e(PPTReaderWrapper.class, NeoLogger.getStackTrace(e), new Object[0]);
    }

    public final boolean readTableOfContent(@NotNull ReaderDocumentTableOfContent toc) {
        Intrinsics.checkNotNullParameter(toc, "toc");
        PPTFactory pPTFactory = this.pptFactory;
        if (pPTFactory == null) {
            return false;
        }
        int pageCount = pageCount();
        for (int i = 0; i < pageCount; i++) {
            List<ReaderDocumentTableOfContentEntry> children = toc.getRootEntry().getChildren();
            String slideTitle = pPTFactory.getSlideTitle(i);
            if (slideTitle == null) {
                slideTitle = "";
            }
            children.add(new ReaderDocumentTableOfContentEntry(slideTitle, i, positionByPageIndex(i), null, false, false, false, 0L, false, null, 1016, null));
        }
        return true;
    }

    /* renamed from: s */
    public final float m34805s() {
        return Math.min(this.viewport.width() / this.pageSize.width, this.viewport.height() / this.pageSize.height);
    }

    public final boolean search(int pageNum, @NotNull ReaderSearchOptions options, @NotNull List<ReaderSelectionImpl> list) {
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(list, "list");
        TextSheet m34801n = m34801n(pageNum);
        if (m34801n.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        SearchOptions searchOptions = new SearchOptions(options.getF52444a());
        searchOptions.setContentLength(options.contextLength());
        boolean search = m34801n.search(searchOptions, arrayList);
        m34793f(list, arrayList, pageNum);
        return search;
    }

    @NotNull
    public final ReaderSelection selectOnDocument(int page, @NotNull ReaderSelectTextArgs args) {
        List<RectF> mutableList;
        Intrinsics.checkNotNullParameter(args, "args");
        args.setAllCharRectList(getAllCharRectList(page));
        args.setScreenPage(false);
        ReaderSelectionImpl createReaderSelectionImpl = createReaderSelectionImpl(page);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) ReaderSelectionUtils.INSTANCE.selectCharRectList(args));
        createReaderSelectionImpl.setRectList(mutableList);
        return createReaderSelectionImpl;
    }

    @Nullable
    public final ReaderSelection selectTextOnScreen(int page, int start, int end) {
        TextSheet m34801n = m34801n(page);
        if (m34801n.isEmpty()) {
            return null;
        }
        if (start > end) {
            end = start;
            start = end;
        }
        ReaderSelectionImpl createReaderSelectionImpl = createReaderSelectionImpl(page);
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        m34801n.combineSelection(start, end, sb, arrayList);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        createReaderSelectionImpl.setText(sb2);
        createReaderSelectionImpl.setRectList(m34807u(arrayList));
        createReaderSelectionImpl.setSelectionRange(PageRange.INSTANCE.createSelectionRange(start, end));
        return createReaderSelectionImpl;
    }

    @Nullable
    public final ReaderSelection selectWordOnScreen(int pageNum, @NotNull PointF point, @NotNull RectF displayRect, @NotNull ReaderTextSplitter splitter) {
        Point2D m34808v;
        int lineIndexExact;
        Line line;
        int wordIndexExact;
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(point, "point");
        Intrinsics.checkNotNullParameter(displayRect, "displayRect");
        Intrinsics.checkNotNullParameter(splitter, "splitter");
        point.offset(-displayRect.left, -displayRect.top);
        PointFKt.scale(point, m34797j(displayRect));
        Piece m34795h = m34795h(point, pageNum);
        if (m34795h == null || (lineIndexExact = m34795h.getLineIndexExact((m34808v = m34808v(point)), 10)) < 0 || (wordIndexExact = (line = m34795h.getLine(lineIndexExact)).getWordIndexExact(m34808v)) < 0) {
            return null;
        }
        char charAt = line.getWord(wordIndexExact).getText().charAt(0);
        if (CharKt.isChinese(charAt)) {
            String m34798k = m34798k(m34795h, lineIndexExact, wordIndexExact, 50);
            String m34799l = m34799l(m34795h, lineIndexExact, wordIndexExact, 50);
            String valueOf = String.valueOf(charAt);
            int textLeftBoundary = splitter.getTextLeftBoundary(valueOf, m34798k, m34799l);
            i2 = splitter.getTextRightBoundary(valueOf, m34798k, m34799l);
            i = textLeftBoundary;
        } else {
            i = 0;
            i2 = 0;
        }
        return m34791d(pageNum, m34795h, lineIndexExact, wordIndexExact, i, i2);
    }

    /* renamed from: t */
    public final RectF m34806t(Rectangle2D rectangle2D) {
        return new RectF((float) rectangle2D.getX(), (float) rectangle2D.getY(), (float) rectangle2D.getMaxX(), (float) rectangle2D.getMaxY());
    }

    @Nullable
    public final InputStream thumbnail() {
        PPTFactory pPTFactory = this.pptFactory;
        if (pPTFactory != null) {
            return pPTFactory.getThumbnail();
        }
        return null;
    }

    /* renamed from: u */
    public final List<RectF> m34807u(List<? extends Rectangle2D> list) {
        int collectionSizeOrDefault;
        List<RectF> mutableList;
        List<? extends Rectangle2D> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(m34806t((Rectangle2D) it2.next()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    /* renamed from: v */
    public final Point2D m34808v(PointF pointF) {
        return new Point2D.Double(pointF.x, pointF.y);
    }

    @Nullable
    public final ReaderSelection selectTextOnScreen(int pageNum, @NotNull PointF start, @NotNull PointF end, @NotNull RectF displayRect) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(displayRect, "displayRect");
        start.offset(-displayRect.left, -displayRect.top);
        end.offset(-displayRect.left, -displayRect.top);
        float m34797j = m34797j(displayRect);
        PointFKt.scale(start, m34797j);
        PointFKt.scale(end, m34797j);
        Piece m34795h = m34795h(start, pageNum);
        if (m34795h == null) {
            return null;
        }
        Point2D m34808v = m34808v(start);
        Point2D m34808v2 = m34808v(end);
        int lineIndex = m34795h.getLineIndex(m34808v);
        int lineIndex2 = m34795h.getLineIndex(m34808v2);
        if (lineIndex < 0 || lineIndex2 < 0) {
            return null;
        }
        Line line = m34795h.getLine(lineIndex);
        Line line2 = m34795h.getLine(lineIndex2);
        int wordIndex = line.getWordIndex(m34808v);
        int wordIndex2 = line2.getWordIndex(m34808v2);
        if (wordIndex < 0 || wordIndex2 < 0) {
            return null;
        }
        return m34789b(pageNum, m34795h, lineIndex, lineIndex2, wordIndex, wordIndex2);
    }
}
