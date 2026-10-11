package com.onyx.android.sdk.neohwr.segmenter;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0082 ¢\u0006\u0002\u0010\nJ$\u0010\u000b\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\b\u001a\u00020\tH\u0082 ¢\u0006\u0002\u0010\rJ!\u0010\u000e\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ!\u0010\u000f\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\r¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;", "", "()V", "nativeSegment", "", "shapes", "", "Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;", "([Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;)Z", "nativeSegmentTextShapes", "Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;", "([Lcom/onyx/android/sdk/neohwr/segmenter/InputTextShape;Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;)Z", "segment", "segmentTextShapes", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TextSegmenter {

    @NotNull
    public static final TextSegmenter INSTANCE = new TextSegmenter();

    static {
        System.loadLibrary("neo_hwr_jni");
    }

    private TextSegmenter() {
    }

    private final native boolean nativeSegment(InputShape[] shapes, TextSegmentResult result);

    private final native boolean nativeSegmentTextShapes(InputTextShape[] shapes, TextSegmentResult result);

    public final boolean segment(@NotNull InputShape[] shapes, @NotNull TextSegmentResult result) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(result, "result");
        return nativeSegment(shapes, result);
    }

    public final boolean segmentTextShapes(@NotNull InputTextShape[] shapes, @NotNull TextSegmentResult result) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(result, "result");
        return nativeSegmentTextShapes(shapes, result);
    }
}
