package com.onyx.android.sdk.note.common.shape.outline;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;", GeoConstant.KEY_Universal_Shape_Type, "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class GuideLineExtractorFactory {

    @NotNull
    public static final GuideLineExtractorFactory INSTANCE = new GuideLineExtractorFactory();

    /* renamed from: b */
    public static final List m33886b(UniversalShape it2) {
        List emptyList;
        Intrinsics.checkNotNullParameter(it2, "it");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
    
        return new com.onyx.android.sdk.note.common.shape.outline.TriangleGuideLineExtractor();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0028, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.BIDIRECTIONAL_LINE) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.ISOSCELES_TRAPEZOID) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:?, code lost:
    
        return new com.onyx.android.sdk.note.common.shape.outline.TrapezoidGuideLineExtractor();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003c, code lost:
    
        if (r1.equals("rhombus") == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return new com.onyx.android.sdk.note.common.shape.outline.ParallelogramGuideLineExtractor();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.RECTANGLE) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        return new com.onyx.android.sdk.note.common.shape.outline.SquareGuideLineExtractor();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.TRAPEZOID) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005a, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.HEXAGON) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return new com.onyx.android.sdk.note.common.shape.outline.PolygonGuideLineExtractor();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.DIRECTION_LINE) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006e, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.POLYLINE) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:?, code lost:
    
        return new com.onyx.android.sdk.note.common.shape.outline.PolylineGuideLineExtractor();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0078, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.RIGHT_TRAPEZOID) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0089, code lost:
    
        if (r1.equals("parallelogram") == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009a, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.PENTAGON) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a4, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.RIGHT_TRIANGLE) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0014, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.WAVE_LINE) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bf, code lost:
    
        if (r1.equals("angle") == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00e1, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.OVAL) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:?, code lost:
    
        return new com.onyx.android.sdk.note.common.shape.outline.OvalGuideLineExtractor();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00eb, code lost:
    
        if (r1.equals("line") == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00f4, code lost:
    
        if (r1.equals("polygon") == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00fd, code lost:
    
        if (r1.equals("square") == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x010c, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.DASH_LINE) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x011b, code lost:
    
        if (r1.equals("circle") == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:?, code lost:
    
        return new com.onyx.android.sdk.note.common.shape.outline.LineGuideLineExtractor();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x012a, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.OCTAGON) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0139, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.REGULAR_TRIANGLE) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0142, code lost:
    
        if (r1.equals(com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst.ISOSCELES_TRIANGLE) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
    
        if (r1.equals("triangle") == false) goto L93;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractor create(@org.jetbrains.annotations.NotNull java.lang.String r1) {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractorFactory.create(java.lang.String):com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractor");
    }
}
