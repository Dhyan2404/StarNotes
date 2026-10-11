package com.onyx.android.sdk.note.common.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Region;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.OptionsRepo;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.data.MirrorType;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.neopdf.PdfHighlightInfo;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.hwr.ShapeHWRBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeHitTests;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRegionUtils;
import com.onyx.android.sdk.note.common.utils.ShapeScales;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeSourceBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b?\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010!\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u001c\b&\u0018\u0000 \u009d\u00022\u00020\u0001:\u0002\u009d\u0002B\t¢\u0006\u0006\b\u009b\u0002\u0010\u009c\u0002J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u0018\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0016J \u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J(\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u0015H\u0016J\u0018\u0010 \u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J2\u0010#\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\"\u0018\u00010!2\u0006\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u0015H\u0016J \u0010$\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J\u0010\u0010(\u001a\u00020'2\u0006\u0010&\u001a\u00020%H\u0016J\u0018\u0010+\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\"H\u0016J\u0018\u0010,\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\"H\u0016J\u0018\u0010-\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\"H\u0016J\u0018\u00100\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u00152\u0006\u0010/\u001a\u00020\u0015H\u0016J\u0018\u00104\u001a\u00020\u00022\u0006\u00101\u001a\u00020\u00152\u0006\u00103\u001a\u000202H\u0016J\u0018\u00105\u001a\u00020\u00022\u0006\u00101\u001a\u00020\u00152\u0006\u00103\u001a\u000202H\u0016J\u0018\u00109\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00020\u0015H\u0016J \u0010=\u001a\u00020\u00022\u0006\u0010:\u001a\u00020\u00152\u0006\u0010;\u001a\u00020\u00152\u0006\u0010<\u001a\u00020\u0007H\u0016J\u0010\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0015H\u0016J\b\u0010@\u001a\u00020\u0002H\u0016J\b\u0010A\u001a\u00020\u0018H\u0016J\b\u0010C\u001a\u00020BH\u0016J\u0010\u0010F\u001a\u00020\u00022\u0006\u0010E\u001a\u00020DH\u0016J\u0010\u0010I\u001a\u00020D2\u0006\u0010H\u001a\u00020GH\u0016J\b\u0010J\u001a\u00020\u0002H\u0016J\u0010\u0010K\u001a\u00020\u00182\u0006\u0010H\u001a\u00020GH\u0016J\b\u0010L\u001a\u00020\u0002H\u0016J\u0010\u0010M\u001a\u00020\u00182\u0006\u0010H\u001a\u00020GH\u0016J\u0018\u0010P\u001a\u00020\u00022\u0006\u0010H\u001a\u00020G2\u0006\u0010O\u001a\u00020NH\u0016J\u0010\u0010T\u001a\u00020S2\u0006\u0010R\u001a\u00020QH\u0016J\b\u0010U\u001a\u00020\u0001H\u0016J\u0010\u0010W\u001a\u00020\u00182\u0006\u0010V\u001a\u00020\u0001H\u0016J\u0010\u0010X\u001a\u00020\u00182\u0006\u0010H\u001a\u00020GH\u0016J\u0018\u0010[\u001a\u00020\u00182\u0006\u0010Z\u001a\u00020Y2\u0006\u0010E\u001a\u00020DH\u0016J\u0006\u0010\\\u001a\u00020\u0015R\"\u00107\u001a\u00020]8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b^\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\"\u0010j\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bd\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR\"\u0010n\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bk\u0010e\u001a\u0004\bl\u0010g\"\u0004\bm\u0010iR\"\u0010r\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bo\u0010e\u001a\u0004\bp\u0010g\"\u0004\bq\u0010iR\"\u0010v\u001a\u00020]8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bs\u0010_\u001a\u0004\bt\u0010a\"\u0004\bu\u0010cR\"\u0010z\u001a\u00020]8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bw\u0010_\u001a\u0004\bx\u0010a\"\u0004\by\u0010cR\"\u0010~\u001a\u00020]8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b{\u0010_\u001a\u0004\b|\u0010a\"\u0004\b}\u0010cR(\u0010\u0085\u0001\u001a\u00020\u00158\u0016@\u0016X\u0096\u000e¢\u0006\u0017\n\u0005\b\u007f\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R)\u0010\u008c\u0001\u001a\u00020\u00078\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b\u0086\u0001\u0010\u0087\u0001\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001\"\u0006\b\u008a\u0001\u0010\u008b\u0001R)\u0010\u0090\u0001\u001a\u00020\u00078\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b\u008d\u0001\u0010\u0087\u0001\u001a\u0006\b\u008e\u0001\u0010\u0089\u0001\"\u0006\b\u008f\u0001\u0010\u008b\u0001R(\u0010\u0094\u0001\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0015\n\u0005\b\u0091\u0001\u0010e\u001a\u0005\b\u0092\u0001\u0010g\"\u0005\b\u0093\u0001\u0010iR(\u0010\u0098\u0001\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0015\n\u0005\b\u0095\u0001\u0010e\u001a\u0005\b\u0096\u0001\u0010g\"\u0005\b\u0097\u0001\u0010iR&\u0010\u009c\u0001\u001a\u00020]8\u0016@\u0016X\u0096\u000e¢\u0006\u0015\n\u0005\b\u0099\u0001\u0010_\u001a\u0005\b\u009a\u0001\u0010a\"\u0005\b\u009b\u0001\u0010cR*\u0010¤\u0001\u001a\u00030\u009d\u00018\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b\u009e\u0001\u0010\u009f\u0001\u001a\u0006\b \u0001\u0010¡\u0001\"\u0006\b¢\u0001\u0010£\u0001R,\u0010¬\u0001\u001a\u0005\u0018\u00010¥\u00018\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b¦\u0001\u0010§\u0001\u001a\u0006\b¨\u0001\u0010©\u0001\"\u0006\bª\u0001\u0010«\u0001R(\u0010°\u0001\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0015\n\u0005\b\u00ad\u0001\u0010e\u001a\u0005\b®\u0001\u0010g\"\u0005\b¯\u0001\u0010iR2\u0010¸\u0001\u001a\u000b\u0012\u0004\u0012\u00020\n\u0018\u00010±\u00018\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b²\u0001\u0010³\u0001\u001a\u0006\b´\u0001\u0010µ\u0001\"\u0006\b¶\u0001\u0010·\u0001R2\u0010¼\u0001\u001a\u000b\u0012\u0004\u0012\u00020\n\u0018\u00010±\u00018\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b¹\u0001\u0010³\u0001\u001a\u0006\bº\u0001\u0010µ\u0001\"\u0006\b»\u0001\u0010·\u0001R,\u0010Ä\u0001\u001a\u0005\u0018\u00010½\u00018\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b¾\u0001\u0010¿\u0001\u001a\u0006\bÀ\u0001\u0010Á\u0001\"\u0006\bÂ\u0001\u0010Ã\u0001R,\u0010Ì\u0001\u001a\u0005\u0018\u00010Å\u00018\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\bÆ\u0001\u0010Ç\u0001\u001a\u0006\bÈ\u0001\u0010É\u0001\"\u0006\bÊ\u0001\u0010Ë\u0001R+\u0010Ó\u0001\u001a\u0004\u0018\u00010D8\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\bÍ\u0001\u0010Î\u0001\u001a\u0006\bÏ\u0001\u0010Ð\u0001\"\u0006\bÑ\u0001\u0010Ò\u0001R(\u0010×\u0001\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0015\n\u0005\bÔ\u0001\u0010e\u001a\u0005\bÕ\u0001\u0010g\"\u0005\bÖ\u0001\u0010iR&\u0010Û\u0001\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0015\n\u0005\bØ\u0001\u0010e\u001a\u0005\bÙ\u0001\u0010g\"\u0005\bÚ\u0001\u0010iR%\u0010Þ\u0001\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0014\n\u0004\b\u0016\u0010e\u001a\u0005\bÜ\u0001\u0010g\"\u0005\bÝ\u0001\u0010iR+\u0010å\u0001\u001a\u0005\u0018\u00010ß\u00018\u0016@\u0016X\u0096\u000e¢\u0006\u0017\n\u0005\b\u0017\u0010à\u0001\u001a\u0006\bá\u0001\u0010â\u0001\"\u0006\bã\u0001\u0010ä\u0001R*\u0010é\u0001\u001a\u00030ß\u00018\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\bæ\u0001\u0010à\u0001\u001a\u0006\bç\u0001\u0010â\u0001\"\u0006\bè\u0001\u0010ä\u0001R(\u0010í\u0001\u001a\u0004\u0018\u00010\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0015\n\u0005\bê\u0001\u0010e\u001a\u0005\bë\u0001\u0010g\"\u0005\bì\u0001\u0010iR,\u0010õ\u0001\u001a\u0005\u0018\u00010î\u00018\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\bï\u0001\u0010ð\u0001\u001a\u0006\bñ\u0001\u0010ò\u0001\"\u0006\bó\u0001\u0010ô\u0001R*\u0010ý\u0001\u001a\u00030ö\u00018\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b÷\u0001\u0010ø\u0001\u001a\u0006\bù\u0001\u0010ú\u0001\"\u0006\bû\u0001\u0010ü\u0001R*\u0010\u0081\u0002\u001a\u00030ö\u00018\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\bþ\u0001\u0010ø\u0001\u001a\u0006\bÿ\u0001\u0010ú\u0001\"\u0006\b\u0080\u0002\u0010ü\u0001R*\u0010\u0089\u0002\u001a\u00030\u0082\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b\u0083\u0002\u0010\u0084\u0002\u001a\u0006\b\u0085\u0002\u0010\u0086\u0002\"\u0006\b\u0087\u0002\u0010\u0088\u0002R)\u0010\u008f\u0002\u001a\u00020\u00118\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b\u0080\u0001\u0010\u008a\u0002\u001a\u0006\b\u008b\u0002\u0010\u008c\u0002\"\u0006\b\u008d\u0002\u0010\u008e\u0002R)\u0010\u0096\u0002\u001a\u00020\"8\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b\u0090\u0002\u0010\u0091\u0002\u001a\u0006\b\u0092\u0002\u0010\u0093\u0002\"\u0006\b\u0094\u0002\u0010\u0095\u0002R)\u0010\u009a\u0002\u001a\u00020\"8\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b\u0097\u0002\u0010\u0091\u0002\u001a\u0006\b\u0098\u0002\u0010\u0093\u0002\"\u0006\b\u0099\u0002\u0010\u0095\u0002¨\u0006\u009e\u0002"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/BaseShape;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "", "ensureShapeUniqueId", "ensureDataUniqueId", "updateShapeRect", "resetShapeRect", "Landroid/graphics/RectF;", "getPointsBoundingRect", "updateShapeTime", "", "key", "value", "put", "get", "putPersistOption", "getPersistOption", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "addPoints", "updatePoints", "", "x", "y", "", "containPoint", "radius", "hitTest", "x1", "y1", "x2", "y2", "hitTestPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "hitTestPoint", "fastHitTest", "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "eraseBean", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "split", "normalizedPoint", "screenPoint", "onDown", "onMove", "onUp", "dx", "dy", "onTranslate", "angle", "Landroid/graphics/PointF;", "pivotPoint", "onRotate", "onPreRotate", "Lcom/onyx/android/sdk/geometry/data/MirrorType;", "type", "translateDistance", "onMirror", "sx", "sy", "rectF", "onScale", "scale", "scaleDisplayScale", "onRectChanged", "isClosedShape", "Landroid/graphics/Path;", "getPath", "Landroid/graphics/Matrix;", "matrix", "postConcat", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "getRenderMatrix", "recycle", "prepareRender", "clearRender", "lowLatencyRender", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "onLowLatencyTouchData", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "testData", Constants.ATTRVAL_OTHER, "testEqual", "isIntersectClipRect", "Landroid/graphics/Region;", "region", "intersectRegion", "getTextSize", "", "a", "I", "getType", "()I", "setType", "(I)V", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDocumentUniqueId", "()Ljava/lang/String;", "setDocumentUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_DOCUMENT_ID, "c", "getPageUniqueId", "setPageUniqueId", CouchFieldKey.KEY_PAGE_ID, "d", "getShapeUniqueId", "setShapeUniqueId", "shapeUniqueId", "e", "getLayerId", "setLayerId", "layerId", C6997f.f39671c, "getStrokeColor", "setStrokeColor", ApiBroadCastReceiver.ARGS_STROKE_COLOR, C6998g.f39679a, "getFillColor", "setFillColor", CouchFieldKey.KEY_FILL_COLOR, C6999h.f39688c, "F", "getStrokeWidth", "()F", "setStrokeWidth", "(F)V", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "i", "Landroid/graphics/RectF;", "getBoundingRect", "()Landroid/graphics/RectF;", "setBoundingRect", "(Landroid/graphics/RectF;)V", "boundingRect", "j", "getOriginRect", "setOriginRect", "originRect", C4921e.f26537n, "getDataUniqueId", "setDataUniqueId", "dataUniqueId", "l", "getSubPageUniqueId", "setSubPageUniqueId", CouchFieldKey.KEY_SUB_PAGE_ID, "m", "getStatus", "setStatus", "status", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "getShapeCreateArgs", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "setShapeCreateArgs", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V", "shapeCreateArgs", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", C4921e.f26528e, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "getTextStyle", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "setTextStyle", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V", "textStyle", "p", "getRichText", "setRichText", "richText", "", "q", "Ljava/util/List;", "getTagIdList", "()Ljava/util/List;", "setTagIdList", "(Ljava/util/List;)V", CouchFieldKey.KEY_TAG_ID_LIST, "r", "getLinkIdList", "setLinkIdList", "linkIdList", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;", "s", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;", "getShapeSrcBean", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;", "setShapeSrcBean", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V", "shapeSrcBean", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;", "t", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;", "getShapeReferenceBean", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;", "setShapeReferenceBean", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V", "shapeReferenceBean", "u", "Landroid/graphics/Matrix;", "getShapeMatrix", "()Landroid/graphics/Matrix;", "setShapeMatrix", "(Landroid/graphics/Matrix;)V", "shapeMatrix", "v", "getGroupId", "setGroupId", CouchFieldKey.KEY_GROUP_ID, "w", "getRevisionId", "setRevisionId", CouchFieldKey.KEY_REVISION_ID, "getInfoRevisionId", "setInfoRevisionId", CouchFieldKey.KEY_INFO_REVISION_ID, "Ljava/util/Date;", "Ljava/util/Date;", "getCreatedAt", "()Ljava/util/Date;", "setCreatedAt", "(Ljava/util/Date;)V", CouchFieldKey.KEY_CREATE_AT, "z", "getUpdatedAt", "setUpdatedAt", "updatedAt", "A", "getText", "setText", "text", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;", "B", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;", "getExtraBean", "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;", "setExtraBean", "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V", "extraBean", "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "getRuntimeOptions", "()Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "setRuntimeOptions", "(Lcom/onyx/android/sdk/base/utils/OptionsRepo;)V", "runtimeOptions", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "getPersistOptions", "setPersistOptions", "persistOptions", "Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;", "E", "Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;", "getHwrBean", "()Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;", "setHwrBean", "(Lcom/onyx/android/sdk/note/common/data/hwr/ShapeHWRBean;)V", "hwrBean", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "getPoints", "()Lcom/onyx/android/sdk/base/data/TouchPointList;", "setPoints", "(Lcom/onyx/android/sdk/base/data/TouchPointList;)V", PointConstant.POINT_FILE_END, "G", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getCurrentPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setCurrentPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "currentPoint", "H", "getDownPoint", "setDownPoint", "downPoint", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class BaseShape implements Shape {

    /* renamed from: I */
    public static final boolean f43594I = false;

    /* renamed from: A, reason: from kotlin metadata */
    @Nullable
    public String text;

    /* renamed from: B, reason: from kotlin metadata */
    @Nullable
    public ShapeExtraBean extraBean;

    /* renamed from: a, reason: from kotlin metadata */
    public int type;

    /* renamed from: e, reason: from kotlin metadata */
    public int layerId;

    /* renamed from: g, reason: from kotlin metadata */
    public int fillColor;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public String dataUniqueId;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public String subPageUniqueId;

    /* renamed from: m, reason: from kotlin metadata */
    public int status;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public ShapeTextStyle textStyle;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public String richText;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public List<String> tagIdList;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public List<String> linkIdList;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public ShapeSourceBean shapeSrcBean;

    /* renamed from: t, reason: from kotlin metadata */
    @Nullable
    public ShapeReferenceBean shapeReferenceBean;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public Matrix shapeMatrix;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public String groupId;

    /* renamed from: y, reason: from kotlin metadata */
    @Nullable
    public Date createdAt;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String documentUniqueId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String pageUniqueId = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String shapeUniqueId = "";

    /* renamed from: f, reason: from kotlin metadata */
    public int strokeColor = -16777216;

    /* renamed from: h, reason: from kotlin metadata */
    public float strokeWidth = 1.0f;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public RectF boundingRect = new RectF();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public RectF originRect = new RectF();

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public ShapeCreateArgs shapeCreateArgs = new ShapeCreateArgs(0.0f, 0.0f, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, false, 0, 32767, null);

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public String revisionId = "";

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public String infoRevisionId = "";

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public Date updatedAt = new Date();

    /* renamed from: C, reason: from kotlin metadata */
    @NotNull
    public OptionsRepo runtimeOptions = new OptionsRepo();

    /* renamed from: D, reason: from kotlin metadata */
    @NotNull
    public OptionsRepo persistOptions = new OptionsRepo();

    /* renamed from: E, reason: from kotlin metadata */
    @NotNull
    public ShapeHWRBean hwrBean = new ShapeHWRBean();

    /* renamed from: F, reason: from kotlin metadata */
    @NotNull
    public TouchPointList points = new TouchPointList();

    /* renamed from: G, reason: from kotlin metadata */
    @NotNull
    public TouchPoint currentPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0, 127, null);

    /* renamed from: H, reason: from kotlin metadata */
    @NotNull
    public TouchPoint downPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0, 127, null);

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public void addPoints(@NotNull TouchPointList pointList) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        getPoints().addAll(pointList);
        if (getPoints().isEmpty()) {
            return;
        }
        updatePoints();
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearLowLatencyData() {
        Shape.DefaultImpls.clearLowLatencyData(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearRender() {
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void cloneLowLatencyData(@NotNull Shape shape) {
        Shape.DefaultImpls.cloneLowLatencyData(this, shape);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void cloneRenderData(@NotNull Shape shape) {
        Shape.DefaultImpls.cloneRenderData(this, shape);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean containPoint(float x, float y) {
        return isClosedShape() && ShapeRegionUtils.createRegionByPath$default(ShapeRegionUtils.INSTANCE, getPath(), null, false, 6, null).contains((int) x, (int) y);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public ShapeGuideLineHandler createGuideLineHandler() {
        return Shape.DefaultImpls.createGuideLineHandler(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void enableFillColor(boolean z) {
        Shape.DefaultImpls.enableFillColor(this, z);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void ensureDataUniqueId() {
        String dataUniqueId = getDataUniqueId();
        if (dataUniqueId == null || dataUniqueId.length() == 0) {
            setDataUniqueId(UUIDUtils.INSTANCE.rawUUID());
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeConnection
    @NotNull
    public ShapeSourceBean ensureShapeSourceBean() {
        return Shape.DefaultImpls.ensureShapeSourceBean(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void ensureShapeUniqueId() {
        String shapeUniqueId = getShapeUniqueId();
        if (shapeUniqueId == null || shapeUniqueId.length() == 0) {
            setShapeUniqueId(UUIDUtils.INSTANCE.rawUUID());
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean fastHitTest(float x, float y, float radius) {
        RectF rectF = new RectF(getBoundingRect());
        RectKt.expand(rectF, getStrokeWidth() / 2.0f);
        if (rectF.isEmpty()) {
            return false;
        }
        return HitTestUtils.INSTANCE.circleRectHitTest(rectF, x, y, radius);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRuntimeOptions
    @Nullable
    public String get(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return OptionsRepo.getString$default(getRuntimeOptions(), key, null, 2, null);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @NotNull
    public RectF getBoundingRect() {
        return this.boundingRect;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @Nullable
    public Date getCreatedAt() {
        return this.createdAt;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public TouchPoint getCurrentPoint() {
        return this.currentPoint;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @Nullable
    public String getDataUniqueId() {
        return this.dataUniqueId;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @NotNull
    public String getDocumentUniqueId() {
        return this.documentUniqueId;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public TouchPoint getDownPoint() {
        return this.downPoint;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeExtraAttributes
    @Nullable
    public ShapeExtraBean getExtraBean() {
        return this.extraBean;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeStyle
    public int getFillColor() {
        return this.fillColor;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @Nullable
    public String getGroupId() {
        return this.groupId;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeHWR
    @NotNull
    public ShapeHWRBean getHwrBean() {
        return this.hwrBean;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @NotNull
    public String getInfoRevisionId() {
        return this.infoRevisionId;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getLayerId() {
        return this.layerId;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeStyle
    public int getLineStyle() {
        return Shape.DefaultImpls.getLineStyle(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeLink
    @Nullable
    public List<String> getLinkIdList() {
        return this.linkIdList;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @NotNull
    public RectF getOriginRect() {
        return this.originRect;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @NotNull
    public String getPageUniqueId() {
        return this.pageUniqueId;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public Path getPath() {
        return new Path();
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePersistOptions
    @NotNull
    public String getPersistOption(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return OptionsRepo.getString$default(getPersistOptions(), key, null, 2, null);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePersistOptions
    @NotNull
    public OptionsRepo getPersistOptions() {
        return this.persistOptions;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public TouchPointList getPoints() {
        return this.points;
    }

    @NotNull
    public RectF getPointsBoundingRect() {
        return getPoints().getBoundingRect();
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTransform
    @NotNull
    public Matrix getRenderMatrix(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Matrix matrix = new Matrix();
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            matrix.postConcat(shapeMatrix);
        }
        matrix.postConcat(ShapeOptions.INSTANCE.getTransformingMatrix(this));
        matrix.postConcat(renderContext.getMatrix());
        return matrix;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public int getRenderPointSize() {
        return Shape.DefaultImpls.getRenderPointSize(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public TouchPointList getRenderPoints() {
        return Shape.DefaultImpls.getRenderPoints(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @NotNull
    public String getRevisionId() {
        return this.revisionId;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRichText
    @Nullable
    public String getRichText() {
        return this.richText;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRuntimeOptions
    @NotNull
    public OptionsRepo getRuntimeOptions() {
        return this.runtimeOptions;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @NotNull
    public ShapeCreateArgs getShapeCreateArgs() {
        return this.shapeCreateArgs;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTransform
    @Nullable
    public Matrix getShapeMatrix() {
        return this.shapeMatrix;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeConnection
    @Nullable
    public ShapeReferenceBean getShapeReferenceBean() {
        return this.shapeReferenceBean;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeConnection
    @Nullable
    public ShapeSourceBean getShapeSrcBean() {
        return this.shapeSrcBean;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @NotNull
    public String getShapeUniqueId() {
        return this.shapeUniqueId;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getStatus() {
        return this.status;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeStyle
    public int getStrokeColor() {
        return this.strokeColor;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeStyle
    public float getStrokeWidth() {
        return this.strokeWidth;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @Nullable
    public String getSubPageUniqueId() {
        return this.subPageUniqueId;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTag
    @Nullable
    public List<String> getTagIdList() {
        return this.tagIdList;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @Nullable
    public String getText() {
        return this.text;
    }

    public final float getTextSize() {
        ShapeTextStyle textStyle = getTextStyle();
        if (textStyle != null) {
            return textStyle.getTextSize();
        }
        return 0.0f;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRichText
    @Nullable
    public ShapeTextStyle getTextStyle() {
        return this.textStyle;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    @NotNull
    public Date getUpdatedAt() {
        return this.updatedAt;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public int getUsePointCount() {
        return Shape.DefaultImpls.getUsePointCount(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeConnection
    public boolean hasReferenceShapeBeanList() {
        return Shape.DefaultImpls.hasReferenceShapeBeanList(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x1, float y1, float x2, float y2) {
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    @Nullable
    public List<TouchPoint> hitTestPoint(float x1, float y1, float x2, float y2) {
        return null;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTestPoints(@NotNull TouchPointList pointList, float radius) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        return ShapeHitTests.INSTANCE.hitTestShapePoints(this, pointList, radius);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean intersectRegion(@NotNull Region region, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        for (TouchPoint touchPoint : getRenderPoints().getPoints()) {
            float[] fArr = {touchPoint.getX(), touchPoint.getY()};
            matrix.mapPoints(fArr);
            if (region.contains((int) fArr[0], (int) fArr[1])) {
                return true;
            }
        }
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTransform
    public boolean isClosedShape() {
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeStyle
    public boolean isFillColorEnabled() {
        return Shape.DefaultImpls.isFillColorEnabled(this);
    }

    public boolean isIntersectClipRect(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        RectF boundingRect = ShapeRectUtils.INSTANCE.getBoundingRect(this, renderContext);
        if (renderContext.getClipRect().isEmpty()) {
            return true;
        }
        return RectF.intersects(renderContext.getClipRect(), boundingRect);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyFlush(@NotNull RenderContext renderContext, boolean z) {
        return Shape.DefaultImpls.lowLatencyFlush(this, renderContext, z);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public void onDown(@NotNull TouchPoint normalizedPoint, @NotNull TouchPoint screenPoint) {
        Intrinsics.checkNotNullParameter(normalizedPoint, "normalizedPoint");
        Intrinsics.checkNotNullParameter(screenPoint, "screenPoint");
        getPoints().add(normalizedPoint);
        setDownPoint(new TouchPoint(normalizedPoint));
        setCurrentPoint(new TouchPoint(normalizedPoint));
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void onLowLatencyTouchData(@NotNull RenderContext renderContext, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void onMirror(@NotNull MirrorType type, float translateDistance) {
        Intrinsics.checkNotNullParameter(type, "type");
        ShapeMatrixUtils.INSTANCE.mirror(ShapeOptions.INSTANCE.getOrPutTransformingMatrix(this), type, translateDistance);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public void onMove(@NotNull TouchPoint normalizedPoint, @NotNull TouchPoint screenPoint) {
        Intrinsics.checkNotNullParameter(normalizedPoint, "normalizedPoint");
        Intrinsics.checkNotNullParameter(screenPoint, "screenPoint");
        setCurrentPoint(new TouchPoint(normalizedPoint));
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void onPreRotate(float angle, @NotNull PointF pivotPoint) {
        Intrinsics.checkNotNullParameter(pivotPoint, "pivotPoint");
        ShapeOptions.INSTANCE.getOrPutTransformingMatrix(this).preRotate(angle, pivotPoint.x, pivotPoint.y);
    }

    public void onRectChanged() {
        ShapeOptions.INSTANCE.resetTransformMatrix(this);
        resetShapeRect();
        updateShapeRect();
        updateShapeTime();
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void onRotate(float angle, @NotNull PointF pivotPoint) {
        Intrinsics.checkNotNullParameter(pivotPoint, "pivotPoint");
        ShapeOptions.INSTANCE.getOrPutTransformingMatrix(this).postRotate(angle, pivotPoint.x, pivotPoint.y);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void onScale(float sx, float sy, @NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        Matrix orPutTransformingMatrix = shapeOptions.getOrPutTransformingMatrix(this);
        RectUtils rectUtils = RectUtils.INSTANCE;
        orPutTransformingMatrix.preTranslate(-rectUtils.getDistanceXAfterScale(rectF, sx), -rectUtils.getDistanceYAfterScale(rectF, sy));
        shapeOptions.getOrPutTransformingMatrix(this).preScale(Math.abs(sx), Math.abs(sy));
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void onTranslate(float dx, float dy) {
        ShapeOptions.INSTANCE.getOrPutTransformingMatrix(this).postTranslate(dx, dy);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public void onUp(@NotNull TouchPoint normalizedPoint, @NotNull TouchPoint screenPoint) {
        Intrinsics.checkNotNullParameter(normalizedPoint, "normalizedPoint");
        Intrinsics.checkNotNullParameter(screenPoint, "screenPoint");
        getPoints().add(normalizedPoint);
        setCurrentPoint(new TouchPoint(normalizedPoint));
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void postConcat(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix == null) {
            shapeMatrix = new Matrix();
        }
        setShapeMatrix(shapeMatrix);
        Matrix shapeMatrix2 = getShapeMatrix();
        if (shapeMatrix2 != null) {
            shapeMatrix2.postConcat(matrix);
        }
        onRectChanged();
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean prepareRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRuntimeOptions
    public void put(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        getRuntimeOptions().put(key, value);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePersistOptions
    public void putPersistOption(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        getPersistOptions().put(key, value);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean readyToLowLatencyFlush() {
        return Shape.DefaultImpls.readyToLowLatencyFlush(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeResAttributes
    public void recycle() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeConnection
    public void resetConnection() {
        Shape.DefaultImpls.resetConnection(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public void resetLowLatencyData() {
        Shape.DefaultImpls.resetLowLatencyData(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void resetShapeRect() {
        setBoundingRect(new RectF());
        setOriginRect(new RectF());
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void scaleDisplayScale(float scale) {
        ShapeScales.INSTANCE.scaleShapeCreateArgsDisplayScale(this, scale);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setBoundingRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.boundingRect = rectF;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setCreatedAt(@Nullable Date date) {
        this.createdAt = date;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public void setCurrentPoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.currentPoint = touchPoint;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setDataUniqueId(@Nullable String str) {
        this.dataUniqueId = str;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setDocumentUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentUniqueId = str;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public void setDownPoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.downPoint = touchPoint;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeExtraAttributes
    public void setExtraBean(@Nullable ShapeExtraBean shapeExtraBean) {
        this.extraBean = shapeExtraBean;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void setFillColor(int i) {
        this.fillColor = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setGroupId(@Nullable String str) {
        this.groupId = str;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeHWR
    public void setHwrBean(@NotNull ShapeHWRBean shapeHWRBean) {
        Intrinsics.checkNotNullParameter(shapeHWRBean, "<set-?>");
        this.hwrBean = shapeHWRBean;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setInfoRevisionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.infoRevisionId = str;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setLayerId(int i) {
        this.layerId = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void setLineStyle(int i) {
        Shape.DefaultImpls.setLineStyle(this, i);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeLink
    public void setLinkIdList(@Nullable List<String> list) {
        this.linkIdList = list;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setOriginRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.originRect = rectF;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setPageUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageUniqueId = str;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePersistOptions
    public void setPersistOptions(@NotNull OptionsRepo optionsRepo) {
        Intrinsics.checkNotNullParameter(optionsRepo, "<set-?>");
        this.persistOptions = optionsRepo;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public void setPoints(@NotNull TouchPointList touchPointList) {
        Intrinsics.checkNotNullParameter(touchPointList, "<set-?>");
        this.points = touchPointList;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setRevisionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.revisionId = str;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRichText
    public void setRichText(@Nullable String str) {
        this.richText = str;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRuntimeOptions
    public void setRuntimeOptions(@NotNull OptionsRepo optionsRepo) {
        Intrinsics.checkNotNullParameter(optionsRepo, "<set-?>");
        this.runtimeOptions = optionsRepo;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setShapeCreateArgs(@NotNull ShapeCreateArgs shapeCreateArgs) {
        Intrinsics.checkNotNullParameter(shapeCreateArgs, "<set-?>");
        this.shapeCreateArgs = shapeCreateArgs;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void setShapeMatrix(@Nullable Matrix matrix) {
        this.shapeMatrix = matrix;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeConnection
    public void setShapeReferenceBean(@Nullable ShapeReferenceBean shapeReferenceBean) {
        this.shapeReferenceBean = shapeReferenceBean;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeConnection
    public void setShapeSrcBean(@Nullable ShapeSourceBean shapeSourceBean) {
        this.shapeSrcBean = shapeSourceBean;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setShapeUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.shapeUniqueId = str;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setStatus(int i) {
        this.status = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void setStrokeColor(int i) {
        this.strokeColor = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void setStrokeWidth(float f) {
        this.strokeWidth = f;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setSubPageUniqueId(@Nullable String str) {
        this.subPageUniqueId = str;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTag
    public void setTagIdList(@Nullable List<String> list) {
        this.tagIdList = list;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setText(@Nullable String str) {
        this.text = str;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRichText
    public void setTextStyle(@Nullable ShapeTextStyle shapeTextStyle) {
        this.textStyle = shapeTextStyle;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setUpdatedAt(@NotNull Date date) {
        Intrinsics.checkNotNullParameter(date, "<set-?>");
        this.updatedAt = date;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return new SplitShapeResult();
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTest
    @NotNull
    public Shape testData() {
        ShapeTests shapeTests = ShapeTests.INSTANCE;
        shapeTests.addTestAttributes(this);
        shapeTests.addTestExtraAttributes(this);
        shapeTests.addTestStyle(this);
        shapeTests.addTestTransform(this);
        shapeTests.addTestLink(this);
        shapeTests.addTestTag(this);
        shapeTests.addTestPersistOptions(this);
        return this;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeTest
    public boolean testEqual(@NotNull Shape other) {
        Intrinsics.checkNotNullParameter(other, "other");
        ShapeTests shapeTests = ShapeTests.INSTANCE;
        return shapeTests.isPointsEqual(this, other) && shapeTests.isAttributesEqual(this, other) && shapeTests.isExtraAttributesEqual(this, other) && shapeTests.isStyleEqual(this, other) && shapeTests.isTransformEqual(this, other) && shapeTests.isPersistOptionsEqual(this, other);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeConvert
    @Nullable
    public PdfHighlightInfo toPdfHighlight(@NotNull EmbedShapeBean embedShapeBean) {
        return Shape.DefaultImpls.toPdfHighlight(this, embedShapeBean);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        return PdfShapeConvertUtils.INSTANCE.initPdfShape(PdfShapeInfo.INSTANCE.createBrushStrokeShape(), embedShapeBean);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public boolean underContent() {
        return Shape.DefaultImpls.underContent(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public void updatePoints() {
        Object last;
        if (getPoints().size() > 0) {
            getDownPoint().set(getPoints().get(0));
            TouchPoint currentPoint = getCurrentPoint();
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) getPoints().getPoints());
            currentPoint.set((TouchPoint) last);
        }
        resetShapeRect();
        updateShapeRect();
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        setOriginRect(getPointsBoundingRect());
        setBoundingRect(new RectF(getOriginRect()));
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(getBoundingRect());
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeTime() {
        if (getCreatedAt() == null) {
            setCreatedAt(new Date());
        }
        setUpdatedAt(new Date());
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean useLowLatencyFlush() {
        return Shape.DefaultImpls.useLowLatencyFlush(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        return ShapeHitTests.INSTANCE.hitTestShapePoint(this, x, y, radius);
    }
}
