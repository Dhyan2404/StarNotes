package com.onyx.android.sdk.note.common.data.shape;

import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u001f\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;", "", "", "component1", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "component2", "filePath", "sourceShape", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getFilePath", "()Ljava/lang/String;", "b", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getSourceShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class CreateImageShapeBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String filePath;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public final Shape sourceShape;

    public CreateImageShapeBean(@NotNull String filePath, @Nullable Shape shape) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        this.filePath = filePath;
        this.sourceShape = shape;
    }

    public static /* synthetic */ CreateImageShapeBean copy$default(CreateImageShapeBean createImageShapeBean, String str, Shape shape, int i, Object obj) {
        if ((i & 1) != 0) {
            str = createImageShapeBean.filePath;
        }
        if ((i & 2) != 0) {
            shape = createImageShapeBean.sourceShape;
        }
        return createImageShapeBean.copy(str, shape);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getFilePath() {
        return this.filePath;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Shape getSourceShape() {
        return this.sourceShape;
    }

    @NotNull
    public final CreateImageShapeBean copy(@NotNull String filePath, @Nullable Shape sourceShape) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return new CreateImageShapeBean(filePath, sourceShape);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CreateImageShapeBean)) {
            return false;
        }
        CreateImageShapeBean createImageShapeBean = (CreateImageShapeBean) other;
        return Intrinsics.areEqual(this.filePath, createImageShapeBean.filePath) && Intrinsics.areEqual(this.sourceShape, createImageShapeBean.sourceShape);
    }

    @NotNull
    public final String getFilePath() {
        return this.filePath;
    }

    @Nullable
    public final Shape getSourceShape() {
        return this.sourceShape;
    }

    public int hashCode() {
        int hashCode = this.filePath.hashCode() * 31;
        Shape shape = this.sourceShape;
        return hashCode + (shape == null ? 0 : shape.hashCode());
    }

    @NotNull
    public String toString() {
        return "CreateImageShapeBean(filePath=" + this.filePath + ", sourceShape=" + this.sourceShape + ')';
    }

    public /* synthetic */ CreateImageShapeBean(String str, Shape shape, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : shape);
    }
}
