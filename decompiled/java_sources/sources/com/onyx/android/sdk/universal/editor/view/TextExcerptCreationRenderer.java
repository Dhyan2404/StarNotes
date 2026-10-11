package com.onyx.android.sdk.universal.editor.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.shape.ExcerptAttr;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "downVirtualBoxInfo", "", "initPaint", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "selection", "lowLatencyRender", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Landroid/graphics/Paint;", "b", "Landroid/graphics/Paint;", "strokePaint", "c", "fillPaint", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextExcerptCreationRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextExcerptCreationRenderer.kt\ncom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1855#2,2:36\n*S KotlinDebug\n*F\n+ 1 TextExcerptCreationRenderer.kt\ncom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer\n*L\n30#1:36,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TextExcerptCreationRenderer {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Paint strokePaint;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Paint fillPaint;

    public TextExcerptCreationRenderer(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.strokePaint = new Paint();
        this.fillPaint = new Paint();
    }

    public final void initPaint(@NotNull BoxInfo downVirtualBoxInfo) {
        Intrinsics.checkNotNullParameter(downVirtualBoxInfo, "downVirtualBoxInfo");
        ExcerptAttr forceGet = MMKVNote.INSTANCE.getExcerptShapeAttrOption().forceGet();
        this.strokePaint = forceGet.createStrokePaint();
        this.fillPaint = forceGet.createFillPaint(EditorBundleKt.isCurDarkTheme(this.editorBundle, downVirtualBoxInfo.getId()));
    }

    public final void lowLatencyRender(@NotNull Canvas canvas, @NotNull ReaderSelection selection) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(selection, "selection");
        for (RectF rectF : selection.rectangles()) {
            canvas.drawRect(rectF, this.fillPaint);
            canvas.drawRect(rectF, this.strokePaint);
        }
    }
}
