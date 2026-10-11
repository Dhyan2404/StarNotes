.class public final Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getStrokeDesc(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;I)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onShapeAttributesChanged(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shapeAttributes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
