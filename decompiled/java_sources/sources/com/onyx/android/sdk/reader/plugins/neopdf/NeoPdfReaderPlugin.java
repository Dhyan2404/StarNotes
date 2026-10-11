package com.onyx.android.sdk.reader.plugins.neopdf;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.IntRange;
import androidx.core.content.FileProvider;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.PageInfoUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neocaj.NeoCajNative;
import com.onyx.android.sdk.neopdf.PdfCharInfo;
import com.onyx.android.sdk.neopdf.PdfUtils;
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
import com.onyx.android.sdk.reader.api.ReaderDrmCertificateFactory;
import com.onyx.android.sdk.reader.api.ReaderDrmManager;
import com.onyx.android.sdk.reader.api.ReaderException;
import com.onyx.android.sdk.reader.api.ReaderExportArgs;
import com.onyx.android.sdk.reader.api.ReaderHitTestArgs;
import com.onyx.android.sdk.reader.api.ReaderHitTestManager;
import com.onyx.android.sdk.reader.api.ReaderHitTestOptions;
import com.onyx.android.sdk.reader.api.ReaderImage;
import com.onyx.android.sdk.reader.api.ReaderLinkType;
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
import com.onyx.android.sdk.reader.impl.ReaderImageImpl;
import com.onyx.android.sdk.reader.impl.ReaderPageTypeImpl;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.onyx.android.sdk.reader.impl.ReaderSelectionImpl;
import com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfJniWrapper;
import com.onyx.android.sdk.reader.utils.ReaderSelectionUtils;
import com.onyx.engine.sdk.DisplayMetrics;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapWithDefaultKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.math3.linear.SymmLQ;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Ö\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0015\n\u0002\b\t\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 Æ\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f2\u00020\r2\u00020\u000e:\u0002Æ\u0001B\t¢\u0006\u0006\bÄ\u0001\u0010Å\u0001J\u001e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0018\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0012H\u0002J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0012H\u0002J\u0010\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0012H\u0002J\u001e\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010\u0010\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u001e\u0010#\u001a\u00020\"2\u0006\u0010\u0010\u001a\u00020\u001b2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eH\u0002J\u0016\u0010$\u001a\u00020\"2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eH\u0002J\u0010\u0010'\u001a\u00020\u00122\u0006\u0010&\u001a\u00020%H\u0002J\b\u0010)\u001a\u00020(H\u0002J\u0010\u0010,\u001a\u00020\u00142\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010.\u001a\u00020-2\u0006\u0010&\u001a\u00020%H\u0002J\u0018\u00100\u001a\u00020\u00142\u0006\u0010/\u001a\u00020-2\u0006\u0010&\u001a\u00020%H\u0002J\b\u00101\u001a\u00020\u000fH\u0016J \u00107\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u000f2\u0006\u00104\u001a\u0002032\u0006\u00106\u001a\u000205H\u0016J\b\u00108\u001a\u00020(H\u0016J\b\u00109\u001a\u00020\u0000H\u0016J\b\u0010:\u001a\u00020(H\u0016J\u0010\u0010=\u001a\u00020\u00142\u0006\u0010<\u001a\u00020;H\u0016J\b\u0010>\u001a\u00020\u0000H\u0016J\b\u0010?\u001a\u00020\u0000H\u0016J\n\u0010A\u001a\u0004\u0018\u00010@H\u0016J\b\u0010B\u001a\u00020\u0000H\u0016J\b\u0010C\u001a\u00020\u0000H\u0016J\b\u0010D\u001a\u00020\u0000H\u0016J\b\u0010E\u001a\u00020(H\u0016J\b\u0010F\u001a\u00020\u0000H\u0016J\b\u0010H\u001a\u00020GH\u0016J\u0010\u0010K\u001a\u00020(2\u0006\u0010J\u001a\u00020IH\u0016J\u0010\u0010N\u001a\u00020(2\u0006\u0010M\u001a\u00020LH\u0016J\b\u0010O\u001a\u00020(H\u0016J\b\u0010P\u001a\u00020\u0014H\u0016J\u0010\u0010R\u001a\u00020(2\u0006\u0010Q\u001a\u00020%H\u0016J\b\u0010S\u001a\u00020\u0014H\u0016J\u0010\u0010U\u001a\u00020T2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0018\u0010X\u001a\u00020T2\u0006\u0010\u0010\u001a\u00020\u001b2\u0006\u0010W\u001a\u00020VH\u0016J\u0010\u0010Z\u001a\u00020Y2\u0006\u0010Q\u001a\u00020%H\u0016J\u0010\u0010[\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0010\u0010]\u001a\u00020\\2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0016\u0010^\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00112\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u001c\u0010a\u001a\u0004\u0018\u00010`2\u0006\u0010\u0010\u001a\u00020\u001b2\b\u0010_\u001a\u0004\u0018\u00010\u001bH\u0016J\u000e\u0010U\u001a\u00020T2\u0006\u0010Q\u001a\u00020%J\b\u0010b\u001a\u00020\u0014H\u0016J\b\u0010c\u001a\u00020\u0014H\u0016J\u0010\u0010f\u001a\u00020(2\u0006\u0010e\u001a\u00020dH\u0016J\u0010\u0010i\u001a\u00020\u00142\u0006\u0010h\u001a\u00020gH\u0016J\b\u0010j\u001a\u00020%H\u0016J\u000e\u0010k\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011H\u0016J\u0010\u0010l\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0010\u0010m\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0010\u0010n\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0010\u0010o\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\b\u0010p\u001a\u00020\u0000H\u0016J\b\u0010q\u001a\u00020\u0000H\u0016J\b\u0010r\u001a\u00020\u0000H\u0016J\u0010\u0010t\u001a\u00020\u00142\u0006\u0010s\u001a\u00020VH\u0016J\u0018\u0010x\u001a\u00020\u00142\u0006\u0010u\u001a\u00020%2\u0006\u0010w\u001a\u00020vH\u0016J\b\u0010y\u001a\u00020(H\u0016J\u0018\u0010z\u001a\u00020\u00142\u0006\u00104\u001a\u0002032\u0006\u00106\u001a\u000205H\u0016J\b\u0010{\u001a\u00020(H\u0016J\b\u0010|\u001a\u00020(H\u0016J\u0010\u0010}\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020*H\u0016J\u0010\u0010~\u001a\u00020*2\u0006\u0010\u0016\u001a\u00020*H\u0016J\u0016\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020L0\u00112\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J1\u0010\u0083\u0001\u001a\t\u0012\u0005\u0012\u00030\u0082\u00010\u00112\u0006\u0010\u0010\u001a\u00020\u001b2\u000e\u0010\u0081\u0001\u001a\t\u0012\u0004\u0012\u00020\u000f0\u0080\u0001H\u0016¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J\u0011\u0010\u0085\u0001\u001a\u00020(2\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\t\u0010\u0086\u0001\u001a\u00020\u0000H\u0016J\u0013\u0010\u0089\u0001\u001a\u00020(2\b\u0010\u0088\u0001\u001a\u00030\u0087\u0001H\u0016J\t\u0010\u008a\u0001\u001a\u00020\u001bH\u0016J\u0011\u0010\u008b\u0001\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020%H\u0016J\u001b\u0010\u008e\u0001\u001a\u00020\u001b2\u0007\u0010\u008c\u0001\u001a\u00020\u000f2\u0007\u0010\u008d\u0001\u001a\u00020(H\u0016J\u000f\u0010\u008f\u0001\u001a\u00020%2\u0006\u0010\u0010\u001a\u00020\u001bJ\u0017\u0010\u0090\u0001\u001a\b\u0012\u0004\u0012\u00020*0\u00112\u0006\u0010\u0010\u001a\u00020\u001bH\u0016J\u0013\u0010\u0093\u0001\u001a\u00020(2\b\u0010\u0092\u0001\u001a\u00030\u0091\u0001H\u0016J\u0013\u0010\u0094\u0001\u001a\u00020(2\b\u0010\u0092\u0001\u001a\u00030\u0091\u0001H\u0016J%\u0010\u0097\u0001\u001a\u00020(2\u0007\u0010\u0095\u0001\u001a\u00020%2\b\u0010\u0092\u0001\u001a\u00030\u0091\u00012\u0007\u0010\u0096\u0001\u001a\u00020(H\u0016J\u000f\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u00020\u00120\u001eH\u0016J\u0013\u0010\u009b\u0001\u001a\u00020(2\b\u0010\u009a\u0001\u001a\u00030\u0099\u0001H\u0016J\t\u0010\u009c\u0001\u001a\u00020(H\u0016J&\u0010 \u0001\u001a\u0004\u0018\u00010*2\u0006\u0010\u001d\u001a\u00020\u001c2\u0007\u0010\u009d\u0001\u001a\u00020\u001c2\b\u0010\u009f\u0001\u001a\u00030\u009e\u0001H\u0016J&\u0010 \u0001\u001a\u0004\u0018\u00010*2\u0007\u0010¡\u0001\u001a\u00020\u001b2\u0007\u0010¢\u0001\u001a\u00020\u001b2\u0007\u0010£\u0001\u001a\u00020\u001bH\u0016J\u0018\u0010¤\u0001\u001a\b\u0012\u0004\u0012\u00020*0\u00112\u0007\u0010¡\u0001\u001a\u00020\u001bH\u0016J\u0015\u0010¦\u0001\u001a\u0004\u0018\u00010*2\b\u0010\u0088\u0001\u001a\u00030¥\u0001H\u0016J\u0017\u0010§\u0001\u001a\b\u0012\u0004\u0012\u00020T0\u00112\u0006\u0010Q\u001a\u00020%H\u0016J\t\u0010¨\u0001\u001a\u00020(H\u0016J\u0011\u0010©\u0001\u001a\u00020\u00142\b\u0010+\u001a\u0004\u0018\u00010*J\u0018\u0010«\u0001\u001a\u00020\u00142\u000f\u0010ª\u0001\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010\u0011J\u0012\u0010\u00ad\u0001\u001a\u00020\u00142\t\u0010¬\u0001\u001a\u0004\u0018\u00010`J\t\u0010®\u0001\u001a\u00020\u000eH\u0016J\u0013\u0010°\u0001\u001a\u00020(2\b\u0010\u0088\u0001\u001a\u00030¯\u0001H\u0016R\u0017\u0010³\u0001\u001a\u00030±\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b$\u0010²\u0001R\u0018\u0010µ\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b)\u0010´\u0001R\u001e\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u00020\u00120\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b.\u0010¶\u0001R+\u0010¹\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00110·\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b'\u0010¸\u0001R%\u0010º\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00120·\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0018\u0010¸\u0001R+\u0010»\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\u001e0·\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0017\u0010¸\u0001R%\u0010¼\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\"0·\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001a\u0010¸\u0001R\u0018\u0010¾\u0001\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b \u0010½\u0001R\u0017\u00106\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b#\u0010¿\u0001R\u0018\u0010\u009c\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b,\u0010À\u0001R\u0018\u0010¨\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0015\u0010À\u0001R\u0017\u0010Ã\u0001\u001a\u00030Á\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b0\u0010Â\u0001¨\u0006Ç\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin;", "Lcom/onyx/android/sdk/reader/api/ReaderPlugin;", "Lcom/onyx/android/sdk/reader/api/ReaderDocument;", "Lcom/onyx/android/sdk/reader/api/ReaderView;", "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;", "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;", "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;", "Lcom/onyx/android/sdk/reader/api/ReaderDrmManager;", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;", "Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderPluginFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentFeatures;", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentExporter;", "", "position", "", "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;", "list", "", C4921e.f26537n, "link", C6997f.f39671c, "e", "cache", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;", gon.f71290o0, "", "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;", C6999h.f39688c, "charInfoList", "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "i", "a", "", "pageIndex", "d", "", "b", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "selection", "j", "Lcom/onyx/android/sdk/reader/api/PageRange;", "c", "pageRange", "l", FileProvider.f5230t, "path", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentOptions;", "documentOptions", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "pluginOptions", "open", "reopen", "getPluginFeatures", "supportPageId", "Lcom/onyx/android/sdk/base/data/Size;", "size", "updateViewSize", "getRenderer", "getNavigator", "Lcom/onyx/android/sdk/reader/api/ReaderPagination;", "getPagination", "getTextStyleManager", "getReaderHitTestManager", "getSearchManager", "supportDrm", "createDrmManager", "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfDocumentWriter;", "createDocumentWriter", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentMetadata;", "metadata", "readMetadata", "Lcom/onyx/android/sdk/reader/api/ReaderImage;", "readImage", "readCover", "isBlankContent", "beginLookupPageData", "page", "hasAnnotationData", "endLookupPageData", "Landroid/graphics/RectF;", "getPageOriginSize", "", "dpi", "getPageSizeWithDpi", "Landroid/graphics/Matrix;", "getPageContentMatrix", "getPageText", "Lcom/onyx/android/sdk/reader/api/ReaderPageType;", "pageType", "getPageParagraphList", "sentenceStartPosition", "Lcom/onyx/android/sdk/reader/api/ReaderSentence;", "getSentence", "abortCurrentJob", "clearAbortFlag", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", SyncConstant.LOCAL_TOC_DIR_NAME, "readTableOfContent", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;", "entry", "updateTocPageIndex", "getTotalPage", "getPageLabelList", "nextScreen", "prevScreen", "nextPage", "prevPage", "getView", "getPageDataProvider", "getDocumentFeatures", "gamma", "setTextGamma", SymmLQ.f108603e, "", "colorTable", "setFontEnhancement", "close", "updateDocumentOptions", "supportNoteEmbeded", "isDamagedFile", "getLinkTarget", "getLinkTargetSelection", "getImages", "", "ignoreObjIdList", "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;", "getRichMedias", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;[Ljava/lang/String;)Ljava/util/List;", "isValidPosition", "getRendererFeatures", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", "args", "draw", "getInitPosition", "positionByPageIndex", "positionString", "useJsonPageIndexIfValid", "positionByPositionString", "pageIndexByPosition", "getLinks", "Lcom/onyx/android/sdk/reader/api/ReaderSearchOptions;", "options", "searchPrevious", "searchNext", "currentPage", Constants.CLEAR_ATTRIBUTES, "searchInPage", "searchResults", "Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;", "factory", "activateDeviceDRM", "isWholeBook", "end", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;", "hitTestOptions", "selectOnScreen", "pagePosition", "startPosition", "endPosition", "allText", "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;", "selectOnDocument", "getAllCharRectList", "supportScale", "updateSelectionPageRange", "selectionList", "updateSelectionsPageRange", "sentence", "updateSentencePageRange", "createDocumentExporter", "Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;", "exportPages", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "benchmark", Constants.STRING_SIG, "documentPath", "Ljava/util/List;", "", "Ljava/util/Map;", "pageLinks", "pageRectLinkMap", "pageCharInfoListMap", "pageWritingModeMap", "Lcom/onyx/android/sdk/base/data/Size;", "viewSize", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", Constants.HASIDCALL_INDEX_SIG, "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;", "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;", "pluginImpl", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNeoPdfReaderPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdfReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,740:1\n1855#2,2:741\n1855#2,2:743\n1549#2:745\n1620#2,3:746\n1549#2:749\n1620#2,3:750\n*S KotlinDebug\n*F\n+ 1 NeoPdfReaderPlugin.kt\ncom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin\n*L\n359#1:741,2\n438#1:743,2\n481#1:745\n481#1:746,3\n549#1:749\n549#1:750,3\n*E\n"})
/* loaded from: classes8.dex */
public final class NeoPdfReaderPlugin implements ReaderPlugin, ReaderDocument, ReaderView, ReaderRenderer, ReaderNavigator, ReaderSearchManager, ReaderTextStyleManager, ReaderDrmManager, ReaderHitTestManager, ReaderRendererFeatures, ReaderPluginFeatures, ReaderPageDataProvider, ReaderDocumentFeatures, ReaderDocumentExporter {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: m */
    @NotNull
    public static final Class<?> f45025m = NeoPdfReaderPlugin.class;

    /* renamed from: n */
    public static final int f45026n = 4;

    /* renamed from: o */
    public static final int f45027o = 37;

    /* renamed from: p */
    public static final int f45028p = 80;

    /* renamed from: q */
    public static final int f45029q = 68;

    /* renamed from: r */
    public static final int f45030r = 70;

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
    public Map<String, List<ReaderSelectionImpl>> pageLinks;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public Map<String, ReaderSelectionImpl> pageRectLinkMap;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Map<String, List<ReaderCharInfo>> pageCharInfoListMap;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public Map<String, ReaderWritingMode> pageWritingModeMap;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Size viewSize;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public ReaderPluginOptions pluginOptions;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isWholeBook;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean supportScale;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final NeoPdfJniWrapper pluginImpl;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u000eR\u0018\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfReaderPlugin$Companion;", "", "", "path", "", "supportNoteEmbeded", "accept", "isCajExtension", "isCajPDF", "isJEB", "isJDPDF", "a", "", "JDPDF_FOUR_BYTE", "I", "JDPDF_HEAD_LENGTH", "JDPDF_ONE_BYTE", "JDPDF_THREE_BYTE", "JDPDF_TWO_BYTE", "Ljava/lang/Class;", "TAG", "Ljava/lang/Class;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final boolean m34780a(String path) {
            boolean endsWith$default;
            String lowerCase = path.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(lowerCase, CloudStorageConstants.PDF_FILE_SUFFIX, false, 2, null);
            return endsWith$default;
        }

        public final boolean accept(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            if (m34780a(path) || isJDPDF(path)) {
                return true;
            }
            return isCajPDF(path);
        }

        public final boolean isCajExtension(@NotNull String path) {
            boolean endsWith$default;
            Intrinsics.checkNotNullParameter(path, "path");
            String lowerCase = path.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".caj", false, 2, null);
            return endsWith$default;
        }

        public final boolean isCajPDF(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            if (!isCajExtension(path)) {
                return false;
            }
            int readDocumentFormat = NeoCajNative.INSTANCE.readDocumentFormat(path);
            Debug.INSTANCE.m32035d(NeoPdfReaderPlugin.f45025m, "format = " + readDocumentFormat, new Object[0]);
            return readDocumentFormat == 1 || readDocumentFormat == 3 || readDocumentFormat == 4;
        }

        public final boolean isJDPDF(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            boolean z = false;
            FileInputStream fileInputStream = null;
            try {
                try {
                    if (isJEB(path) && FileUtils.INSTANCE.fileExist(path)) {
                        FileInputStream fileInputStream2 = new FileInputStream(new File(path));
                        try {
                            byte[] bArr = new byte[4];
                            fileInputStream2.read(bArr, 0, 4);
                            if (bArr[0] == 37 && bArr[1] == 80 && bArr[2] == 68) {
                                if (bArr[3] == 70) {
                                    z = true;
                                }
                            }
                            fileInputStream = fileInputStream2;
                        } catch (Exception e) {
                            e = e;
                            fileInputStream = fileInputStream2;
                            e.printStackTrace();
                            FileUtils.INSTANCE.closeQuietly(fileInputStream);
                            return z;
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            FileUtils.INSTANCE.closeQuietly(fileInputStream);
                            throw th;
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                }
                FileUtils.INSTANCE.closeQuietly(fileInputStream);
                return z;
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public final boolean isJEB(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return FileUtils.INSTANCE.getFileExtension(path).contentEquals(FileTypeConstant.JEB);
        }

        public final boolean supportNoteEmbeded(@NotNull String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return m34780a(path) && FileUtils.INSTANCE.fileCanWrite(path);
        }

        public Companion() {
        }
    }

    public NeoPdfReaderPlugin() {
        Map<String, List<ReaderSelectionImpl>> withDefaultMutable;
        withDefaultMutable = MapsKt__MapWithDefaultKt.withDefaultMutable(new LinkedHashMap(), new Function1<String, List<? extends ReaderSelectionImpl>>() { // from class: com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfReaderPlugin$pageLinks$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<ReaderSelectionImpl> invoke(@NotNull String it2) {
                List<ReaderSelectionImpl> emptyList;
                Intrinsics.checkNotNullParameter(it2, "it");
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
        });
        this.pageLinks = withDefaultMutable;
        this.pageRectLinkMap = new LinkedHashMap();
        this.pageCharInfoListMap = new LinkedHashMap();
        this.pageWritingModeMap = new LinkedHashMap();
        this.viewSize = new Size(0, 0, 3, null);
        this.pluginOptions = ReaderPluginOptions.INSTANCE.getDummy();
        this.isWholeBook = true;
        this.supportScale = true;
        this.pluginImpl = new NeoPdfJniWrapper();
    }

    /* renamed from: a */
    public final ReaderWritingMode m34768a(List<ReaderCharInfo> charInfoList) {
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
    public boolean activateDeviceDRM(@NotNull ReaderDrmCertificateFactory factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.isWholeBook = factory.isWholeBook();
        return this.pluginImpl.activateDeviceDRM(factory);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @NotNull
    public List<ReaderSelection> allText(@NotNull ReaderPosition pagePosition) {
        Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
        return this.pluginImpl.getPageTextCharBoxes(pageIndexByPosition(pagePosition));
    }

    /* renamed from: b */
    public final boolean m34769b() {
        String str = this.documentPath;
        if (str == null || str.length() == 0) {
            return false;
        }
        Companion companion = INSTANCE;
        if (companion.m34780a(this.documentPath) || companion.isJDPDF(this.documentPath)) {
            return true;
        }
        return companion.isCajPDF(this.documentPath);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    public void beginLookupPageData() {
        this.pluginImpl.beginLookupPageData();
    }

    /* renamed from: c */
    public final PageRange m34770c(int pageIndex) {
        ReaderPosition positionByPageIndex = positionByPageIndex(pageIndex);
        return new PageRange(positionByPageIndex, positionByPageIndex);
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

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    @NotNull
    public NeoPdfReaderPlugin createDrmManager() {
        return this;
    }

    /* renamed from: d */
    public final ReaderSelectionImpl m34771d(int pageIndex) {
        ReaderSelectionImpl readerSelectionImpl = new ReaderSelectionImpl();
        readerSelectionImpl.setPageIndex(pageIndex);
        readerSelectionImpl.setPageRange(m34770c(pageIndex));
        return readerSelectionImpl;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    public void destroy() {
        ReaderPlugin.DefaultImpls.destroy(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    @NotNull
    public String displayName() {
        return "NeoPdfReaderPlugin";
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRenderer
    public boolean draw(@NotNull DrawArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.benchmark.restart();
        boolean drawPage = this.pluginImpl.drawPage(args);
        Debug.INSTANCE.m32035d(f45025m, "rendering takes: " + this.benchmark.duration(), new Object[0]);
        return drawPage;
    }

    /* renamed from: e */
    public final ReaderSelectionImpl m34772e(String position, ReaderSelectionImpl link) {
        String m34773f = m34773f(position, link);
        if (this.pageRectLinkMap.containsKey(m34773f)) {
            return this.pageRectLinkMap.get(m34773f);
        }
        return null;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    public void endLookupPageData() {
        this.pluginImpl.endLookupPageData();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentExporter
    public boolean exportPages(@NotNull ReaderExportArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return this.pluginImpl.exportPages(args);
    }

    /* renamed from: f */
    public final String m34773f(String position, ReaderSelectionImpl link) {
        StringBuilder sb = new StringBuilder();
        sb.append(position);
        if (link.getRectList().size() <= 0) {
            sb.append("-empty");
        } else {
            PointF linkHitTestPoint = this.pluginImpl.getLinkHitTestPoint(link);
            sb.append("-x=");
            sb.append(linkHitTestPoint.x);
            sb.append("-y=");
            sb.append(linkHitTestPoint.y);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
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

    /* renamed from: g */
    public final ReaderSelectionImpl m34774g(ReaderSelectionImpl cache) {
        boolean isBlank;
        int destPageIndex = this.pluginImpl.getDestPageIndex(cache);
        if (PageInfoUtils.INSTANCE.isValidPage(destPageIndex)) {
            PageRange pageRange = new PageRange(null, null, 3, null);
            m34779l(pageRange, destPageIndex);
            cache.setSelectionRange(pageRange);
            cache.setLinkType(3);
            return cache.copy();
        }
        String destUri = this.pluginImpl.getDestUri(cache);
        isBlank = StringsKt__StringsJVMKt.isBlank(destUri);
        if (!(!isBlank)) {
            cache.setLinkType(5);
            return cache.copy();
        }
        cache.setText(destUri);
        cache.setLinkType(1);
        return cache.copy();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @NotNull
    public List<RectF> getAllCharRectList(int page) {
        return ReaderSelectionUtils.INSTANCE.getAllCharRectList(this.pluginImpl.getPageTextCharBoxes(page));
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
    public NeoPdfReaderPlugin getDocumentFeatures() {
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
        Intrinsics.checkNotNullParameter(position, "position");
        ArrayList arrayList = new ArrayList();
        int pageIndexByPosition = pageIndexByPosition(position);
        ArrayList arrayList2 = new ArrayList();
        if (!this.pluginImpl.getPageImageRegions(pageIndexByPosition, arrayList2)) {
            return arrayList;
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList.add(new ReaderImageImpl((RectF) it2.next(), null, null, 0.0f, 14, null));
        }
        return arrayList;
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
    public String getLinkTarget(@NotNull ReaderSelection link) {
        Intrinsics.checkNotNullParameter(link, "link");
        ReaderSelection linkTargetSelection = getLinkTargetSelection(link);
        return (linkTargetSelection != null && linkTargetSelection.linkType() == 3) ? linkTargetSelection.selectionRange().getStartPosition().getStrPosition() : "";
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public ReaderSelection getLinkTargetSelection(@NotNull ReaderSelection link) {
        Intrinsics.checkNotNullParameter(link, "link");
        ReaderSelectionImpl readerSelectionImpl = (ReaderSelectionImpl) link;
        ReaderSelectionImpl m34772e = m34772e(readerSelectionImpl.getPageRange().getStartPosition().getStrPosition(), readerSelectionImpl);
        if (m34772e != null) {
            Debug.INSTANCE.m32035d(NeoPdfReaderPlugin.class, "hit link cache success.", new Object[0]);
            if (ReaderLinkType.INSTANCE.isLinkLoaded(m34772e.getLinkType())) {
                return m34772e.copy();
            }
        } else {
            Debug.INSTANCE.m32035d(NeoPdfReaderPlugin.class, "hit link cache fail.", new Object[0]);
            if (ReaderLinkType.INSTANCE.isLinkLoaded(readerSelectionImpl.getLinkType())) {
                return readerSelectionImpl;
            }
            m34772e = readerSelectionImpl.copy();
            this.pageRectLinkMap.put(m34773f(m34772e.getPageRange().getStartPosition().getStrPosition(), m34772e), m34772e);
        }
        return m34774g(m34772e);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public List<ReaderSelection> getLinks(@NotNull ReaderPosition position) {
        Object value;
        Intrinsics.checkNotNullParameter(position, "position");
        String strPosition = position.getStrPosition();
        value = MapsKt__MapsKt.getValue(this.pageLinks, strPosition);
        List<ReaderSelectionImpl> list = (List) value;
        if (list.isEmpty()) {
            list = new ArrayList<>();
            if (!this.pluginImpl.getPageLinks(pageIndexByPosition(position), list)) {
                return new ArrayList();
            }
            m34778k(strPosition, list);
        }
        updateSelectionsPageRange(list);
        ArrayList arrayList = new ArrayList();
        for (ReaderSelectionImpl readerSelectionImpl : list) {
            m34777j(readerSelectionImpl);
            arrayList.add(readerSelectionImpl.copy());
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public NeoPdfReaderPlugin getNavigator() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    @Nullable
    public ReaderTextStyle getOriginCssStyle() {
        return ReaderTextStyleManager.DefaultImpls.getOriginCssStyle(this);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public Matrix getPageContentMatrix(int page) {
        Matrix pageContentMatrix = this.pluginImpl.pageContentMatrix(page);
        return pageContentMatrix == null ? new Matrix() : pageContentMatrix;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    @NotNull
    public NeoPdfReaderPlugin getPageDataProvider() {
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
        return this.pluginImpl.pageLabels();
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
        List<String> emptyList;
        Intrinsics.checkNotNullParameter(position, "position");
        position.getStrPosition();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public RectF getPageSizeWithDpi(@NotNull ReaderPosition position, float dpi) {
        Intrinsics.checkNotNullParameter(position, "position");
        return PdfUtils.INSTANCE.pdfPageSizeToSizeFormatPx(getPageOriginSize(position), dpi);
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
    public NeoPdfReaderPlugin getPluginFeatures() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public NeoPdfReaderPlugin getReaderHitTestManager() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderView
    @NotNull
    public NeoPdfReaderPlugin getRenderer() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRenderer
    @NotNull
    public NeoPdfReaderPlugin getRendererFeatures() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    @NotNull
    public List<ReaderRichMedia> getRichMedias(@NotNull ReaderPosition position, @NotNull String[] ignoreObjIdList) {
        List<ReaderRichMedia> emptyList;
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(ignoreObjIdList, "ignoreObjIdList");
        int pageIndexByPosition = pageIndexByPosition(position);
        ArrayList arrayList = new ArrayList();
        if (this.pluginImpl.getPageRichMedias(pageIndexByPosition, arrayList, ignoreObjIdList)) {
            return arrayList;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
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
    public NeoPdfReaderPlugin getSearchManager() {
        return this;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @Nullable
    public ReaderSentence getSentence(@NotNull ReaderPosition position, @Nullable ReaderPosition sentenceStartPosition) {
        Intrinsics.checkNotNullParameter(position, "position");
        ReaderSentence sentence = this.pluginImpl.getSentence(pageIndexByPosition(position), sentenceStartPosition != null ? sentenceStartPosition.getIntPosition() : 0);
        updateSentencePageRange(sentence);
        if (sentence != null) {
            m34777j(sentence.getReaderSelection());
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
    public NeoPdfReaderPlugin getTextStyleManager() {
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
    public NeoPdfReaderPlugin getView() {
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

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0031, code lost:
    
        r3 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r3);
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.onyx.android.sdk.reader.common.ReaderCharInfo> m34775h(com.onyx.android.sdk.reader.api.ReaderPosition r4, com.onyx.android.sdk.reader.api.ReaderHitTestArgs r5) {
        /*
            r3 = this;
            java.lang.String r4 = r4.getStrPosition()
            java.util.Map<java.lang.String, java.util.List<com.onyx.android.sdk.reader.common.ReaderCharInfo>> r0 = r3.pageCharInfoListMap
            boolean r0 = r0.containsKey(r4)
            if (r0 == 0) goto L3f
            com.onyx.android.sdk.base.utils.Debug r5 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class<com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfReaderPlugin> r0 = com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfReaderPlugin.class
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
            com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfJniWrapper r0 = r3.pluginImpl
            int r5 = r5.getPageIndex()
            java.util.List r5 = r0.getPageTextCharInfoList(r5)
            java.util.Map<java.lang.String, java.util.List<com.onyx.android.sdk.reader.common.ReaderCharInfo>> r3 = r3.pageCharInfoListMap
            r3.put(r4, r5)
            java.util.Collection r5 = (java.util.Collection) r5
            java.util.List r3 = kotlin.collections.CollectionsKt.toMutableList(r5)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfReaderPlugin.m34775h(com.onyx.android.sdk.reader.api.ReaderPosition, com.onyx.android.sdk.reader.api.ReaderHitTestArgs):java.util.List");
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    public boolean hasAnnotationData(int page) {
        return this.pluginImpl.hasPageAnnotData(page);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    public boolean hasText(@NotNull ReaderPosition readerPosition) {
        return ReaderHitTestManager.DefaultImpls.hasText(this, readerPosition);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public boolean hitPageCache(@NotNull ReaderPosition readerPosition) {
        return ReaderNavigator.DefaultImpls.hitPageCache(this, readerPosition);
    }

    /* renamed from: i */
    public final ReaderWritingMode m34776i(ReaderPosition position, List<ReaderCharInfo> charInfoList) {
        String strPosition = position.getStrPosition();
        if (this.pageWritingModeMap.containsKey(strPosition)) {
            ReaderWritingMode readerWritingMode = this.pageWritingModeMap.get(strPosition);
            return readerWritingMode == null ? ReaderWritingMode.UNKNOWN : readerWritingMode;
        }
        ReaderWritingMode m34768a = m34768a(charInfoList);
        this.pageWritingModeMap.put(strPosition, m34768a);
        return m34768a;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentFeatures
    public boolean isBlankContent() {
        return this.pluginImpl.isBlankContent();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocumentFeatures
    public boolean isDamagedFile() {
        return INSTANCE.supportNoteEmbeded(StringKt.safelyGetStr(this.documentPath)) && this.pluginImpl.isDamagedFile();
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
    /* renamed from: isWholeBook, reason: from getter */
    public boolean getIsWholeBook() {
        return this.isWholeBook;
    }

    /* renamed from: j */
    public final void m34777j(ReaderSelection selection) {
        List<RectF> mergeBlockRectanglesByVerticalWord = selection.writingMode() == ReaderWritingMode.VERTICAL_RL ? CharRectList.INSTANCE.mergeBlockRectanglesByVerticalWord(selection.rectangles()) : CharRectList.INSTANCE.mergeBlockRectanglesByWord(selection.rectangles());
        selection.rectangles().clear();
        selection.rectangles().addAll(mergeBlockRectanglesByVerticalWord);
    }

    /* renamed from: k */
    public final void m34778k(String position, List<ReaderSelectionImpl> list) {
        this.pageLinks.put(position, list);
        for (ReaderSelectionImpl readerSelectionImpl : list) {
            readerSelectionImpl.setLinkType(4);
            this.pageRectLinkMap.put(m34773f(position, readerSelectionImpl), readerSelectionImpl);
        }
    }

    /* renamed from: l */
    public final void m34779l(PageRange pageRange, int pageIndex) {
        ReaderPosition positionByPageIndex = positionByPageIndex(pageIndex);
        pageRange.setStartPosition(positionByPageIndex);
        pageRange.setEndPosition(positionByPageIndex);
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
        this.pluginOptions = pluginOptions;
        String documentPassword = documentOptions.getDocumentPassword();
        this.pluginImpl.init(pluginOptions);
        long openDocument = this.pluginImpl.openDocument(path, documentPassword);
        NeoPdfJniWrapper.Companion companion = NeoPdfJniWrapper.INSTANCE;
        if (openDocument != companion.getNO_ERROR()) {
            companion.checkOpenAndThrow(openDocument);
            return this;
        }
        if (this.pluginImpl.pageCount() > 0) {
            this.supportScale = m34769b();
            return this;
        }
        Debug.INSTANCE.m32044e(NeoPdfReaderPlugin.class, "Page count error!", new Object[0]);
        throw ReaderException.INSTANCE.cannotOpen();
    }

    public final int pageIndexByPosition(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return position.getPageIndex();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageDataProvider
    @NotNull
    public ReaderPageType pageType(@NotNull ReaderPosition position) {
        Intrinsics.checkNotNullParameter(position, "position");
        int pageIndexByPosition = pageIndexByPosition(position);
        ReaderPageTypeImpl readerPageTypeImpl = new ReaderPageTypeImpl(0, 1, null);
        if (this.pluginImpl.isOnyxPage(pageIndexByPosition)) {
            readerPageTypeImpl.addOnyxPageFlag();
        }
        if (this.pluginImpl.isTextPage(pageIndexByPosition)) {
            readerPageTypeImpl.addTextPageFlag();
        }
        return readerPageTypeImpl;
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
        return this.pluginImpl.positionByPositionString(positionString, useJsonPageIndexIfValid);
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
        if (!this.pluginImpl.supportCover()) {
            return false;
        }
        Bitmap bitmap = readImage.getBitmap();
        Intrinsics.checkNotNull(bitmap);
        return this.pluginImpl.drawPage(new DrawArgs(positionByPageIndex(0), 0.0f, 0, BitmapKt.boundingRectF(bitmap), null, null, bitmap, null, null, null, false, 1970, null));
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public boolean readMetadata(@NotNull ReaderDocumentMetadata metadata) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        metadata.setTitle(this.pluginImpl.metadataString("Title"));
        metadata.setOptions(this.pluginImpl.metadataString("OnyxOptions"));
        metadata.addValidAuthor(this.pluginImpl.metadataString("Author"));
        return true;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    public boolean readTableOfContent(@NotNull ReaderDocumentTableOfContent toc) {
        Intrinsics.checkNotNullParameter(toc, "toc");
        return this.pluginImpl.getTableOfContent(toc.getRootEntry());
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPlugin
    public boolean reopen() {
        return this.pluginImpl.reopenDocument();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderSearchManager
    public boolean searchInPage(int currentPage, @NotNull ReaderSearchOptions options, boolean clear) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(options, "options");
        if (clear) {
            this.searchResults.clear();
        }
        ArrayList<Object> arrayList = new ArrayList();
        NeoPdfJniWrapper neoPdfJniWrapper = this.pluginImpl;
        int width = this.viewSize.getWidth();
        int height = this.viewSize.getHeight();
        String f52444a = options.getF52444a();
        if (f52444a == null) {
            f52444a = "";
        }
        neoPdfJniWrapper.searchInPage(currentPage, 0, 0, width, height, 0, f52444a, options.isCaseSensitive(), options.isMatchWholeWord(), options.contextLength(), arrayList);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (Object obj : arrayList) {
            Object obj2 = obj instanceof ReaderSelectionImpl ? obj : null;
            if (obj2 == null) {
                PdfCharInfo pdfCharInfo = obj instanceof PdfCharInfo ? (PdfCharInfo) obj : null;
                if (pdfCharInfo != null) {
                    obj2 = this.pluginImpl.convertToReaderSelectionImpl(currentPage, pdfCharInfo);
                }
            }
            CollectionKt.safeAdd(this.searchResults, obj2);
            arrayList2.add(Unit.INSTANCE);
        }
        for (ReaderSelectionImpl readerSelectionImpl : this.searchResults) {
            readerSelectionImpl.setWritingMode(ReaderWritingMode.INSTANCE.analysePageWritingModeByBlockRect(readerSelectionImpl.getRectList()));
            m34777j(readerSelectionImpl);
        }
        updateSelectionsPageRange(this.searchResults);
        return this.searchResults.size() > 0;
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
    public ReaderSelection selectOnDocument(@NotNull ReaderSelectTextArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        int pageIndexByPosition = pageIndexByPosition(args.getPagePosition());
        List<ReaderSelectionImpl> pageTextCharBoxes = this.pluginImpl.getPageTextCharBoxes(pageIndexByPosition);
        ReaderSelectionUtils readerSelectionUtils = ReaderSelectionUtils.INSTANCE;
        List<RectF> allCharRectList = readerSelectionUtils.getAllCharRectList(pageTextCharBoxes);
        args.setScreenPage(false);
        args.setAllCharRectList(allCharRectList);
        List<RectF> selectCharRectList = readerSelectionUtils.selectCharRectList(args);
        List<RectF> list = selectCharRectList;
        if (list == null || list.isEmpty()) {
            return null;
        }
        ReaderSelectionImpl m34771d = m34771d(pageIndexByPosition);
        m34771d.getRectList().addAll(list);
        m34771d.setCharRectList(RectFKt.copyRectFList(selectCharRectList));
        return m34771d;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection selectOnScreen(@NotNull ReaderHitTestArgs start, @NotNull ReaderHitTestArgs end, @NotNull ReaderHitTestOptions hitTestOptions) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(hitTestOptions, "hitTestOptions");
        ReaderPosition positionByPageIndex = positionByPageIndex(start.getPageIndex());
        List<ReaderCharInfo> m34775h = m34775h(positionByPageIndex, start);
        return new FixedDocumentPageTextHelper(positionByPageIndex, m34775h, m34776i(positionByPageIndex, m34775h)).selectOnScreen(getPageOriginSize(start.getPageIndex()), start, end, hitTestOptions);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection selectSelection(@NotNull ReaderPosition readerPosition, @NotNull ReaderPosition readerPosition2, int i) {
        return ReaderHitTestManager.DefaultImpls.selectSelection(this, readerPosition, readerPosition2, i);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    public void setFontEnhancement(int threshold, @NotNull int[] colorTable) {
        Intrinsics.checkNotNullParameter(colorTable, "colorTable");
        this.pluginImpl.setTextGammaTable(colorTable);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    public void setStyle(@NotNull ReaderTextStyle readerTextStyle) {
        ReaderTextStyleManager.DefaultImpls.setStyle(this, readerTextStyle);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextStyleManager
    public void setTextGamma(float gamma) {
        this.pluginImpl.setTextGamma(gamma);
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
        return true;
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
        return INSTANCE.supportNoteEmbeded(StringKt.safelyGetStr(this.documentPath)) && this.pluginImpl.supportNoteEmbeded();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public boolean supportPageId() {
        return true;
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
    public void updateDocumentOptions(@NotNull ReaderDocumentOptions documentOptions, @NotNull ReaderPluginOptions pluginOptions) {
        Intrinsics.checkNotNullParameter(documentOptions, "documentOptions");
        Intrinsics.checkNotNullParameter(pluginOptions, "pluginOptions");
    }

    public final void updateSelectionPageRange(@Nullable ReaderSelection selection) {
        if ((selection != null ? selection.pageRange() : null) == null) {
            return;
        }
        m34779l(selection.pageRange(), selection.pageIndex());
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

    @Override // com.onyx.android.sdk.reader.api.ReaderDocument
    @NotNull
    public NeoPdfDocumentWriter createDocumentWriter() {
        return new NeoPdfDocumentWriter(this.pluginImpl);
    }

    @NotNull
    public final RectF getPageOriginSize(int page) {
        float[] fArr = {0.0f, 0.0f};
        this.pluginImpl.pageSize(page, fArr);
        return new RectF(0.0f, 0.0f, fArr[0], fArr[1]);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderNavigator
    public void updateTocPageIndex(@NotNull ReaderDocumentTableOfContentEntry entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        this.pluginImpl.updateTocPageIndex(entry);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderHitTestManager
    @Nullable
    public ReaderSelection selectOnScreen(@NotNull ReaderPosition pagePosition, @NotNull ReaderPosition startPosition, @NotNull ReaderPosition endPosition) {
        Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
        Intrinsics.checkNotNullParameter(startPosition, "startPosition");
        Intrinsics.checkNotNullParameter(endPosition, "endPosition");
        int pageIndexByPosition = pageIndexByPosition(pagePosition);
        int intPosition = startPosition.getIntPosition();
        int intPosition2 = endPosition.getIntPosition();
        RectF pageOriginSize = getPageOriginSize(pageIndexByPosition);
        ReaderSelectionImpl m34771d = m34771d(pageIndexByPosition);
        this.pluginImpl.selection(pageIndexByPosition, 0, 0, (int) pageOriginSize.width(), (int) pageOriginSize.height(), 0, intPosition, intPosition2, m34771d);
        m34771d.setWritingMode(ReaderWritingMode.INSTANCE.analysePageWritingModeByCharRect(m34771d.getRectList()));
        m34777j(m34771d);
        return m34771d;
    }
}
