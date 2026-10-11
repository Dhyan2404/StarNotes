.class public final Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;",
        "",
        "()V",
        "color",
        "",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
        "opacity",
        "",
        "getOpacity",
        "()F",
        "setOpacity",
        "(F)V",
        "spacing",
        "getSpacing",
        "setSpacing",
        "type",
        "",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private color:I

.field private opacity:F

.field private spacing:F

.field private type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;->type:Ljava/lang/String;

    const v0, -0x777778

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;->color:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;->spacing:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;->opacity:F

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;->color:I

    return p0
.end method

.method public final getOpacity()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;->opacity:F

    return p0
.end method

.method public final getSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;->spacing:F

    return p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;->color:I

    return-void
.end method

.method public final setOpacity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;->opacity:F

    return-void
.end method

.method public final setSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;->spacing:F

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/GeoBKGroundAttr;->type:Ljava/lang/String;

    return-void
.end method
