.class public final Lcom/onyx/android/sdk/note/common/shape/pen/CalligraphyScribbleShape;
.super Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/pen/CalligraphyScribbleShape;",
        "Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;",
        "",
        "L",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;",
        "M",
        "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;",
        "getShapeRender",
        "()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;",
        "setShapeRender",
        "(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;)V",
        "shapeRender",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public L:I

.field public M:Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;-><init>()V

    const/16 v0, 0x2f

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/CalligraphyScribbleShape;->L:I

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/CalligraphyScribbleShape;->M:Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    return-void
.end method


# virtual methods
.method public getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/CalligraphyScribbleShape;->M:Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/CalligraphyScribbleShape;->L:I

    return p0
.end method

.method public setShapeRender(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/CalligraphyScribbleShape;->M:Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/CalligraphyScribbleShape;->L:I

    return-void
.end method
