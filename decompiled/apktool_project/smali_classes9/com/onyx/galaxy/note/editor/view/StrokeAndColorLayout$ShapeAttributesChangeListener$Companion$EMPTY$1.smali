.class public final Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener$Companion$EMPTY$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener$Companion$EMPTY$1",
        "Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStrokeDesc(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener$DefaultImpls;->getStrokeDesc(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onShapeAttributesChanged(Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener$DefaultImpls;->onShapeAttributesChanged(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V

    return-void
.end method
