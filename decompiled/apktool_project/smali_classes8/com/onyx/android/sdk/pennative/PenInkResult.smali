.class public final Lcom/onyx/android/sdk/pennative/PenInkResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pennative/PenInkResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pennative/PenInkResult;",
        "",
        "Lcom/onyx/android/sdk/pennative/PenInk;",
        "a",
        "Lcom/onyx/android/sdk/pennative/PenInk;",
        "getRealInk",
        "()Lcom/onyx/android/sdk/pennative/PenInk;",
        "realInk",
        "b",
        "getPredictionInk",
        "predictionInk",
        "<init>",
        "(Lcom/onyx/android/sdk/pennative/PenInk;Lcom/onyx/android/sdk/pennative/PenInk;)V",
        "Companion",
        "sdk-pennative_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/pennative/PenInkResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/onyx/android/sdk/pennative/PenInk;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/pennative/PenInk;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pennative/PenInkResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pennative/PenInkResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pennative/PenInkResult;->Companion:Lcom/onyx/android/sdk/pennative/PenInkResult$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/pennative/PenInk;Lcom/onyx/android/sdk/pennative/PenInk;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pennative/PenInk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/pennative/PenInk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "realInk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predictionInk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/pennative/PenInkResult;->a:Lcom/onyx/android/sdk/pennative/PenInk;

    iput-object p2, p0, Lcom/onyx/android/sdk/pennative/PenInkResult;->b:Lcom/onyx/android/sdk/pennative/PenInk;

    return-void
.end method

.method public static final create(Lcom/onyx/android/sdk/pennative/PenInk;Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pennative/PenInkResult;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/pennative/PenInk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/pennative/PenInk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/pennative/PenInkResult;->Companion:Lcom/onyx/android/sdk/pennative/PenInkResult$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/pennative/PenInkResult$Companion;->create(Lcom/onyx/android/sdk/pennative/PenInk;Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pennative/PenInkResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getPredictionInk()Lcom/onyx/android/sdk/pennative/PenInk;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pennative/PenInkResult;->b:Lcom/onyx/android/sdk/pennative/PenInk;

    return-object p0
.end method

.method public final getRealInk()Lcom/onyx/android/sdk/pennative/PenInk;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pennative/PenInkResult;->a:Lcom/onyx/android/sdk/pennative/PenInk;

    return-object p0
.end method
