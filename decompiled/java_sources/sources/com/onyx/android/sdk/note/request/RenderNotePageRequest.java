package com.onyx.android.sdk.note.request;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.bitmap.SafeBitmap;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CanvasKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.genericshape.GeoLayoutMargin;
import com.onyx.android.sdk.genericshape.GeoLayoutMarginBase;
import com.onyx.android.sdk.genericshape.GeoLayoutShaderWrapper;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.data.render.NoteRenderArgs;
import com.onyx.android.sdk.note.common.data.render.NoteSliceRenderInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.extension.NoteDocumentKt;
import com.onyx.android.sdk.note.extension.PaintKt;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u0000 J2\u00020\u0001:\u0001JB\u0017\u0012\u0006\u00103\u001a\u000202\u0012\u0006\u0010<\u001a\u000206¢\u0006\u0004\bH\u0010IJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J0\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002J \u0010\u0011\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J \u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010\u001a\u001a\u00020\u00192\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\t\u001a\u00020\bH\u0002J\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010!\u001a\u00020 H\u0002J\u0018\u0010\"\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00170\u001d2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\fH\u0002J\b\u0010$\u001a\u00020\u0004H\u0002J\u0010\u0010%\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010'\u001a\u00020&2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010(\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010*\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020\u0006H\u0002J\b\u0010+\u001a\u00020\u0019H\u0002J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010-\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0018\u0010/\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\nH\u0002J\u0010\u00101\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u001eH\u0002J\u0010\u00104\u001a\u00020\u000f2\u0006\u00103\u001a\u000202H\u0016J\u000e\u00105\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u001eR\"\u0010<\u001a\u0002068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u0014\u0010>\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010=R(\u0010D\u001a\b\u0012\u0004\u0012\u00020\f0\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR(\u0010G\u001a\b\u0012\u0004\u0012\u00020\f0\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010?\u001a\u0004\bE\u0010A\"\u0004\bF\u0010C¨\u0006K"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/RenderNotePageRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;", PrivilegedApp.f6532i, "", "j", "Landroid/graphics/Bitmap;", "sliceBitmap", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Landroid/graphics/RectF;", "dirtySliceRectFInPage", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "sliceInfo", "v", "", "x", "u", "s", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "w", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", "", "z", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "", "", "q", "Landroid/graphics/Paint;", C6997f.f39671c, "m", C4921e.f26528e, "r", "l", "Landroid/graphics/Matrix;", C6998g.f39679a, "p", "bitmap", C4921e.f26537n, GoogleApiAvailabilityLight.f29016b, "y", C6999h.f39688c, "rect", "i", NotificationCompat.CATEGORY_MESSAGE, "t", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "execute", "log", "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "getNoteRenderArgs", "()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "setNoteRenderArgs", "(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V", "noteRenderArgs", "Landroid/graphics/Paint;", "debugRectPaint", "Ljava/util/List;", "getSuccessList", "()Ljava/util/List;", "setSuccessList", "(Ljava/util/List;)V", "successList", "getFailList", "setFailList", "failList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenderNotePageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderNotePageRequest.kt\ncom/onyx/android/sdk/note/request/RenderNotePageRequest\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,417:1\n1313#2,2:418\n344#3,3:420\n18#4,4:423\n50#4,7:427\n18#4,4:434\n50#4,7:438\n1855#5,2:445\n1855#5,2:447\n1#6:449\n*S KotlinDebug\n*F\n+ 1 RenderNotePageRequest.kt\ncom/onyx/android/sdk/note/request/RenderNotePageRequest\n*L\n73#1:418,2\n110#1:420,3\n193#1:423,4\n193#1:427,7\n245#1:434,4\n245#1:438,7\n255#1:445,2\n277#1:447,2\n*E\n"})
/* loaded from: classes8.dex */
public final class RenderNotePageRequest extends BaseRxNoteRequest {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: k */
    public static boolean f43890k;

    /* renamed from: l */
    public static boolean f43891l;

    /* renamed from: m */
    public static boolean f43892m;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public NoteRenderArgs noteRenderArgs;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Paint debugRectPaint;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<SliceInfo> successList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<SliceInfo> failList;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/RenderNotePageRequest$Companion;", "", "()V", "DEBUG_BITMAP", "", "getDEBUG_BITMAP", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setDEBUG_BITMAP", "(Z)V", "DEBUG_DIRTY_RECT", "getDEBUG_DIRTY_RECT", "setDEBUG_DIRTY_RECT", "DEBUG_LOG", "getDEBUG_LOG", "setDEBUG_LOG", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean getDEBUG_BITMAP() {
            return RenderNotePageRequest.f43890k;
        }

        public final boolean getDEBUG_DIRTY_RECT() {
            return RenderNotePageRequest.f43892m;
        }

        public final boolean getDEBUG_LOG() {
            return RenderNotePageRequest.f43891l;
        }

        public final void setDEBUG_BITMAP(boolean z) {
            RenderNotePageRequest.f43890k = z;
        }

        public final void setDEBUG_DIRTY_RECT(boolean z) {
            RenderNotePageRequest.f43892m = z;
        }

        public final void setDEBUG_LOG(boolean z) {
            RenderNotePageRequest.f43891l = z;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderNotePageRequest(@NotNull NoteBundle noteBundle, @NotNull NoteRenderArgs noteRenderArgs) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(noteRenderArgs, "noteRenderArgs");
        this.noteRenderArgs = noteRenderArgs;
        Paint paint = new Paint();
        paint.setColor(-65536);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(2.0f);
        this.debugRectPaint = paint;
        this.successList = new ArrayList();
        this.failList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Sequence asSequence;
        Sequence filter;
        Sequence filter2;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.noteRenderArgs.getSliceRenderInfoList());
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<NoteSliceRenderInfo, Boolean>() { // from class: com.onyx.android.sdk.note.request.RenderNotePageRequest$execute$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NoteSliceRenderInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getNoteRenderSlice().isRendering());
            }
        });
        filter2 = SequencesKt___SequencesKt.filter(filter, new Function1<NoteSliceRenderInfo, Boolean>() { // from class: com.onyx.android.sdk.note.request.RenderNotePageRequest$execute$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NoteSliceRenderInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!RenderNotePageRequest.this.getAbort());
            }
        });
        Iterator it2 = filter2.iterator();
        while (it2.hasNext()) {
            m34124j((NoteSliceRenderInfo) it2.next());
        }
    }

    /* renamed from: f */
    public final Paint m34120f() {
        Paint paint = new Paint();
        PaintKt.updateShapeDrawPaintStyle(paint);
        return paint;
    }

    /* renamed from: g */
    public final Matrix m34121g(SliceInfo sliceInfo) {
        Matrix matrix = new Matrix();
        float actualScale = sliceInfo.getBoxInfo().getActualScale();
        matrix.setScale(actualScale, actualScale);
        RectF m34130p = m34130p(sliceInfo);
        log("scale = " + actualScale + ", displayRectF = " + m34130p + ", noteRenderArgs.dirtyPageDisplayRectF = " + this.noteRenderArgs.getDirtyPageDisplayRectF());
        matrix.postTranslate(m34130p.left, m34130p.top);
        return matrix;
    }

    @NotNull
    public final List<SliceInfo> getFailList() {
        return this.failList;
    }

    @NotNull
    public final NoteRenderArgs getNoteRenderArgs() {
        return this.noteRenderArgs;
    }

    @NotNull
    public final List<SliceInfo> getSuccessList() {
        return this.successList;
    }

    /* renamed from: h */
    public final void m34122h(SliceInfo sliceInfo) {
        if (f43890k) {
            Bitmap bitmap = sliceInfo.getSafeBitmap().getBitmap();
            if (BitmapKt.isValid(bitmap)) {
                String str = sliceInfo.getIsHighQuality() ? "pageHighQuality" : "pageNormal";
                String str2 = m34132r() ? "dirtyRectInSlice" : "slice";
                File file = new File(ResManager.INSTANCE.getAppContext().getExternalCacheDir(), "NotePage-" + str + '-' + str2 + ".png");
                StringBuilder sb = new StringBuilder();
                sb.append("debug bitmap, path = ");
                sb.append(file.getAbsolutePath());
                log(sb.toString());
                FileUtils.INSTANCE.deleteFile(file);
                BitmapKt.save$default(bitmap, file.getAbsolutePath(), 0, 2, null);
            }
        }
    }

    /* renamed from: i */
    public final void m34123i(Canvas canvas, RectF rect) {
        if (f43892m) {
            rect.inset(this.debugRectPaint.getStrokeWidth(), this.debugRectPaint.getStrokeWidth());
            canvas.drawRect(rect, this.debugRectPaint);
        }
    }

    /* renamed from: j */
    public final boolean m34124j(NoteSliceRenderInfo info) {
        SafeBitmap safeBitmap;
        SliceInfo noteRenderSlice = info.getNoteRenderSlice();
        NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(getNoteBundle().getNoteDoc(), noteRenderSlice.getBoxInfo().getId());
        if (notePage == null) {
            return false;
        }
        Benchmark benchmark = new Benchmark();
        RectF m34126l = m34126l(noteRenderSlice);
        if (m34132r() && !noteRenderSlice.isContainPageRectF(m34126l)) {
            m34134t("dirtyRect not in slice, do not render, isHighQuality = " + noteRenderSlice.getIsHighQuality() + ", dirtySliceRectFInPage = " + m34126l + ", sliceRectFInPage = " + noteRenderSlice.getSliceRectFInPage());
            return false;
        }
        RectF m34127m = m34127m(noteRenderSlice, m34126l);
        RectF copy = RectFKt.copy(m34127m);
        copy.offsetTo(0.0f, 0.0f);
        if (!noteRenderSlice.getSafeBitmap().isValid()) {
            log("create bitmap");
            noteRenderSlice.setSafeBitmap(SafeBitmap.INSTANCE.create(BitmapUtils.INSTANCE.createBitmapOrNull(m34127m)));
        }
        Bitmap bitmap = noteRenderSlice.getSafeBitmap().getBitmap();
        if (!BitmapKt.isValid(bitmap)) {
            this.failList.add(noteRenderSlice);
            log("render fail");
            return false;
        }
        RenderContext renderContext = new RenderContext(m34120f(), new Matrix());
        renderContext.setBitmap(bitmap);
        renderContext.setShapeShaderManager(getNoteBundle().getShapeShaderManager());
        Rect rect = new Rect();
        copy.roundOut(rect);
        renderContext.updateRect(rect);
        renderContext.setClipRect(copy);
        renderContext.updatePageInfo(notePage.getPageInfo());
        renderContext.setMatrix(m34121g(noteRenderSlice));
        renderContext.setShowExcerptIndicator(this.noteRenderArgs.getShowExcerptIndicator());
        NoteDocumentKt.ensureInitReferenceShape$default(getNoteBundle().getNoteDoc(), ShapeTypes.INSTANCE.filterReferenceShapes(notePage.getShapeList()), null, 2, null);
        List<Shape> m34129o = m34129o(notePage, noteRenderSlice);
        int size = m34129o.size();
        renderContext.getCanvas().clipRect(copy);
        if (!m34136v(bitmap, renderContext, info, m34126l, noteRenderSlice)) {
            return false;
        }
        int m34140z = m34140z(m34129o, renderContext);
        m34123i(renderContext.getCanvas(), copy);
        if (!noteRenderSlice.isRendering()) {
            m34134t("excepted drawing, but actual state = " + noteRenderSlice.getState());
        }
        if (noteRenderSlice.getSafeBitmap().isValid()) {
            noteRenderSlice.setVerifyIdList(m34131q(notePage));
            this.successList.add(noteRenderSlice);
            m34122h(noteRenderSlice);
        } else {
            log("render finish, fail, isValid = " + noteRenderSlice.getSafeBitmap().isValid() + ", isAbort = " + getAbort());
        }
        StringBuilder sb = new StringBuilder();
        sb.append(AnyKt.toSimpleNameString(this) + ", pageId = " + noteRenderSlice.getBoxInfo().getId() + " \n");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(", sliceType:");
        sb2.append(noteRenderSlice.getType());
        sb2.append(" \n");
        sb.append(sb2.toString());
        sb.append(", clipRect = " + copy + '\n');
        sb.append(", sliceDisplayRectF = " + m34127m + '\n');
        sb.append(", dirtySliceRectFInPage = " + m34126l + '\n');
        sb.append(", sliceRectFInPage = " + noteRenderSlice.getSliceRectFInPage() + '\n');
        sb.append(", bitmap.size = " + bitmap.getWidth() + " * " + bitmap.getHeight());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(", noteBox.scale = ");
        sb3.append(noteRenderSlice.getBoxInfo().getActualScale());
        sb.append(sb3.toString());
        sb.append(", sliceCount = " + this.noteRenderArgs.getSliceRenderInfoList().size());
        sb.append(", lastVerifyId = " + noteRenderSlice.lastVerifyId());
        sb.append(", isHighQuality = " + noteRenderSlice.getIsHighQuality());
        StringBuilder sb4 = new StringBuilder();
        sb4.append(", contentValid = ");
        SliceInfo contentCacheSlice = info.getContentCacheSlice();
        sb4.append((contentCacheSlice == null || (safeBitmap = contentCacheSlice.getSafeBitmap()) == null) ? null : Boolean.valueOf(safeBitmap.isValid()));
        sb.append(sb4.toString());
        sb.append(", renderShapeTotal = " + size + ", successRenderCount = " + m34140z + '\n');
        if (f43891l) {
            sb.append(ShapeUtils.INSTANCE.getTargetShapeTypeHistogramString(m34129o));
        }
        String sb5 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb5, "toString(...)");
        benchmark.report(sb5);
        return true;
    }

    /* renamed from: k */
    public final void m34125k(Bitmap bitmap) {
        BitmapKt.ifValid(bitmap, new Function1<Bitmap, Unit>() { // from class: com.onyx.android.sdk.note.request.RenderNotePageRequest$eraseColor$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Bitmap bitmap2) {
                invoke2(bitmap2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Bitmap it2) {
                int m34128n;
                Intrinsics.checkNotNullParameter(it2, "it");
                m34128n = RenderNotePageRequest.this.m34128n();
                it2.eraseColor(m34128n);
            }
        });
    }

    /* renamed from: l */
    public final RectF m34126l(SliceInfo sliceInfo) {
        return !m34132r() ? new RectF() : SliceInfo.getPageRectF$default(sliceInfo, this.noteRenderArgs.getDirtyPageDisplayRectF(), 0.0f, 2, null);
    }

    public final void log(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (f43891l) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), msg, new Object[0]);
        }
    }

    /* renamed from: m */
    public final RectF m34127m(SliceInfo sliceInfo, RectF dirtySliceRectFInPage) {
        if (dirtySliceRectFInPage.isEmpty()) {
            return sliceInfo.getSliceRenderDisplayRectF();
        }
        RectF copy = RectFKt.copy(dirtySliceRectFInPage);
        copy.offsetTo(-copy.left, -copy.top);
        return copy;
    }

    /* renamed from: n */
    public final int m34128n() {
        return this.noteRenderArgs.getVirtualPageBoxInfo().getMarginStyle().getColor();
    }

    /* renamed from: o */
    public final List<Shape> m34129o(NotePage notePage, SliceInfo sliceInfo) {
        return NotePageShape.INSTANCE.getRenderShapeList(notePage);
    }

    /* renamed from: p */
    public final RectF m34130p(SliceInfo sliceInfo) {
        if (!m34132r()) {
            return sliceInfo.getSliceRenderDisplayRectF();
        }
        RectF m34126l = m34126l(sliceInfo);
        m34126l.offsetTo(-m34126l.left, -m34126l.top);
        return m34126l;
    }

    /* renamed from: q */
    public final List<String> m34131q(NotePage notePage) {
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Shape shape : shapeList) {
            arrayList.add(shape.getShapeUniqueId());
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            if (shapeTypes.isReferenceShape(shape)) {
                arrayList.add(shapeTypes.getTargetShape(shape).getShapeUniqueId());
            }
        }
        return arrayList;
    }

    /* renamed from: r */
    public final boolean m34132r() {
        return !this.noteRenderArgs.getDirtyPageDisplayRectF().isEmpty();
    }

    /* renamed from: s */
    public final boolean m34133s(RenderContext renderContext) {
        BoxInfo virtualPageBoxInfo = this.noteRenderArgs.getVirtualPageBoxInfo();
        RectF boundingRectF = CanvasKt.boundingRectF(renderContext.getCanvas());
        Matrix matrix = renderContext.getMatrix();
        RectF copy = RectFKt.copy(virtualPageBoxInfo.getOriginRectF());
        matrix.mapRect(copy);
        return RectUtils.INSTANCE.isIntersect(boundingRectF, copy);
    }

    public final void setFailList(@NotNull List<SliceInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.failList = list;
    }

    public final void setNoteRenderArgs(@NotNull NoteRenderArgs noteRenderArgs) {
        Intrinsics.checkNotNullParameter(noteRenderArgs, "<set-?>");
        this.noteRenderArgs = noteRenderArgs;
    }

    public final void setSuccessList(@NotNull List<SliceInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.successList = list;
    }

    /* renamed from: t */
    public final void m34134t(String msg) {
        LogUtils.wTag(AnyKt.toSimpleNameString(this), msg);
    }

    /* renamed from: u */
    public final boolean m34135u(RenderContext renderContext, NoteSliceRenderInfo info, RectF dirtySliceRectFInPage) {
        boolean m34139y = m34139y(renderContext);
        boolean m34133s = m34133s(renderContext);
        log("isEnabledDisplayContent = " + m34133s);
        return m34133s ? m34137w(renderContext.getCanvas(), info, dirtySliceRectFInPage) : m34139y;
    }

    /* renamed from: v */
    public final boolean m34136v(Bitmap sliceBitmap, RenderContext renderContext, NoteSliceRenderInfo info, RectF dirtySliceRectFInPage, SliceInfo sliceInfo) {
        SafeBitmap safeBitmap;
        if (!this.noteRenderArgs.getSupportRenderPageContentBitmap()) {
            m34138x(sliceBitmap, sliceInfo);
            return true;
        }
        m34125k(sliceBitmap);
        if (m34135u(renderContext, info, dirtySliceRectFInPage)) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("render content background fail, abort render shapeList, pageId = ");
        sb.append(sliceInfo.getBoxInfo().getId());
        sb.append(", bitmap.size = ");
        sb.append(sliceBitmap.getWidth());
        sb.append(" * ");
        sb.append(sliceBitmap.getHeight());
        sb.append(", isHighQuality = ");
        sb.append(sliceInfo.getIsHighQuality());
        sb.append(", contentValid = ");
        SliceInfo contentCacheSlice = info.getContentCacheSlice();
        sb.append((contentCacheSlice == null || (safeBitmap = contentCacheSlice.getSafeBitmap()) == null) ? null : Boolean.valueOf(safeBitmap.isValid()));
        sb.append(", isAbort = ");
        sb.append(getAbort());
        sb.append(", isDirtyRender = ");
        sb.append(m34132r());
        m34134t(sb.toString());
        return false;
    }

    /* renamed from: w */
    public final boolean m34137w(Canvas canvas, NoteSliceRenderInfo info, RectF dirtySliceRectFInPage) {
        Bitmap bitmap;
        SliceInfo contentCacheSlice = info.getContentCacheSlice();
        if (contentCacheSlice == null || (bitmap = contentCacheSlice.getSafeBitmap().getBitmap()) == null) {
            return false;
        }
        if (!BitmapKt.isValid(bitmap) || !info.getNoteRenderSlice().getSafeBitmap().isValid()) {
            m34134t("render content fail, expected render content bitmap, but actual fail");
            return false;
        }
        long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
        canvas.drawBitmap(bitmap, info.getNoteRenderSlice().computeRenderContentMatrix(dirtySliceRectFInPage, contentCacheSlice), null);
        log("renderContentBitmap time = " + ((Object) Duration.m74024toStringimpl(TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto))));
        return true;
    }

    /* renamed from: x */
    public final void m34138x(Bitmap sliceBitmap, SliceInfo sliceInfo) {
        GeoLayoutShaderWrapper geoLayoutShaderWrapper = getNoteBundle().getGeoLayoutShaderWrapper();
        BoxInfo copy = this.noteRenderArgs.getVirtualPageBoxInfo().copy();
        float actualScale = sliceInfo.getBoxInfo().getActualScale() / this.noteRenderArgs.getVirtualPageBoxInfo().getActualScale();
        long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
        sliceBitmap.eraseColor(geoLayoutShaderWrapper.isEnabled() ? 0 : -1);
        RectFKt.scaleRect(copy.getBox(), actualScale);
        copy.setActualScale(sliceInfo.getBoxInfo().getActualScale());
        geoLayoutShaderWrapper.drawVirtualPageClipRectF(sliceBitmap, copy, m34130p(sliceInfo));
        log("renderContentWithGeoLayoutWrapper, deltaScale = " + actualScale + ", isHighQuality = " + sliceInfo.getIsHighQuality() + ", boxInfo.box = " + copy.getBox() + ", time = " + ((Object) Duration.m74024toStringimpl(TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto))));
    }

    /* renamed from: y */
    public final boolean m34139y(RenderContext renderContext) {
        BoxInfo virtualPageBoxInfo = this.noteRenderArgs.getVirtualPageBoxInfo();
        if (!virtualPageBoxInfo.hasMargin()) {
            return false;
        }
        Canvas canvas = renderContext.getCanvas();
        Matrix matrix = renderContext.getMatrix();
        if (!(virtualPageBoxInfo.getRotation() == 0.0f)) {
            BoxInfo copy = virtualPageBoxInfo.copy();
            BoxInfo.Companion companion = BoxInfo.INSTANCE;
            companion.rotate(copy, -virtualPageBoxInfo.getRotation());
            Matrix rotate = companion.rotate(copy.copy(), virtualPageBoxInfo.getRotation());
            rotate.postConcat(matrix);
            matrix = rotate;
            virtualPageBoxInfo = copy;
        }
        RectF copy2 = RectFKt.copy(virtualPageBoxInfo.getOriginRectF());
        GeoLayoutMargin loadFromFileOrDefault = GeoLayoutMargin.INSTANCE.loadFromFileOrDefault(TemplateResourceConstant.INSTANCE.getPageMarginTemplateFile(getNoteBundle().getDocumentId(), virtualPageBoxInfo.getMarginStyle().getTemplateResourceId()));
        loadFromFileOrDefault.setMargin(virtualPageBoxInfo.getMarginPercent(), virtualPageBoxInfo.getMarginStyle());
        loadFromFileOrDefault.setMatrix(matrix);
        loadFromFileOrDefault.setContentRect(copy2);
        GeoLayoutMarginBase.draw$default(loadFromFileOrDefault, canvas, false, null, 6, null);
        log("render margin finish");
        return true;
    }

    /* renamed from: z */
    public final int m34140z(List<? extends Shape> shapeList, final RenderContext renderContext) {
        final Ref.IntRef intRef = new Ref.IntRef();
        for (Shape shape : shapeList) {
            if (getAbort()) {
                return intRef.element;
            }
            if (this.noteRenderArgs.getLayerId() < 0 || this.noteRenderArgs.getLayerId() == shape.getLayerId()) {
                if (this.noteRenderArgs.getLayerId() >= 0 || renderContext.isLayerVisibleById(shape.getLayerId())) {
                    AnyKt.runCatching(shape, true, new Function1<Shape, Unit>() { // from class: com.onyx.android.sdk.note.request.RenderNotePageRequest$renderShapes$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Shape shape2) {
                            invoke2(shape2);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull Shape runCatching) {
                            Intrinsics.checkNotNullParameter(runCatching, "$this$runCatching");
                            if (runCatching.render(RenderContext.this)) {
                                intRef.element++;
                            }
                        }
                    });
                }
            }
        }
        return intRef.element;
    }
}
