.class public final Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B5\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u000e\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0017\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0011\u001a\u0004\u0008\u0016\u0010\u0013R\u0017\u0010\u001d\u001a\u00020\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;",
        "",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        "a",
        "Ljava/util/List;",
        "getOriginShapes",
        "()Ljava/util/List;",
        "originShapes",
        "",
        "b",
        "Ljava/lang/String;",
        "getNewText",
        "()Ljava/lang/String;",
        "newText",
        "",
        "c",
        "F",
        "getStartX",
        "()F",
        "startX",
        "d",
        "getBaseline",
        "baseline",
        "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "e",
        "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "getTypesetArgs",
        "()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "typesetArgs",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;FFLcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:F

.field public final d:F

.field public final e:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;FFLcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;",
            "Ljava/lang/String;",
            "FF",
            "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
            ")V"
        }
    .end annotation

    const-string v0, "originShapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typesetArgs"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;->b:Ljava/lang/String;

    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;->c:F

    iput p4, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;->d:F

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;->e:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    return-void
.end method


# virtual methods
.method public final getBaseline()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;->d:F

    return p0
.end method

.method public final getNewText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getOriginShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;->a:Ljava/util/List;

    return-object p0
.end method

.method public final getStartX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;->c:F

    return p0
.end method

.method public final getTypesetArgs()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;->e:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    return-object p0
.end method
