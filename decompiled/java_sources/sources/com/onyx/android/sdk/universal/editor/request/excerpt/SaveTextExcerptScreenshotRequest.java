package com.onyx.android.sdk.universal.editor.request.excerpt;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.data.annotation.WritingMode;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0013\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b8\u00109J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J$\u0010\u0012\u001a\u00020\u0004*\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0017\u0010\u0017\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\r\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0010\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR(\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010'\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010)\u001a\u00020(8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u00105\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001c\u00107\u001a\b\u0012\u0004\u0012\u00020\n0\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u0010\u001b¨\u0006:"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/excerpt/SaveTextExcerptScreenshotRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", C6998g.f39679a, "j", "Landroid/graphics/Paint;", C6999h.f39688c, "Landroid/graphics/RectF;", "boundingRectF", "", C6997f.f39671c, "Landroid/graphics/Canvas;", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "sliceInfo", "textRegion", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "getSliceInfo", "()Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "Ljava/util/List;", "getDisplayRectFList", "()Ljava/util/List;", "setDisplayRectFList", "(Ljava/util/List;)V", "displayRectFList", "", "F", "getSliceScale", "()F", "setSliceScale", "(F)V", "sliceScale", "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", gon.f71267T, "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", "getWritingMode", "()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", "setWritingMode", "(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V", "", Constants.STRING_SIG, "getImgPath", "()Ljava/lang/String;", "setImgPath", "(Ljava/lang/String;)V", "imgPath", C4921e.f26537n, "pageDisplayRectList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveTextExcerptScreenshotRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveTextExcerptScreenshotRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/SaveTextExcerptScreenshotRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,174:1\n1549#2:175\n1620#2,3:176\n1855#2,2:181\n1855#2,2:184\n43#3,2:179\n45#3:183\n*S KotlinDebug\n*F\n+ 1 SaveTextExcerptScreenshotRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/SaveTextExcerptScreenshotRequest\n*L\n64#1:175\n64#1:176,3\n81#1:181,2\n148#1:184,2\n79#1:179,2\n79#1:183\n*E\n"})
/* loaded from: classes8.dex */
public final class SaveTextExcerptScreenshotRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualPageBoxInfo;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final SliceInfo sliceInfo;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<RectF> displayRectFList;

    /* renamed from: i, reason: from kotlin metadata */
    public float sliceScale;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String imgPath;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public List<RectF> pageDisplayRectList;
    public WritingMode writingMode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SaveTextExcerptScreenshotRequest(@NotNull WorkBundle workBundle, @NotNull BoxInfo virtualPageBoxInfo, @NotNull SliceInfo sliceInfo) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(sliceInfo, "sliceInfo");
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.sliceInfo = sliceInfo;
        this.displayRectFList = new ArrayList();
        this.sliceScale = 1.0f;
        this.imgPath = "";
        this.pageDisplayRectList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        if (CollectionKt.isNullOrEmpty(this.displayRectFList)) {
            return;
        }
        m41462g();
        m41465j(workBundle);
    }

    /* renamed from: f */
    public final List<RectF> m41461f(RectF boundingRectF) {
        Object first;
        Object last;
        Object orNull;
        RectF rectF;
        RectF rectF2;
        Object orNull2;
        RectF rectF3;
        RectF copy;
        int dimens = ResManager.INSTANCE.getDimens(C8045R.dimen.text_excerpt_screenshot_align_threshold);
        ArrayList arrayList = new ArrayList();
        BoxInfo.Companion companion = BoxInfo.INSTANCE;
        Matrix unRotatedMatrix = companion.getUnRotatedMatrix(this.virtualPageBoxInfo);
        RectF copy2 = RectFKt.copy(boundingRectF);
        unRotatedMatrix.mapRect(copy2);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.pageDisplayRectList);
        RectF copy3 = RectFKt.copy((RectF) first);
        unRotatedMatrix.mapRect(copy3);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.pageDisplayRectList);
        RectF copy4 = RectFKt.copy((RectF) last);
        unRotatedMatrix.mapRect(copy4);
        RectF rectF4 = null;
        if (getWritingMode().isVertical()) {
            rectF2 = new RectF(copy3.left, copy2.top, copy2.right, copy3.top);
        } else {
            orNull = CollectionsKt___CollectionsKt.getOrNull(this.pageDisplayRectList, 1);
            RectF rectF5 = (RectF) orNull;
            if (rectF5 == null || (rectF = RectFKt.copy(rectF5)) == null) {
                rectF = null;
            } else {
                unRotatedMatrix.mapRect(rectF);
            }
            rectF2 = (rectF == null || rectF.top <= copy3.bottom) ? new RectF(copy2.left, copy2.top, copy3.left, copy3.bottom) : new RectF(copy2.left, copy2.top, copy3.left, rectF.top);
        }
        if (!rectF2.isEmpty() && rectF2.width() >= dimens) {
            arrayList.add(rectF2);
        }
        if (getWritingMode().isVertical()) {
            rectF3 = new RectF(copy2.left, copy4.bottom, copy4.right, copy2.bottom);
        } else {
            orNull2 = CollectionsKt___CollectionsKt.getOrNull(this.pageDisplayRectList, r4.size() - 2);
            RectF rectF6 = (RectF) orNull2;
            if (rectF6 != null && (copy = RectFKt.copy(rectF6)) != null) {
                unRotatedMatrix.mapRect(copy);
                rectF4 = copy;
            }
            rectF3 = (rectF4 == null || rectF4.bottom >= copy4.top) ? new RectF(copy4.right, copy4.top, copy2.right, copy2.bottom) : new RectF(copy4.right, rectF4.bottom, copy2.right, copy2.bottom);
        }
        if (!rectF3.isEmpty() && rectF3.width() >= dimens) {
            arrayList.add(rectF3);
        }
        Matrix rotatedMatrix = companion.getRotatedMatrix(this.virtualPageBoxInfo);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            rotatedMatrix.mapRect((RectF) it2.next());
        }
        return arrayList;
    }

    /* renamed from: g */
    public final void m41462g() {
        RectF visibleRect;
        int collectionSizeOrDefault;
        List<RectF> mutableList;
        BoxInfo contentInfo = this.virtualPageBoxInfo.getContentInfo();
        if (contentInfo == null || (visibleRect = contentInfo.getVisibleRect()) == null) {
            return;
        }
        List<RectF> list = this.displayRectFList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            RectF copy = RectFKt.copy((RectF) it2.next());
            copy.offset(-visibleRect.left, -visibleRect.top);
            RectFKt.scaleRect(copy, this.sliceScale);
            arrayList.add(copy);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        this.pageDisplayRectList = mutableList;
    }

    @NotNull
    public final List<RectF> getDisplayRectFList() {
        return this.displayRectFList;
    }

    @NotNull
    public final String getImgPath() {
        return this.imgPath;
    }

    @NotNull
    public final SliceInfo getSliceInfo() {
        return this.sliceInfo;
    }

    public final float getSliceScale() {
        return this.sliceScale;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    @NotNull
    public final WritingMode getWritingMode() {
        WritingMode writingMode = this.writingMode;
        if (writingMode != null) {
            return writingMode;
        }
        Intrinsics.throwUninitializedPropertyAccessException(gon.f71267T);
        return null;
    }

    /* renamed from: h */
    public final Paint m41463h() {
        Paint paint = new Paint();
        paint.setColor(0);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        return paint;
    }

    /* renamed from: i */
    public final void m41464i(Canvas canvas, SliceInfo sliceInfo, RectF rectF, RectF rectF2) {
        Bitmap bitmap = sliceInfo.getSafeBitmap().getBitmap();
        if (BitmapKt.isValid(bitmap)) {
            RectF sliceRectF = sliceInfo.getSliceRectF(rectF);
            if (sliceRectF.isEmpty()) {
                return;
            }
            RectF translateCoordinates = RectFKt.translateCoordinates(RectFKt.copy(rectF), rectF2);
            translateCoordinates.right = translateCoordinates.left + sliceRectF.width();
            translateCoordinates.bottom = translateCoordinates.top + sliceRectF.height();
            canvas.drawBitmap(bitmap, RectKt.toRectNonNull(sliceRectF), translateCoordinates, (Paint) null);
        }
    }

    /* renamed from: j */
    public final void m41465j(WorkBundle workBundle) {
        RectF boundingRectF = RectFKt.boundingRectF(this.pageDisplayRectList);
        List<RectF> m41461f = m41461f(boundingRectF);
        Bitmap createBitmap = Bitmap.createBitmap((int) boundingRectF.width(), (int) boundingRectF.height(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Paint m41463h = m41463h();
        Canvas canvas = new Canvas(createBitmap);
        m41464i(canvas, this.sliceInfo, boundingRectF, boundingRectF);
        Iterator<T> it2 = m41461f.iterator();
        while (it2.hasNext()) {
            canvas.drawRect(RectFKt.translateCoordinates(RectFKt.copy((RectF) it2.next()), boundingRectF), m41463h);
        }
        String absolutePath = new File(ResManager.INSTANCE.getAppContext().getExternalCacheDir(), UUIDUtils.INSTANCE.rawUUID() + ".png").getAbsolutePath();
        FileUtils.INSTANCE.ensureFileExists(absolutePath);
        BitmapKt.save$default(createBitmap, absolutePath, 0, 2, null);
        Debug.INSTANCE.m32035d(SaveTextExcerptScreenshotRequest.class, "saveImg, path = " + absolutePath + ", size = " + BitmapKt.boundingRectF(createBitmap), new Object[0]);
        Intrinsics.checkNotNull(absolutePath);
        this.imgPath = absolutePath;
    }

    public final void setDisplayRectFList(@NotNull List<RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.displayRectFList = list;
    }

    public final void setImgPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imgPath = str;
    }

    public final void setSliceScale(float f) {
        this.sliceScale = f;
    }

    public final void setWritingMode(@NotNull WritingMode writingMode) {
        Intrinsics.checkNotNullParameter(writingMode, "<set-?>");
        this.writingMode = writingMode;
    }
}
