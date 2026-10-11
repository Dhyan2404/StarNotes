.class public final Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neohwr/segmenter/TextElement$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0011J!\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00192\u0006\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0002\u0010\u001cJ&\u0010\r\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;",
        "",
        "()V",
        "angle",
        "",
        "getAngle",
        "()F",
        "setAngle",
        "(F)V",
        "region",
        "Landroid/graphics/RectF;",
        "getRegion",
        "()Landroid/graphics/RectF;",
        "setRegion",
        "(Landroid/graphics/RectF;)V",
        "shapes",
        "",
        "Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;",
        "getShapes",
        "()Ljava/util/List;",
        "setShapes",
        "(Ljava/util/List;)V",
        "addShape",
        "",
        "shape",
        "",
        "idx",
        "",
        "([Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;I)V",
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
.field public static final Companion:Lcom/onyx/android/sdk/neohwr/segmenter/TextElement$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private angle:F

.field private region:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->Companion:Lcom/onyx/android/sdk/neohwr/segmenter/TextElement$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->shapes:Ljava/util/List;

    return-void
.end method

.method public static final createElement()Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->Companion:Lcom/onyx/android/sdk/neohwr/segmenter/TextElement$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement$Companion;->createElement()Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addShape(Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->shapes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addShape([Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;I)V
    .locals 1
    .param p1    # [Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->addShape(Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;)V

    return-void
.end method

.method public final getAngle()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->angle:F

    return p0
.end method

.method public final getRegion()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->region:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->shapes:Ljava/util/List;

    return-object p0
.end method

.method public final setAngle(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->angle:F

    return-void
.end method

.method public final setRegion(FFFF)V
    .locals 1

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->region:Landroid/graphics/RectF;

    return-void
.end method

.method public final setRegion(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->region:Landroid/graphics/RectF;

    return-void
.end method

.method public final setShapes(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->shapes:Ljava/util/List;

    return-void
.end method
