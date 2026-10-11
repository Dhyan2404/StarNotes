package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B5\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u0018¢\u0006\u0004\b\u001e\u0010\u001fR\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0017\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0011\u001a\u0004\b\u0016\u0010\u0013R\u0017\u0010\u001d\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;", "", "", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "a", "Ljava/util/List;", "getOriginShapes", "()Ljava/util/List;", "originShapes", "", "b", Constants.STRING_SIG, "getNewText", "()Ljava/lang/String;", "newText", "", "c", "F", "getStartX", "()F", "startX", "d", "getBaseline", "baseline", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "e", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "getTypesetArgs", "()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "typesetArgs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/lang/String;FFLcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FinishEditBeautifyResultEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<HWRTextShape> originShapes;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String newText;

    /* renamed from: c, reason: from kotlin metadata */
    public final float startX;

    /* renamed from: d, reason: from kotlin metadata */
    public final float baseline;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ShapeTypesetArgs typesetArgs;

    public FinishEditBeautifyResultEvent(@NotNull List<HWRTextShape> originShapes, @NotNull String newText, float f, float f2, @NotNull ShapeTypesetArgs typesetArgs) {
        Intrinsics.checkNotNullParameter(originShapes, "originShapes");
        Intrinsics.checkNotNullParameter(newText, "newText");
        Intrinsics.checkNotNullParameter(typesetArgs, "typesetArgs");
        this.originShapes = originShapes;
        this.newText = newText;
        this.startX = f;
        this.baseline = f2;
        this.typesetArgs = typesetArgs;
    }

    public final float getBaseline() {
        return this.baseline;
    }

    @NotNull
    public final String getNewText() {
        return this.newText;
    }

    @NotNull
    public final List<HWRTextShape> getOriginShapes() {
        return this.originShapes;
    }

    public final float getStartX() {
        return this.startX;
    }

    @NotNull
    public final ShapeTypesetArgs getTypesetArgs() {
        return this.typesetArgs;
    }
}
