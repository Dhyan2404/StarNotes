package com.onyx.android.sdk.reader.plugins.neopdf;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson2.JSONReader;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.PageInfoUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neocaj.NeoCajNative;
import com.onyx.android.sdk.neopdf.CommitIdUtils;
import com.onyx.android.sdk.neopdf.JebDrmBuilder;
import com.onyx.android.sdk.neopdf.NeoPdf;
import com.onyx.android.sdk.neopdf.NeoPdfNative;
import com.onyx.android.sdk.neopdf.NeoPdfOnyxTag;
import com.onyx.android.sdk.neopdf.OnyxDrmBuilder;
import com.onyx.android.sdk.neopdf.PdfBookmark;
import com.onyx.android.sdk.neopdf.PdfCallback;
import com.onyx.android.sdk.neopdf.PdfCharInfo;
import com.onyx.android.sdk.neopdf.PdfDrmOptions;
import com.onyx.android.sdk.neopdf.PdfHighlightInfo;
import com.onyx.android.sdk.neopdf.PdfImportContext;
import com.onyx.android.sdk.neopdf.PdfLink;
import com.onyx.android.sdk.neopdf.PdfOpenOptions;
import com.onyx.android.sdk.neopdf.PdfOpenResult;
import com.onyx.android.sdk.neopdf.PdfPasswordBuilder;
import com.onyx.android.sdk.neopdf.PdfRichMediaObject;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.neopdf.PdfShapeUpdateOptions;
import com.onyx.android.sdk.neopdf.PdfTextSelection;
import com.onyx.android.sdk.neopdf.PdfTocEntry;
import com.onyx.android.sdk.neopdf.PdfUtils;
import com.onyx.android.sdk.neopdf.lib.JSONUtils;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.onyx.android.sdk.reader.api.PageId;
import com.onyx.android.sdk.reader.api.PageIdKt;
import com.onyx.android.sdk.reader.api.PageRange;
import com.onyx.android.sdk.reader.api.ReaderDocumentTableOfContentEntry;
import com.onyx.android.sdk.reader.api.ReaderDocumentWriter;
import com.onyx.android.sdk.reader.api.ReaderDrmCertificateFactory;
import com.onyx.android.sdk.reader.api.ReaderException;
import com.onyx.android.sdk.reader.api.ReaderExportArgs;
import com.onyx.android.sdk.reader.api.ReaderPluginOptions;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.api.ReaderRichMedia;
import com.onyx.android.sdk.reader.api.ReaderSentence;
import com.onyx.android.sdk.reader.common.ReaderCharInfo;
import com.onyx.android.sdk.reader.extension.ReaderSelectionImplKt;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.onyx.android.sdk.reader.impl.ReaderRichMediaImpl;
import com.onyx.android.sdk.reader.impl.ReaderSelectionImpl;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¨\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 Õ\u00012\u00020\u0001:\u0002Õ\u0001B\t¢\u0006\u0006\bÓ\u0001\u0010Ô\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\u000e\u001a\u00020\bH\u0002J\n\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J\u001a\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0016\u001a\u00020\u0004H\u0002J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0012H\u0002J\u000e\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001cJ\u0016\u0010\"\u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0010J\u0006\u0010#\u001a\u00020\u0004J\u0006\u0010$\u001a\u00020\u0004J\u0006\u0010%\u001a\u00020\u0010J\u0006\u0010&\u001a\u00020\u0004J\u0006\u0010'\u001a\u00020\u0010J\u0006\u0010(\u001a\u00020\u0004J\u0006\u0010)\u001a\u00020\u0004J\u0006\u0010*\u001a\u00020\u0004J\u0006\u0010+\u001a\u00020\bJ\u000e\u0010-\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u0006\u0010.\u001a\u00020\bJ\u0010\u00100\u001a\u00020\u00102\b\u0010/\u001a\u0004\u0018\u00010\u0010J\u0006\u00101\u001a\u00020\u0012J\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u001002J\u0016\u00106\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0006\u00105\u001a\u000204J\u0010\u00108\u001a\u0004\u0018\u0001072\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010;\u001a\u00020\b2\u0006\u0010:\u001a\u000209J\u000e\u0010>\u001a\u00020\b2\u0006\u0010=\u001a\u00020<J\u000e\u0010A\u001a\u00020\u00042\u0006\u0010@\u001a\u00020?JN\u0010J\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u00122\u0006\u0010B\u001a\u00020\u00122\u0006\u0010C\u001a\u00020\u00122\u0006\u0010D\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u00122\u0006\u0010F\u001a\u00020\u00122\u0006\u0010G\u001a\u00020\u00122\u0006\u0010H\u001a\u00020\u00122\u0006\u0010J\u001a\u00020IJd\u0010Q\u001a\u00020\b2\u0006\u0010,\u001a\u00020\u00122\u0006\u0010B\u001a\u00020\u00122\u0006\u0010C\u001a\u00020\u00122\u0006\u0010D\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u00122\u0006\u0010F\u001a\u00020\u00122\u0006\u0010K\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u00042\u0006\u0010N\u001a\u00020\u00122\f\u0010P\u001a\b\u0012\u0004\u0012\u00020I0OJ\u000e\u0010R\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010S\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010T\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010U\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010V\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u0018\u0010Y\u001a\u0004\u0018\u00010X2\u0006\u0010,\u001a\u00020\u00122\u0006\u0010W\u001a\u00020\u0012J\u000e\u0010Z\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010[\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0012J\u000e\u0010\\\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010^\u001a\u00020\b2\u0006\u0010]\u001a\u00020\u0006J\u001c\u0010_\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00122\f\u0010P\u001a\b\u0012\u0004\u0012\u00020I0OJ\u000e\u0010a\u001a\u00020\u00122\u0006\u0010`\u001a\u00020IJ\u000e\u0010c\u001a\u00020b2\u0006\u0010`\u001a\u00020IJ\u000e\u0010d\u001a\u00020\u00102\u0006\u0010`\u001a\u00020IJ1\u0010h\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\f\u0010P\u001a\b\u0012\u0004\u0012\u00020e0O2\f\u0010g\u001a\b\u0012\u0004\u0012\u00020\u00100f¢\u0006\u0004\bh\u0010iJ\u000e\u0010l\u001a\u00020\u00042\u0006\u0010k\u001a\u00020jJ\u000e\u0010n\u001a\u00020\b2\u0006\u0010m\u001a\u00020\u0004J\u0014\u0010o\u001a\b\u0012\u0004\u0012\u00020I0O2\u0006\u0010,\u001a\u00020\u0012J\u0016\u0010r\u001a\u00020I2\u0006\u0010,\u001a\u00020\u00122\u0006\u0010q\u001a\u00020pJ\u0014\u0010t\u001a\b\u0012\u0004\u0012\u00020s0O2\u0006\u0010,\u001a\u00020\u0012J\u001c\u0010v\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\f\u0010P\u001a\b\u0012\u0004\u0012\u00020u02J*\u0010{\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\f\u0010x\u001a\b\u0012\u0004\u0012\u00020w022\f\u0010z\u001a\b\u0012\u0004\u0012\u00020y02J\u0016\u0010~\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0006\u0010}\u001a\u00020|J\u0016\u0010\u007f\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0006\u0010}\u001a\u00020|J\u0017\u0010\u0080\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0006\u0010}\u001a\u00020|J!\u0010\u0080\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0006\u0010}\u001a\u00020y2\b\u0010\u0082\u0001\u001a\u00030\u0081\u0001J\u0019\u0010\u0085\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\b\u0010\u0084\u0001\u001a\u00030\u0083\u0001J\u0019\u0010\u0086\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\b\u0010\u0084\u0001\u001a\u00030\u0083\u0001J\u0019\u0010\u0087\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\b\u0010\u0084\u0001\u001a\u00030\u0083\u0001J\u0018\u0010\u0089\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u0088\u0001\u001a\u00020\u0010J\u0018\u0010\u008b\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u008a\u0001\u001a\u00020\u0010J\u0012\u0010\u008d\u0001\u001a\u00020\u00042\t\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0010J\u0018\u0010\u008f\u0001\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00102\u0007\u0010\u008e\u0001\u001a\u00020\u0004J\u0017\u0010\u008f\u0001\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u0010J\u0019\u0010\u008f\u0001\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00102\b\u0010\u0082\u0001\u001a\u00030\u0090\u0001J\u0011\u0010\u0093\u0001\u001a\u00020\b2\b\u0010\u0092\u0001\u001a\u00030\u0091\u0001J\u0011\u0010\u0096\u0001\u001a\u00020\u00042\b\u0010\u0095\u0001\u001a\u00030\u0094\u0001J\u0018\u0010\u0098\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u0097\u0001\u001a\u00020\u0010J\u0018\u0010\u0099\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u008a\u0001\u001a\u00020\u0010J\u000f\u0010\u009a\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u0012\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u00012\u0006\u0010,\u001a\u00020\u0012J\u0019\u0010\u009e\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\b\u0010\u009d\u0001\u001a\u00030\u009b\u0001J\u000f\u0010\u009f\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u0010\u0010¡\u0001\u001a\u00020\b2\u0007\u0010 \u0001\u001a\u00020\u0012J\u0007\u0010¢\u0001\u001a\u00020\u0004J'\u0010£\u0001\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010D\u001a\u0002092\u0006\u0010E\u001a\u000209J\u000f\u0010¤\u0001\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0012J\u0018\u0010¦\u0001\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00122\u0007\u0010¥\u0001\u001a\u00020\u0012J\u0018\u0010§\u0001\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00122\u0007\u0010¥\u0001\u001a\u00020\u0012J\u0017\u0010¨\u0001\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0010J+\u0010\u00ad\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0007\u0010©\u0001\u001a\u00020\u00102\u0007\u0010ª\u0001\u001a\u00020\u00102\b\u0010¬\u0001\u001a\u00030«\u0001J4\u0010\u00ad\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00122\u0007\u0010©\u0001\u001a\u00020\u00102\u0007\u0010ª\u0001\u001a\u00020\u00102\b\u0010¬\u0001\u001a\u00030«\u00012\u0007\u0010®\u0001\u001a\u00020\u0010J\u000f\u0010¯\u0001\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0012J\u0018\u0010°\u0001\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u00122\u0007\u0010\u0097\u0001\u001a\u00020\u0010J\u0018\u0010²\u0001\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u00122\u0007\u0010±\u0001\u001a\u00020\u0010J\u000f\u0010³\u0001\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0012J\u0010\u0010µ\u0001\u001a\u00030´\u00012\u0006\u0010\u001a\u001a\u00020\u0012J\u0019\u0010·\u0001\u001a\u00030´\u00012\u0007\u0010¶\u0001\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0004J\u0011\u0010¸\u0001\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u000f\u0010¹\u0001\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0012J\u0010\u0010º\u0001\u001a\u00020\u00142\u0007\u0010¶\u0001\u001a\u00020\u0010J\u000f\u0010º\u0001\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0012J\b\u0010¼\u0001\u001a\u00030»\u0001R\u0019\u0010¾\u0001\u001a\u00030»\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001b\u0010½\u0001R\u001a\u0010À\u0001\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\t\u0010¿\u0001R\u0018\u0010Â\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0013\u0010Á\u0001R\u0018\u0010Ã\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0017\u0010Á\u0001R\u0019\u0010Å\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÄ\u0001\u0010Á\u0001R\u001b\u0010È\u0001\u001a\u0005\u0018\u00010Æ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0018\u0010Ç\u0001R\u0017\u0010Ë\u0001\u001a\u00030É\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0019\u0010Ê\u0001R\u0017\u0010Î\u0001\u001a\u00020\u00048BX\u0082\u0004¢\u0006\b\u001a\u0006\bÌ\u0001\u0010Í\u0001R\u0016\u0010Ñ\u0001\u001a\u0004\u0018\u00010\u00108F¢\u0006\b\u001a\u0006\bÏ\u0001\u0010Ð\u0001R\u0014\u0010Ò\u0001\u001a\u00020\u00048F¢\u0006\b\u001a\u0006\bÒ\u0001\u0010Í\u0001¨\u0006Ö\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper;", "", "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;", "rootEntry", "", C6999h.f39688c, "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;", "root", "", "b", "Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;", "neoPdfOnyxTag", "l", "m", C4921e.f26537n, "j", "", "pageJdJson", "", "c", "Lcom/onyx/android/sdk/reader/api/PageId;", CouchFieldKey.KEY_TOC_PAGE_ID, "useJsonPageIndexIfValid", "d", C6997f.f39671c, C6998g.f39679a, "pageIndex", "a", "Lcom/onyx/android/sdk/reader/api/ReaderPluginOptions;", "pluginOptions", "init", "path", "password", "", "openDocument", "closeDocument", "reopenDocument", "fileId", "isNewDocument", CouchFieldKey.KEY_COMMIT_ID, "isExported", "supportCover", "isBlankContent", "beginLookupPageData", "page", "hasPageAnnotData", "endLookupPageData", "tag", "metadataString", "pageCount", "", "pageLabels", "", "size", "pageSize", "Landroid/graphics/Matrix;", "pageContentMatrix", "", "gamma", "setTextGamma", "", "table", "setTextGammaTable", "Lcom/onyx/android/sdk/reader/api/DrawArgs;", "drawArgs", "drawPage", "x", "y", "width", "height", "rotation", "startCharIndex", "endCharIndex", "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;", "selection", "text", "caseSensitive", "matchWholeWord", "contextLength", "", "list", "searchInPage", "isTextPage", "isOnyxPage", "getPageText", "hasPageText", "isComplexPage", "sentenceStartIndex", "Lcom/onyx/android/sdk/reader/api/ReaderSentence;", "getSentence", "getPageId", "getPageObjId", "getTableOfContent", "entry", "updateTocPageIndex", "getPageLinks", "link", "getDestPageIndex", "Landroid/graphics/PointF;", "getLinkHitTestPoint", "getDestUri", "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;", "", "ignoreObjIdList", "getPageRichMedias", "(ILjava/util/List;[Ljava/lang/String;)Z", "Lcom/onyx/android/sdk/reader/api/ReaderDrmCertificateFactory;", "factory", "activateDeviceDRM", "render", "setRenderFormFields", "getPageTextCharBoxes", "Lcom/onyx/android/sdk/neopdf/PdfCharInfo;", "pdfChar", "convertToReaderSelectionImpl", "Lcom/onyx/android/sdk/reader/common/ReaderCharInfo;", "getPageTextCharInfoList", "Landroid/graphics/RectF;", "getPageImageRegions", "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;", "highlights", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "shapes", "getPageAnnotations", "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfShape;", "shape", "saveShape", "writeShape", "updateShape", "Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;", "options", "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfHighlight;", "highlight", "saveHighlight", "writeHighlight", "updateHighlight", "highlightId", "removeHighlight", "objId", "removeHighlightByObjId", NotificationCompat.CarExtender.f4973i, "setAuthor", "savePagesWithAnnotation", "saveAs", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentWriter$SaveOptions;", "Lcom/onyx/android/sdk/neopdf/PdfCallback;", "pdfCallback", "setPdfCallback", "Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;", "args", "exportPages", "shapeId", "removeShape", "removeShapeByObjId", "hasOnyxBookmark", "Lcom/onyx/android/sdk/neopdf/PdfBookmark;", "getOnyxBookmark", SyncConstant.LOCAL_BOOKMARK_DIR_NAME, "addOnyxBookmark", "removeOnyxBookmark", "quality", "setDocumentSaveQuality", "supportNoteEmbeded", "insertPage", "removePage", "dstIndex", "movePage", "copyPage", "setPageId", "imageId", CouchFieldKey.KEY_RESOURCE_ID, "Landroid/graphics/Bitmap;", "bitmap", "setBackground", "extraAttr", "removeBackground", "getShapeObjId", "highlightObjId", "getHighlightObjId", "getPageIdJsonByPageIndex", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "positionByPageIndex", "pageIdJson", "positionByPositionString", "getPageIdJson", "getPageIdJsonHashCodeByPageIndex", "getPageIdObj", "Lcom/onyx/android/sdk/neopdf/NeoPdf;", "getNeoPdfNative", "Lcom/onyx/android/sdk/neopdf/NeoPdf;", "neoPdfNative", "Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;", "onyxTag", Constants.STRING_SIG, "certificate", Constant.TAG_DEVICE_ID, "e", "random", "Lcom/onyx/android/sdk/neopdf/PdfOpenResult;", "Lcom/onyx/android/sdk/neopdf/PdfOpenResult;", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;", "Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfPageCache;", "neoPdfPageCache", "i", Constants.BOOLEAN_VALUE_SIG, "isJEB", "getFileIdFromFile", "()Ljava/lang/String;", "fileIdFromFile", "isDamagedFile", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNeoPdfJniWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdfJniWrapper.kt\ncom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,844:1\n37#2,2:845\n37#2,2:847\n37#2,2:849\n1855#3,2:851\n1855#3,2:853\n1855#3,2:855\n1#4:857\n*S KotlinDebug\n*F\n+ 1 NeoPdfJniWrapper.kt\ncom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper\n*L\n169#1:845,2\n170#1:847,2\n171#1:849,2\n219#1:851,2\n310#1:853,2\n326#1:855,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NeoPdfJniWrapper {

    /* renamed from: i */
    public static long f45004i;

    /* renamed from: s */
    @NotNull
    public static final List<String> f45014s;

    /* renamed from: t */
    public static boolean f45015t;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public NeoPdfOnyxTag onyxTag;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public PdfOpenResult result;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: h */
    @NotNull
    public static final Class<?> f45003h = NeoPdfJniWrapper.class;

    /* renamed from: j */
    public static long f45005j = 1;

    /* renamed from: k */
    public static long f45006k = 2;

    /* renamed from: l */
    public static long f45007l = 3;

    /* renamed from: m */
    public static long f45008m = 4;

    /* renamed from: n */
    public static long f45009n = 5;

    /* renamed from: o */
    public static long f45010o = 6;

    /* renamed from: p */
    public static long f45011p = 1000;

    /* renamed from: q */
    public static long f45012q = NeoPdfNative.ERROR_SECURITY_ADOBE_DRM;

    /* renamed from: r */
    public static long f45013r = 2000;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public NeoPdf neoPdfNative = new NeoPdf();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String certificate = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String deviceId = "";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String random = "";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final NeoPdfPageCache neoPdfPageCache = new NeoPdfPageCache();

    @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u0015\u0010$\u001a\u0006\u0012\u0002\b\u00030%¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0014\u0010(\u001a\b\u0012\u0004\u0012\u00020*0)X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010+\u001a\u00020,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/plugins/neopdf/NeoPdfJniWrapper$Companion;", "", "()V", "ERROR_FILE_INVALID", "", "getERROR_FILE_INVALID", "()J", "setERROR_FILE_INVALID", "(J)V", "ERROR_FILE_NOT_FOUND", "getERROR_FILE_NOT_FOUND", "setERROR_FILE_NOT_FOUND", "ERROR_JD_DRM_INVALID", "getERROR_JD_DRM_INVALID", "setERROR_JD_DRM_INVALID", "ERROR_PAGE_NOT_FOUND", "getERROR_PAGE_NOT_FOUND", "setERROR_PAGE_NOT_FOUND", "ERROR_PASSWORD_INVALID", "getERROR_PASSWORD_INVALID", "setERROR_PASSWORD_INVALID", "ERROR_SECURITY", "getERROR_SECURITY", "setERROR_SECURITY", "ERROR_SECURITY_ADOBE_DRM", "getERROR_SECURITY_ADOBE_DRM", "setERROR_SECURITY_ADOBE_DRM", "ERROR_SECURITY_ONYX_DRM", "getERROR_SECURITY_ONYX_DRM", "setERROR_SECURITY_ONYX_DRM", "ERROR_UNKNOWN", "getERROR_UNKNOWN", "setERROR_UNKNOWN", "NO_ERROR", "getNO_ERROR", "setNO_ERROR", "TAG", "Ljava/lang/Class;", "getTAG", "()Ljava/lang/Class;", "blankCoverAppList", "", "", "enableAutoReleaseMemory", "", "getEnableAutoReleaseMemory", Constants.BOOLEAN_VALUE_SIG, "setEnableAutoReleaseMemory", "(Z)V", "checkOpenAndThrow", "", "errorCode", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void checkOpenAndThrow(long errorCode) {
            if (errorCode == getERROR_PASSWORD_INVALID()) {
                throw ReaderException.INSTANCE.passwordRequired();
            }
            if (errorCode == getERROR_UNKNOWN()) {
                throw ReaderException.INSTANCE.cannotOpen();
            }
            if (errorCode == getERROR_JD_DRM_INVALID()) {
                throw ReaderException.INSTANCE.jebDrmException();
            }
            if (errorCode == getERROR_SECURITY_ADOBE_DRM()) {
                throw ReaderException.INSTANCE.adobeDrmException();
            }
            boolean z = true;
            if (errorCode != getERROR_SECURITY() && errorCode != getERROR_SECURITY_ONYX_DRM()) {
                z = false;
            }
            if (!z) {
                throw ReaderException.INSTANCE.cannotOpen();
            }
            throw ReaderException.INSTANCE.drmException();
        }

        public final long getERROR_FILE_INVALID() {
            return NeoPdfJniWrapper.f45007l;
        }

        public final long getERROR_FILE_NOT_FOUND() {
            return NeoPdfJniWrapper.f45006k;
        }

        public final long getERROR_JD_DRM_INVALID() {
            return NeoPdfJniWrapper.f45013r;
        }

        public final long getERROR_PAGE_NOT_FOUND() {
            return NeoPdfJniWrapper.f45010o;
        }

        public final long getERROR_PASSWORD_INVALID() {
            return NeoPdfJniWrapper.f45008m;
        }

        public final long getERROR_SECURITY() {
            return NeoPdfJniWrapper.f45009n;
        }

        public final long getERROR_SECURITY_ADOBE_DRM() {
            return NeoPdfJniWrapper.f45012q;
        }

        public final long getERROR_SECURITY_ONYX_DRM() {
            return NeoPdfJniWrapper.f45011p;
        }

        public final long getERROR_UNKNOWN() {
            return NeoPdfJniWrapper.f45005j;
        }

        public final boolean getEnableAutoReleaseMemory() {
            return NeoPdfJniWrapper.f45015t;
        }

        public final long getNO_ERROR() {
            return NeoPdfJniWrapper.f45004i;
        }

        @NotNull
        public final Class<?> getTAG() {
            return NeoPdfJniWrapper.f45003h;
        }

        public final void setERROR_FILE_INVALID(long j) {
            NeoPdfJniWrapper.f45007l = j;
        }

        public final void setERROR_FILE_NOT_FOUND(long j) {
            NeoPdfJniWrapper.f45006k = j;
        }

        public final void setERROR_JD_DRM_INVALID(long j) {
            NeoPdfJniWrapper.f45013r = j;
        }

        public final void setERROR_PAGE_NOT_FOUND(long j) {
            NeoPdfJniWrapper.f45010o = j;
        }

        public final void setERROR_PASSWORD_INVALID(long j) {
            NeoPdfJniWrapper.f45008m = j;
        }

        public final void setERROR_SECURITY(long j) {
            NeoPdfJniWrapper.f45009n = j;
        }

        public final void setERROR_SECURITY_ADOBE_DRM(long j) {
            NeoPdfJniWrapper.f45012q = j;
        }

        public final void setERROR_SECURITY_ONYX_DRM(long j) {
            NeoPdfJniWrapper.f45011p = j;
        }

        public final void setERROR_UNKNOWN(long j) {
            NeoPdfJniWrapper.f45005j = j;
        }

        public final void setEnableAutoReleaseMemory(boolean z) {
            NeoPdfJniWrapper.f45015t = z;
        }

        public final void setNO_ERROR(long j) {
            NeoPdfJniWrapper.f45004i = j;
        }

        public Companion() {
        }
    }

    static {
        List<String> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf("com.onyx.android.note");
        f45014s = mutableListOf;
        f45015t = true;
    }

    /* renamed from: e */
    public static /* synthetic */ int m34752e(NeoPdfJniWrapper neoPdfJniWrapper, PageId pageId, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return neoPdfJniWrapper.m34756d(pageId, z);
    }

    /* renamed from: a */
    public final void m34753a(int pageIndex) {
        this.neoPdfPageCache.beforeGetPageText(pageIndex, new Function0<Unit>() { // from class: com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfJniWrapper$beforeGetPageText$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                NeoPdfJniWrapper.this.reopenDocument();
            }
        });
    }

    public final boolean activateDeviceDRM(@NotNull ReaderDrmCertificateFactory factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.deviceId = StringKt.safelyGetStr(factory.getDeviceId());
        this.certificate = StringKt.safelyGetStr(factory.getDrmCertificate());
        this.random = StringKt.safelyGetStr(factory.getRandom());
        return true;
    }

    public final boolean addOnyxBookmark(int page, @NotNull PdfBookmark bookmark) {
        Intrinsics.checkNotNullParameter(bookmark, "bookmark");
        return this.neoPdfNative.addOnyxBookmark(page, bookmark);
    }

    /* renamed from: b */
    public final void m34754b(PdfTocEntry rootEntry, ReaderDocumentTableOfContentEntry root) {
        boolean z = true;
        root.setSortByPageIndex(true);
        List<PdfTocEntry> children = rootEntry.getChildren();
        List<PdfTocEntry> list = children;
        if (list != null && !list.isEmpty()) {
            z = false;
        }
        if (z) {
            return;
        }
        for (PdfTocEntry pdfTocEntry : children) {
            ReaderDocumentTableOfContentEntry readerDocumentTableOfContentEntry = new ReaderDocumentTableOfContentEntry(StringKt.safelyGetStr(pdfTocEntry.getTitle()), pdfTocEntry.getPage(), null, null, false, false, false, pdfTocEntry.getEntryPtr(), false, null, 892, null);
            root.getChildren().add(readerDocumentTableOfContentEntry);
            m34754b(pdfTocEntry, readerDocumentTableOfContentEntry);
        }
    }

    public final void beginLookupPageData() {
        this.neoPdfNative.beginLookupPageData();
    }

    /* renamed from: c */
    public final int m34755c(String pageJdJson) {
        if (pageJdJson == null || pageJdJson.length() == 0) {
            return -1;
        }
        return pageJdJson.hashCode();
    }

    public final boolean closeDocument() {
        boolean closeDocument = this.neoPdfNative.closeDocument();
        Debug.INSTANCE.m32035d(NeoPdfJniWrapper.class, "closeDocument result = " + closeDocument + ", " + Thread.currentThread().getName(), new Object[0]);
        this.result = null;
        return closeDocument;
    }

    @NotNull
    public final String commitId() {
        NeoPdfOnyxTag neoPdfOnyxTag = this.onyxTag;
        return StringKt.safelyGetStr(neoPdfOnyxTag != null ? neoPdfOnyxTag.getCommitId() : null);
    }

    @NotNull
    public final ReaderSelectionImpl convertToReaderSelectionImpl(int page, @NotNull PdfCharInfo pdfChar) {
        Intrinsics.checkNotNullParameter(pdfChar, "pdfChar");
        ReaderSelectionImpl readerSelectionImpl = new ReaderSelectionImpl();
        readerSelectionImpl.setPageIndex(page);
        readerSelectionImpl.setText(pdfChar.getText());
        readerSelectionImpl.getRectList().add(pdfChar.getRect());
        readerSelectionImpl.getCharRectList().add(pdfChar.getRect());
        return readerSelectionImpl;
    }

    public final boolean copyPage(int pageIndex, int dstIndex) {
        return this.neoPdfNative.copyPage(pageIndex, dstIndex);
    }

    /* renamed from: d */
    public final int m34756d(PageId pageId, boolean useJsonPageIndexIfValid) {
        if (!PageIdKt.isValidId(pageId)) {
            Debug.INSTANCE.m32059w(NeoPdfJniWrapper.class, "invalid pageId", new Object[0]);
            return -1;
        }
        if (useJsonPageIndexIfValid && PageInfoUtils.INSTANCE.isValidPage(pageId.getPageIndex())) {
            return pageId.getPageIndex();
        }
        int m34758g = m34758g(pageId);
        PageInfoUtils pageInfoUtils = PageInfoUtils.INSTANCE;
        if (pageInfoUtils.isValidPage(m34758g)) {
            return m34758g;
        }
        int m34757f = m34757f(pageId);
        if (pageInfoUtils.isValidPage(m34757f)) {
            return m34757f;
        }
        if (pageInfoUtils.isValidPage(pageId.getPageIndex())) {
            Debug.INSTANCE.m32059w(NeoPdfJniWrapper.class, "load page index by memory fail, use pageId.pageIndex, pageId = " + pageId, new Object[0]);
            return pageId.getPageIndex();
        }
        Debug.INSTANCE.m32059w(NeoPdfJniWrapper.class, "invalid page index, pageId = " + pageId, new Object[0]);
        return -1;
    }

    public final boolean drawPage(@NotNull DrawArgs drawArgs) {
        Intrinsics.checkNotNullParameter(drawArgs, "drawArgs");
        int pageIndex = drawArgs.getPagePosition().getPageIndex();
        this.neoPdfNative.setAnnotRenderIgnoreList(pageIndex, (String[]) drawArgs.getShapeIdArray().toArray(new String[0]), (String[]) drawArgs.getHighlightIdArray().toArray(new String[0]), (String[]) drawArgs.getObjIdArray().toArray(new String[0]));
        RectF displayRect = drawArgs.getDisplayRect();
        int i = !drawArgs.getAntialias() ? 1 : 0;
        this.neoPdfPageCache.beforeRenderPage(pageIndex, new Function0<Unit>() { // from class: com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfJniWrapper$drawPage$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                NeoPdfJniWrapper.this.reopenDocument();
            }
        });
        return this.neoPdfNative.renderPage(pageIndex, (int) displayRect.left, (int) displayRect.top, (int) displayRect.width(), (int) displayRect.height(), drawArgs.getRotation() / 90, i, drawArgs.getBitmap());
    }

    public final void endLookupPageData() {
        this.neoPdfNative.endLookupPageData();
    }

    public final boolean exportPages(@NotNull ReaderExportArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        ReaderDocumentWriter.SaveOptions saveOptions = new ReaderDocumentWriter.SaveOptions(null, false, false, 7, null);
        saveOptions.setFileId(args.getFileId());
        boolean z = true;
        saveOptions.setExporting(true);
        saveOptions.setExportOnlyPagesWithAnnotations(false);
        NeoPdfOnyxTag neoPdfOnyxTag = new NeoPdfOnyxTag(saveOptions.getFileId(), null, saveOptions.getExporting(), null, 10, null);
        m34764m(neoPdfOnyxTag);
        if (!this.neoPdfNative.setOnyxTagMetadata(NeoPdfOnyxTag.PDF_METADATA_KEY, StringKt.safelyGetStr(JSONUtils.INSTANCE.toJson(neoPdfOnyxTag)))) {
            return false;
        }
        NeoPdf neoPdf = new NeoPdf();
        try {
            PdfImportContext pdfImportContext = new PdfImportContext(new int[0]);
            if (!neoPdf.createNewDocument(args.getOutputPath()) || neoPdf.importPages(pdfImportContext, this.neoPdfNative.getFilePath(), args.getPages(), 0, args.getSourceFilePassword()) == null || !NeoPdf.save$default(neoPdf, null, 1, null)) {
                z = false;
            }
            if (z) {
                PdfUtils pdfUtils = PdfUtils.INSTANCE;
                NeoPdf neoPdf2 = this.neoPdfNative;
                pdfUtils.updateExportPdfLinks(neoPdf2, neoPdf, neoPdf2.getFilePath(), args.getPages());
            }
            return z;
        } finally {
            neoPdf.closeDocument();
        }
    }

    /* renamed from: f */
    public final int m34757f(PageId pageId) {
        String pageReferenceId = pageId.getPageReferenceId();
        if (!StringKt.isNotBlank(pageReferenceId)) {
            return -1;
        }
        if (this.neoPdfNative.isDummyPageObjId(pageReferenceId)) {
            return this.neoPdfNative.getPageIndexByDummyPageObjId(pageReferenceId);
        }
        return this.neoPdfNative.getPageIndexByObjId(new String[]{pageReferenceId})[0];
    }

    @NotNull
    public final String fileId() {
        NeoPdfOnyxTag neoPdfOnyxTag = this.onyxTag;
        return StringKt.safelyGetStr(neoPdfOnyxTag != null ? neoPdfOnyxTag.getId() : null);
    }

    /* renamed from: g */
    public final int m34758g(PageId pageId) {
        String pageUUID = pageId.getPageUUID();
        if (!StringKt.isNotBlank(pageUUID)) {
            return -1;
        }
        return this.neoPdfNative.getPageIndexById(new String[]{pageUUID})[0];
    }

    public final int getDestPageIndex(@NotNull ReaderSelectionImpl link) {
        Intrinsics.checkNotNullParameter(link, "link");
        int pageIndex = link.getPageIndex();
        if (link.getRectList().size() <= 0) {
            return -1;
        }
        return this.neoPdfNative.getLinkPageAtPoint(pageIndex, getLinkHitTestPoint(link), true);
    }

    @NotNull
    public final String getDestUri(@NotNull ReaderSelectionImpl link) {
        Intrinsics.checkNotNullParameter(link, "link");
        int pageIndex = link.getPageIndex();
        if (link.getRectList().size() <= 0) {
            return "";
        }
        return this.neoPdfNative.getLinkDestAtPoint(pageIndex, getLinkHitTestPoint(link), true);
    }

    @Nullable
    public final String getFileIdFromFile() {
        NeoPdfOnyxTag m34761j = m34761j();
        if (m34761j != null) {
            return m34761j.getId();
        }
        return null;
    }

    @NotNull
    public final String getHighlightObjId(int page, @NotNull String highlightObjId) {
        Intrinsics.checkNotNullParameter(highlightObjId, "highlightObjId");
        return StringKt.safelyGetStr(this.neoPdfNative.getHighlightObjId(page, highlightObjId));
    }

    @NotNull
    public final PointF getLinkHitTestPoint(@NotNull ReaderSelectionImpl link) {
        Intrinsics.checkNotNullParameter(link, "link");
        return new PointF(link.getRectList().get(0).centerX(), link.getRectList().get(0).centerY());
    }

    @NotNull
    public final NeoPdf getNeoPdfNative() {
        return this.neoPdfNative;
    }

    @Nullable
    public final PdfBookmark getOnyxBookmark(int page) {
        return this.neoPdfNative.getOnyxBookmark(page);
    }

    public final boolean getPageAnnotations(int page, @NotNull List<PdfHighlightInfo> highlights, @NotNull List<PdfShapeInfo> shapes) {
        Intrinsics.checkNotNullParameter(highlights, "highlights");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        return this.neoPdfNative.getPageAnnotations(page, highlights, shapes);
    }

    @NotNull
    public final String getPageId(int page) {
        return StringKt.safelyGetStr(this.neoPdfNative.getPageId(page));
    }

    @NotNull
    public final String getPageIdJson(@Nullable PageId pageId) {
        return StringKt.safelyGetStr(JSONUtils.INSTANCE.toJson(pageId));
    }

    @NotNull
    public final String getPageIdJsonByPageIndex(int pageIndex) {
        return !PageInfoUtils.INSTANCE.isValidPage(pageIndex) ? "" : getPageIdJson(getPageIdObj(pageIndex));
    }

    public final int getPageIdJsonHashCodeByPageIndex(int pageIndex) {
        if (PageInfoUtils.INSTANCE.isValidPage(pageIndex)) {
            return m34755c(getPageIdJsonByPageIndex(pageIndex));
        }
        return -1;
    }

    @NotNull
    public final PageId getPageIdObj(@NotNull String pageIdJson) {
        Intrinsics.checkNotNullParameter(pageIdJson, "pageIdJson");
        PageId pageId = (PageId) JSONUtils.INSTANCE.parseObjectQuietly(pageIdJson, PageId.class, new JSONReader.Feature[0]);
        if (pageId != null) {
            return pageId;
        }
        Debug.INSTANCE.m32059w(NeoPdfJniWrapper.class, "invalid pageIdJson = " + pageIdJson, new Object[0]);
        return new PageId(null, null, 0, 7, null);
    }

    public final boolean getPageImageRegions(int page, @NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return this.neoPdfNative.getPageImageRegions(page, list);
    }

    public final boolean getPageLinks(int pageIndex, @NotNull List<ReaderSelectionImpl> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        if (!this.neoPdfNative.getPageLinks(pageIndex, arrayList, true)) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            PdfTextSelection selection = ((PdfLink) it2.next()).selection;
            if (selection != null) {
                ReaderSelectionImpl.Companion companion = ReaderSelectionImpl.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(selection, "selection");
                list.add(ReaderSelectionImplKt.create(companion, selection));
            }
        }
        return true;
    }

    @NotNull
    public final String getPageObjId(int pageIndex) {
        return StringKt.safelyGetStr(this.neoPdfNative.getPageObjId(pageIndex));
    }

    public final boolean getPageRichMedias(int page, @NotNull List<ReaderRichMedia> list, @NotNull String[] ignoreObjIdList) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(ignoreObjIdList, "ignoreObjIdList");
        if (m34760i()) {
            return false;
        }
        ArrayList<PdfRichMediaObject> arrayList = new ArrayList();
        if (!this.neoPdfNative.getPageRichMedias(page, arrayList, ignoreObjIdList)) {
            return false;
        }
        for (PdfRichMediaObject pdfRichMediaObject : arrayList) {
            ReaderRichMediaImpl.Companion companion = ReaderRichMediaImpl.INSTANCE;
            String name = pdfRichMediaObject.getName();
            Intrinsics.checkNotNull(name);
            RectF rect = pdfRichMediaObject.getRect();
            Intrinsics.checkNotNull(rect);
            byte[] data = pdfRichMediaObject.getData();
            Intrinsics.checkNotNull(data);
            companion.addToList(list, name, rect, data);
        }
        return true;
    }

    @NotNull
    public final String getPageText(int page) {
        m34753a(page);
        return this.neoPdfNative.getPageText(page, false);
    }

    @NotNull
    public final List<ReaderSelectionImpl> getPageTextCharBoxes(final int page) {
        Sequence asSequence;
        Sequence map;
        List<ReaderSelectionImpl> mutableList;
        ArrayList arrayList = new ArrayList();
        if (!this.neoPdfNative.getPageTextCharBoxes(page, arrayList)) {
            return new ArrayList();
        }
        asSequence = CollectionsKt___CollectionsKt.asSequence(arrayList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<PdfCharInfo, ReaderSelectionImpl>() { // from class: com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfJniWrapper$getPageTextCharBoxes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ReaderSelectionImpl invoke(@NotNull PdfCharInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return NeoPdfJniWrapper.this.convertToReaderSelectionImpl(page, it2);
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map);
        return mutableList;
    }

    @NotNull
    public final List<ReaderCharInfo> getPageTextCharInfoList(int page) {
        Sequence asSequence;
        Sequence map;
        List<ReaderCharInfo> mutableList;
        ArrayList arrayList = new ArrayList();
        if (!this.neoPdfNative.getPageTextCharBoxes(page, arrayList)) {
            return new ArrayList();
        }
        asSequence = CollectionsKt___CollectionsKt.asSequence(arrayList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<PdfCharInfo, ReaderCharInfo>() { // from class: com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfJniWrapper$getPageTextCharInfoList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ReaderCharInfo invoke(@NotNull PdfCharInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new ReaderCharInfo(it2.getText(), RectFKt.copy(it2.getRect()));
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map);
        return mutableList;
    }

    @Nullable
    public final ReaderSentence getSentence(int page, int sentenceStartIndex) {
        return new ReaderSentence(new ReaderSelectionImpl(), positionByPageIndex(page), false, false, 12, null);
    }

    @NotNull
    public final String getShapeObjId(int page, @NotNull String shapeId) {
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        return StringKt.safelyGetStr(this.neoPdfNative.getShapeObjId(page, shapeId));
    }

    public final boolean getTableOfContent(@NotNull ReaderDocumentTableOfContentEntry root) {
        Intrinsics.checkNotNullParameter(root, "root");
        PdfTocEntry pdfTocEntry = new PdfTocEntry(0L, null, 0, null, 15, null);
        if ((NeoPdfReaderPlugin.INSTANCE.isCajExtension(this.neoPdfNative.getFilePath()) && !m34759h(pdfTocEntry)) || !this.neoPdfNative.getTableOfContent(pdfTocEntry)) {
            return false;
        }
        m34754b(pdfTocEntry, root);
        return true;
    }

    /* renamed from: h */
    public final boolean m34759h(PdfTocEntry rootEntry) {
        NeoCajNative neoCajNative = NeoCajNative.INSTANCE;
        long openDocument = neoCajNative.openDocument(this.neoPdfNative.getFilePath());
        if (openDocument == 0) {
            return false;
        }
        try {
            if (neoCajNative.getTocTree(openDocument, rootEntry)) {
                neoCajNative.closeDocument(openDocument);
                return true;
            }
            neoCajNative.closeDocument(openDocument);
            return false;
        } catch (Throwable th) {
            NeoCajNative.INSTANCE.closeDocument(openDocument);
            throw th;
        }
    }

    public final boolean hasOnyxBookmark(int page) {
        return this.neoPdfNative.hasOnyxBookmark(page);
    }

    public final boolean hasPageAnnotData(int page) {
        return this.neoPdfNative.lookUpPageAnnotData(page);
    }

    public final boolean hasPageText(int page) {
        return StringKt.isNotBlank(this.neoPdfNative.getPageText(page, true));
    }

    /* renamed from: i */
    public final boolean m34760i() {
        return NeoPdfReaderPlugin.INSTANCE.isJEB(this.neoPdfNative.getFilePath());
    }

    public final void init(@NotNull ReaderPluginOptions pluginOptions) {
        Intrinsics.checkNotNullParameter(pluginOptions, "pluginOptions");
        NeoPdfNative.INSTANCE.ensureInitialized(pluginOptions.getFontDirectories());
    }

    public final boolean insertPage(int pageIndex, @NotNull String pageId, float width, float height) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return this.neoPdfNative.insertPage(pageIndex, pageId, width, height);
    }

    public final boolean isBlankContent() {
        boolean contains;
        List<String> list = f45014s;
        NeoPdfOnyxTag neoPdfOnyxTag = this.onyxTag;
        contains = CollectionsKt___CollectionsKt.contains(list, neoPdfOnyxTag != null ? neoPdfOnyxTag.getApp() : null);
        return contains;
    }

    public final boolean isComplexPage(int page) {
        return this.neoPdfNative.isComplexPage(page);
    }

    public final boolean isDamagedFile() {
        PdfOpenResult pdfOpenResult = this.result;
        if (pdfOpenResult != null) {
            Intrinsics.checkNotNull(pdfOpenResult);
            if (!pdfOpenResult.isXrefValid()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isExported() {
        NeoPdfOnyxTag neoPdfOnyxTag = this.onyxTag;
        if (neoPdfOnyxTag != null) {
            return neoPdfOnyxTag.getExported();
        }
        return false;
    }

    public final boolean isNewDocument() {
        return this.onyxTag == null;
    }

    public final boolean isOnyxPage(int page) {
        return this.neoPdfNative.isOnyxPage(page);
    }

    public final boolean isTextPage(int page) {
        return this.neoPdfNative.isTextPage(page);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0018 A[Catch: Exception -> 0x0024, TRY_LEAVE, TryCatch #0 {Exception -> 0x0024, blocks: (B:3:0x0001, B:5:0x000b, B:13:0x0018), top: B:2:0x0001 }] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.neopdf.NeoPdfOnyxTag m34761j() {
        /*
            r3 = this;
            r0 = 0
            com.onyx.android.sdk.neopdf.NeoPdf r3 = r3.neoPdfNative     // Catch: java.lang.Exception -> L24
            java.lang.String r1 = "onyxtag"
            java.lang.String r3 = r3.getOnyxTagMetadata(r1)     // Catch: java.lang.Exception -> L24
            if (r3 == 0) goto L14
            int r1 = r3.length()     // Catch: java.lang.Exception -> L24
            if (r1 != 0) goto L12
            goto L14
        L12:
            r1 = 0
            goto L15
        L14:
            r1 = 1
        L15:
            if (r1 == 0) goto L18
            goto L23
        L18:
            com.onyx.android.sdk.neopdf.lib.JSONUtils r1 = com.onyx.android.sdk.neopdf.lib.JSONUtils.INSTANCE     // Catch: java.lang.Exception -> L24
            java.lang.Class<com.onyx.android.sdk.neopdf.NeoPdfOnyxTag> r2 = com.onyx.android.sdk.neopdf.NeoPdfOnyxTag.class
            java.lang.Object r3 = r1.parseObject(r3, r2)     // Catch: java.lang.Exception -> L24
            com.onyx.android.sdk.neopdf.NeoPdfOnyxTag r3 = (com.onyx.android.sdk.neopdf.NeoPdfOnyxTag) r3     // Catch: java.lang.Exception -> L24
            r0 = r3
        L23:
            return r0
        L24:
            r3 = move-exception
            com.onyx.android.sdk.base.utils.Debug r1 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            r1.m32048e(r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.plugins.neopdf.NeoPdfJniWrapper.m34761j():com.onyx.android.sdk.neopdf.NeoPdfOnyxTag");
    }

    /* renamed from: k */
    public final void m34762k() {
        try {
            this.neoPdfNative.setRenderOnyxAnnotations(true);
            NeoPdfOnyxTag m34761j = m34761j();
            this.onyxTag = m34761j;
            if (m34761j != null) {
                Intrinsics.checkNotNull(m34761j);
                if (m34761j.getExported()) {
                    this.neoPdfNative.setExported(true);
                }
            }
        } catch (Throwable th) {
            Debug.INSTANCE.m32060w(NeoPdfJniWrapper.class, th);
        }
    }

    /* renamed from: l */
    public final void m34763l(NeoPdfOnyxTag neoPdfOnyxTag) {
        NeoPdfOnyxTag neoPdfOnyxTag2 = this.onyxTag;
        if (neoPdfOnyxTag2 != null) {
            neoPdfOnyxTag.setApp(neoPdfOnyxTag2.getApp());
        }
    }

    /* renamed from: m */
    public final void m34764m(NeoPdfOnyxTag neoPdfOnyxTag) {
        neoPdfOnyxTag.setCommitId(CommitIdUtils.INSTANCE.generateCommitId());
    }

    @NotNull
    public final String metadataString(@Nullable String tag) {
        return this.neoPdfNative.metadata(StringKt.safelyGetStr(tag));
    }

    public final boolean movePage(int pageIndex, int dstIndex) {
        return this.neoPdfNative.movePage(pageIndex, dstIndex);
    }

    public final long openDocument(@NotNull String path, @NotNull String password) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(password, "password");
        boolean isNotBlank = StringKt.isNotBlank(this.certificate);
        PdfOpenOptions pdfOpenOptions = new PdfOpenOptions();
        if (NeoPdfReaderPlugin.INSTANCE.isJEB(path)) {
            if (!isNotBlank) {
                return f45013r;
            }
            JebDrmBuilder jebDrmBuilder = PdfDrmOptions.INSTANCE.jebDrmBuilder();
            jebDrmBuilder.setBookKey(StringKt.safelyGetStr(this.certificate));
            jebDrmBuilder.setBookKeyLen(jebDrmBuilder.getBookKey().length());
            jebDrmBuilder.setUuid(StringKt.safelyGetStr(this.deviceId));
            jebDrmBuilder.setRand(StringKt.safelyGetStr(this.random));
            pdfOpenOptions.setDrmOptions(jebDrmBuilder.build());
        } else if (isNotBlank) {
            OnyxDrmBuilder onyxDrmBuilder = PdfDrmOptions.INSTANCE.onyxDrmBuilder();
            onyxDrmBuilder.setCertificate(StringKt.safelyGetStr(this.certificate));
            onyxDrmBuilder.setDeviceId(StringKt.safelyGetStr(this.deviceId));
            pdfOpenOptions.setDrmOptions(onyxDrmBuilder.build());
        } else if (StringKt.isNotBlank(password)) {
            PdfPasswordBuilder passwordBuilder = PdfDrmOptions.INSTANCE.passwordBuilder();
            passwordBuilder.setPassword(password);
            pdfOpenOptions.setDrmOptions(passwordBuilder.build());
        }
        PdfOpenResult pdfOpenResult = new PdfOpenResult(0, false, false, 7, null);
        this.neoPdfNative.openDocument(path, pdfOpenOptions, pdfOpenResult);
        Debug.INSTANCE.m32052i(NeoPdfJniWrapper.class, "open path = " + path + ", " + pdfOpenResult + ", " + Thread.currentThread().getName(), new Object[0]);
        long openCode = (long) pdfOpenResult.getOpenCode();
        if (openCode != 0) {
            return openCode;
        }
        this.result = pdfOpenResult;
        m34762k();
        return 0L;
    }

    @Nullable
    public final Matrix pageContentMatrix(int page) {
        return this.neoPdfNative.getPageContentMatrix(page);
    }

    public final int pageCount() {
        return this.neoPdfNative.pageCount();
    }

    @NotNull
    public final List<String> pageLabels() {
        List<String> list;
        list = ArraysKt___ArraysKt.toList(this.neoPdfNative.pageLabels());
        return list;
    }

    public final boolean pageSize(int page, @NotNull float[] size) {
        Intrinsics.checkNotNullParameter(size, "size");
        return this.neoPdfNative.pageSize(page, size);
    }

    @NotNull
    public final ReaderPosition positionByPageIndex(int pageIndex) {
        if (!PageInfoUtils.INSTANCE.isValidPage(pageIndex)) {
            return ReaderPositionImpl.INSTANCE.getDummy();
        }
        String pageIdJsonByPageIndex = getPageIdJsonByPageIndex(pageIndex);
        return new ReaderPositionImpl().fromString(pageIdJsonByPageIndex).fromPageIndex(pageIndex).fromInteger(m34755c(pageIdJsonByPageIndex));
    }

    @NotNull
    public final ReaderPosition positionByPositionString(@NotNull String pageIdJson, boolean useJsonPageIndexIfValid) {
        Intrinsics.checkNotNullParameter(pageIdJson, "pageIdJson");
        int m34756d = m34756d(getPageIdObj(pageIdJson), useJsonPageIndexIfValid);
        if (!PageInfoUtils.INSTANCE.isValidPage(m34756d)) {
            return ReaderPositionImpl.INSTANCE.getDummy();
        }
        return new ReaderPositionImpl().fromString(pageIdJson).fromPageIndex(m34756d).fromInteger(m34755c(pageIdJson));
    }

    public final boolean removeBackground(int page) {
        return this.neoPdfNative.removeBackground(page);
    }

    public final boolean removeHighlight(int page, @NotNull String highlightId) {
        Intrinsics.checkNotNullParameter(highlightId, "highlightId");
        return this.neoPdfNative.removeHighlight(page, highlightId);
    }

    public final boolean removeHighlightByObjId(int page, @NotNull String objId) {
        Intrinsics.checkNotNullParameter(objId, "objId");
        return this.neoPdfNative.removeHighlightByObjId(page, objId);
    }

    public final boolean removeOnyxBookmark(int page) {
        return this.neoPdfNative.removeOnyxBookmark(page);
    }

    public final boolean removePage(int pageIndex) {
        return this.neoPdfNative.removePage(pageIndex);
    }

    public final boolean removeShape(int page, @NotNull String shapeId) {
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        return this.neoPdfNative.removeShape(page, shapeId);
    }

    public final boolean removeShapeByObjId(int page, @NotNull String objId) {
        Intrinsics.checkNotNullParameter(objId, "objId");
        return this.neoPdfNative.removeShapeByObjId(page, objId);
    }

    public final boolean reopenDocument() {
        String filePath = this.neoPdfNative.getFilePath();
        PdfOpenOptions openOptions = this.neoPdfNative.getOpenOptions();
        Intrinsics.checkNotNull(openOptions);
        this.neoPdfNative.closeDocument();
        long openDocument = this.neoPdfNative.openDocument(filePath, openOptions);
        m34762k();
        return openDocument == 0;
    }

    public final boolean saveAs(@NotNull String path, boolean savePagesWithAnnotation) {
        Intrinsics.checkNotNullParameter(path, "path");
        ReaderDocumentWriter.SaveOptions saveOptions = new ReaderDocumentWriter.SaveOptions(null, false, false, 7, null);
        saveOptions.setExporting(!Intrinsics.areEqual(this.neoPdfNative.getFilePath(), path));
        saveOptions.setExportOnlyPagesWithAnnotations(savePagesWithAnnotation);
        return saveAs(path, saveOptions);
    }

    public final boolean saveHighlight(int page, @NotNull NeoPdfHighlight highlight) {
        Intrinsics.checkNotNullParameter(highlight, "highlight");
        String objId = highlight.getHighlight().getObjId();
        return objId == null || objId.length() == 0 ? writeHighlight(page, highlight) : updateHighlight(page, highlight);
    }

    public final boolean saveShape(int page, @NotNull NeoPdfShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        String objId = shape.getPdfShape().getObjId();
        return objId == null || objId.length() == 0 ? writeShape(page, shape) : updateShape(page, shape);
    }

    public final void searchInPage(int page, int x, int y, int width, int height, int rotation, @NotNull String text, boolean caseSensitive, boolean matchWholeWord, int contextLength, @NotNull List<ReaderSelectionImpl> list) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(list, "list");
        Debug.INSTANCE.m32035d(f45003h, "searching in page: " + page + ", " + text, new Object[0]);
        m34753a(page);
        ArrayList arrayList = new ArrayList();
        this.neoPdfNative.searchInPage(page, x, y, width, height, rotation, text, caseSensitive, matchWholeWord, contextLength, arrayList);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            list.add(ReaderSelectionImplKt.create(ReaderSelectionImpl.INSTANCE, (PdfTextSelection) it2.next()));
        }
        Debug.INSTANCE.m32035d(f45003h, "searched results: " + list.size(), new Object[0]);
    }

    public final int selection(int page, int x, int y, int width, int height, int rotation, int startCharIndex, int endCharIndex, @NotNull ReaderSelectionImpl selection) {
        Intrinsics.checkNotNullParameter(selection, "selection");
        PdfTextSelection pdfTextSelection = new PdfTextSelection();
        int selection2 = this.neoPdfNative.selection(page, x, y, width, height, rotation, startCharIndex, endCharIndex, pdfTextSelection);
        List<RectF> rectangles = pdfTextSelection.rectangles;
        Intrinsics.checkNotNullExpressionValue(rectangles, "rectangles");
        selection.setRectList(rectangles);
        String str = pdfTextSelection.text;
        if (str == null) {
            str = "";
        }
        selection.setText(str);
        selection.setSelectionRange(PageRange.INSTANCE.createSelectionRange(pdfTextSelection.startIndex, pdfTextSelection.endIndex));
        return selection2;
    }

    public final boolean setAuthor(@Nullable String author) {
        this.neoPdfNative.getSaveOptions().setAuthor(author);
        return true;
    }

    public final boolean setBackground(int page, @NotNull String imageId, @NotNull String resourceId, @NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(resourceId, "resourceId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return this.neoPdfNative.setBackground(page, imageId, resourceId, bitmap);
    }

    public final void setDocumentSaveQuality(int quality) {
        this.neoPdfNative.getSaveOptions().setSaveQuality(quality);
    }

    public final boolean setPageId(int pageIndex, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return this.neoPdfNative.setPageId(pageIndex, pageId);
    }

    public final void setPdfCallback(@NotNull PdfCallback pdfCallback) {
        Intrinsics.checkNotNullParameter(pdfCallback, "pdfCallback");
        this.neoPdfNative.setCallback(pdfCallback);
    }

    public final void setRenderFormFields(boolean render) {
        this.neoPdfNative.setRenderFormFields(render);
    }

    public final void setTextGamma(float gamma) {
        this.neoPdfNative.setTextGamma(gamma);
    }

    public final void setTextGammaTable(@NotNull int[] table) {
        Intrinsics.checkNotNullParameter(table, "table");
        this.neoPdfNative.setTextGammaTable(table);
    }

    public final boolean supportCover() {
        boolean contains;
        List<String> list = f45014s;
        NeoPdfOnyxTag neoPdfOnyxTag = this.onyxTag;
        contains = CollectionsKt___CollectionsKt.contains(list, neoPdfOnyxTag != null ? neoPdfOnyxTag.getApp() : null);
        return !contains;
    }

    public final boolean supportNoteEmbeded() {
        PdfOpenResult pdfOpenResult = this.result;
        if (pdfOpenResult != null) {
            return pdfOpenResult.isXrefValid();
        }
        return false;
    }

    public final boolean updateHighlight(int page, @NotNull NeoPdfHighlight highlight) {
        Intrinsics.checkNotNullParameter(highlight, "highlight");
        return this.neoPdfNative.updateHighlight(page, highlight.getHighlight());
    }

    public final boolean updateShape(int page, @NotNull NeoPdfShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return NeoPdf.updateShape$default(this.neoPdfNative, page, shape.getPdfShape(), null, 4, null);
    }

    public final void updateTocPageIndex(@NotNull ReaderDocumentTableOfContentEntry entry) {
        int page;
        Intrinsics.checkNotNullParameter(entry, "entry");
        PdfTocEntry pdfTocEntry = new PdfTocEntry(0L, null, 0, null, 15, null);
        pdfTocEntry.setEntryPtr(entry.getTocEntryPtr());
        if (NeoPdfReaderPlugin.INSTANCE.isCajExtension(this.neoPdfNative.getFilePath())) {
            page = entry.getPageIndex();
        } else {
            PdfTocEntry.INSTANCE.updateTocEntryDestPage(this.neoPdfNative, pdfTocEntry, false);
            page = pdfTocEntry.getPage();
        }
        entry.setPageIndex(page);
        entry.setPosition(positionByPageIndex(page));
    }

    public final boolean writeHighlight(int page, @NotNull NeoPdfHighlight highlight) {
        Intrinsics.checkNotNullParameter(highlight, "highlight");
        return this.neoPdfNative.writeHighlight(page, highlight.getHighlight());
    }

    public final boolean writeShape(int page, @NotNull NeoPdfShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return this.neoPdfNative.writeShape(page, shape.getPdfShape());
    }

    public final boolean setBackground(int page, @NotNull String imageId, @NotNull String resourceId, @NotNull Bitmap bitmap, @NotNull String extraAttr) {
        Intrinsics.checkNotNullParameter(imageId, "imageId");
        Intrinsics.checkNotNullParameter(resourceId, "resourceId");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(extraAttr, "extraAttr");
        return this.neoPdfNative.setBackground(page, imageId, resourceId, bitmap, extraAttr);
    }

    public final boolean updateShape(int page, @NotNull PdfShapeInfo shape, @NotNull PdfShapeUpdateOptions options) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(options, "options");
        return this.neoPdfNative.updateShape(page, shape, options);
    }

    @NotNull
    public final PageId getPageIdObj(int pageIndex) {
        return new PageId("", StringKt.safelyGetStr(this.neoPdfNative.getPageObjId(pageIndex)), pageIndex);
    }

    public final boolean saveAs(@NotNull String path, @NotNull String fileId) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(fileId, "fileId");
        ReaderDocumentWriter.SaveOptions saveOptions = new ReaderDocumentWriter.SaveOptions(null, false, false, 7, null);
        saveOptions.setFileId(fileId);
        saveOptions.setExporting(this.neoPdfNative.getIsExported() || !Intrinsics.areEqual(this.neoPdfNative.getFilePath(), path));
        saveOptions.setExportOnlyPagesWithAnnotations(false);
        return saveAs(path, saveOptions);
    }

    public final boolean saveAs(@NotNull String path, @NotNull ReaderDocumentWriter.SaveOptions options) {
        boolean save$default;
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(options, "options");
        NeoPdfOnyxTag neoPdfOnyxTag = new NeoPdfOnyxTag(options.getFileId(), null, options.getExporting(), null, 10, null);
        m34763l(neoPdfOnyxTag);
        m34764m(neoPdfOnyxTag);
        if (!this.neoPdfNative.setOnyxTagMetadata(NeoPdfOnyxTag.PDF_METADATA_KEY, StringKt.safelyGetStr(JSONUtils.INSTANCE.toJson(neoPdfOnyxTag)))) {
            return false;
        }
        boolean z = !StringKt.safelyEqualsIgnoreCase(path, this.neoPdfNative.getFilePath());
        if (z) {
            save$default = NeoPdf.saveAs$default(this.neoPdfNative, path, null, 2, null);
        } else {
            save$default = NeoPdf.save$default(this.neoPdfNative, null, 1, null);
        }
        if (save$default && !z) {
            this.onyxTag = neoPdfOnyxTag;
        }
        return save$default;
    }
}
