package com.onyx.android.sdk.neopdf;

import android.graphics.RectF;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfCharInfo;", "", "", "a", Constants.STRING_SIG, "getText", "()Ljava/lang/String;", "text", "Landroid/graphics/RectF;", "b", "Landroid/graphics/RectF;", "getRect", "()Landroid/graphics/RectF;", "rect", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Landroid/graphics/RectF;)V", "Companion", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PdfCharInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String text;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RectF rect;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfCharInfo$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/neopdf/PdfCharInfo;", "selection", "Lcom/onyx/android/sdk/neopdf/PdfTextSelection;", "createPdfCharInfo", "rectangleArray", "", "text", "", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final PdfCharInfo create(@NotNull PdfTextSelection selection) {
            Object first;
            Intrinsics.checkNotNullParameter(selection, "selection");
            List<RectF> rectangles = selection.rectangles;
            Intrinsics.checkNotNullExpressionValue(rectangles, "rectangles");
            if (!(!rectangles.isEmpty())) {
                Debug.INSTANCE.m32059w(Companion.class, "create fail, text = " + selection.text, new Object[0]);
                return null;
            }
            String str = selection.text;
            if (str == null) {
                str = "";
            }
            List<RectF> rectangles2 = selection.rectangles;
            Intrinsics.checkNotNullExpressionValue(rectangles2, "rectangles");
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) rectangles2);
            Intrinsics.checkNotNullExpressionValue(first, "first(...)");
            return new PdfCharInfo(str, (RectF) first);
        }

        @Nullable
        public final PdfCharInfo createPdfCharInfo(@NotNull float[] rectangleArray, @Nullable String text) {
            Intrinsics.checkNotNullParameter(rectangleArray, "rectangleArray");
            if (rectangleArray.length >= 4) {
                RectF rectF = new RectF(rectangleArray[0], rectangleArray[1], rectangleArray[2], rectangleArray[3]);
                if (text == null) {
                    text = "";
                }
                return new PdfCharInfo(text, rectF);
            }
            Debug.INSTANCE.m32059w(Companion.class, "create fail, text = " + text + ", rectangleArray.size = " + rectangleArray.length, new Object[0]);
            return null;
        }

        public Companion() {
        }
    }

    public PdfCharInfo(@NotNull String text, @NotNull RectF rect) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.text = text;
        this.rect = rect;
    }

    @NotNull
    public final RectF getRect() {
        return this.rect;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }
}
