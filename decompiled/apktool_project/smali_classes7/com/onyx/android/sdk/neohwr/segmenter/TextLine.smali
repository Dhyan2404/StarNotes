.class public final Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neohwr/segmenter/TextLine$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000eJ&\u0010\u0017\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R \u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;",
        "",
        "()V",
        "angle",
        "",
        "getAngle",
        "()F",
        "setAngle",
        "(F)V",
        "characterSize",
        "getCharacterSize",
        "setCharacterSize",
        "elements",
        "",
        "Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;",
        "getElements",
        "()Ljava/util/List;",
        "setElements",
        "(Ljava/util/List;)V",
        "region",
        "Landroid/graphics/RectF;",
        "getRegion",
        "()Landroid/graphics/RectF;",
        "setRegion",
        "(Landroid/graphics/RectF;)V",
        "addElement",
        "",
        "element",
        "left",
        "top",
        "right",
        "bottom",
        "Companion",
        "sdk-neohwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/neohwr/segmenter/TextLine$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private angle:F

.field private characterSize:F

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private region:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->Companion:Lcom/onyx/android/sdk/neohwr/segmenter/TextLine$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->region:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->elements:Ljava/util/List;

    return-void
.end method

.method public static final createLine()Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->Companion:Lcom/onyx/android/sdk/neohwr/segmenter/TextLine$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine$Companion;->createLine()Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addElement(Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->elements:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getAngle()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->angle:F

    return p0
.end method

.method public final getCharacterSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->characterSize:F

    return p0
.end method

.method public final getElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->elements:Ljava/util/List;

    return-object p0
.end method

.method public final getRegion()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->region:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setAngle(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->angle:F

    return-void
.end method

.method public final setCharacterSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->characterSize:F

    return-void
.end method

.method public final setElements(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->elements:Ljava/util/List;

    return-void
.end method

.method public final setRegion(FFFF)V
    .locals 1

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->region:Landroid/graphics/RectF;

    return-void
.end method

.method public final setRegion(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->region:Landroid/graphics/RectF;

    return-void
.end method
