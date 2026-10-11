.class public final Lcom/onyx/android/sdk/pennative/PenInkResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/pennative/PenInkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pennative/PenInkResult$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/pennative/PenInkResult;",
        "realInk",
        "Lcom/onyx/android/sdk/pennative/PenInk;",
        "predictionInk",
        "sdk-pennative_release"
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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/pennative/PenInkResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/onyx/android/sdk/pennative/PenInk;Lcom/onyx/android/sdk/pennative/PenInk;)Lcom/onyx/android/sdk/pennative/PenInkResult;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pennative/PenInk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/pennative/PenInk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "realInk"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "predictionInk"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/pennative/PenInkResult;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pennative/PenInkResult;-><init>(Lcom/onyx/android/sdk/pennative/PenInk;Lcom/onyx/android/sdk/pennative/PenInk;)V

    return-object p0
.end method
