package com.onyx.android.sdk.universal.editor.events.app;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0015\u0012\u0006\u0010 \u001a\u00020\u001b\u0012\u0006\u0010#\u001a\u00020\u001b\u0012\u0006\u0010)\u001a\u00020$¢\u0006\u0004\b*\u0010+R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u001a\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010 \u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010#\u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b!\u0010\u001d\u001a\u0004\b\"\u0010\u001fR\u0017\u0010)\u001a\u00020$8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "b", "Ljava/util/List;", "getOriginShapes", "()Ljava/util/List;", "originShapes", "Landroid/graphics/RectF;", "c", "Landroid/graphics/RectF;", "getShapeRectInActivity", "()Landroid/graphics/RectF;", "shapeRectInActivity", "", "d", Constants.STRING_SIG, "getText", "()Ljava/lang/String;", "text", "", "e", "F", "getStartX", "()F", "startX", C6997f.f39671c, "getBaseline", "baseline", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", C6998g.f39679a, "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "getTypesetArgs", "()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "typesetArgs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Landroid/graphics/RectF;Ljava/lang/String;FFLcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartEditBeautifyResultEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<HWRTextShape> originShapes;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final RectF shapeRectInActivity;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final String text;

    /* renamed from: e, reason: from kotlin metadata */
    public final float startX;

    /* renamed from: f, reason: from kotlin metadata */
    public final float baseline;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ShapeTypesetArgs typesetArgs;

    public StartEditBeautifyResultEvent(@NotNull EditorBundle editorBundle, @NotNull List<HWRTextShape> originShapes, @NotNull RectF shapeRectInActivity, @NotNull String text, float f, float f2, @NotNull ShapeTypesetArgs typesetArgs) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(originShapes, "originShapes");
        Intrinsics.checkNotNullParameter(shapeRectInActivity, "shapeRectInActivity");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(typesetArgs, "typesetArgs");
        this.editorBundle = editorBundle;
        this.originShapes = originShapes;
        this.shapeRectInActivity = shapeRectInActivity;
        this.text = text;
        this.startX = f;
        this.baseline = f2;
        this.typesetArgs = typesetArgs;
    }

    public final float getBaseline() {
        return this.baseline;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final List<HWRTextShape> getOriginShapes() {
        return this.originShapes;
    }

    @NotNull
    public final RectF getShapeRectInActivity() {
        return this.shapeRectInActivity;
    }

    public final float getStartX() {
        return this.startX;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    @NotNull
    public final ShapeTypesetArgs getTypesetArgs() {
        return this.typesetArgs;
    }
}
