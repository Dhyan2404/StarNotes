.class public final Lcom/onyx/android/sdk/pen/NeoCharcoalPen$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/pen/NeoCharcoalPen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoCharcoalPen$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/pen/NeoCharcoalPen;",
        "config",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "defaultPenConfig",
        "sdk-pen_release"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/pen/NeoCharcoalPen$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/onyx/android/sdk/pen/NeoPenConfig;)Lcom/onyx/android/sdk/pen/NeoCharcoalPen;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/pen/NeoPenConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "config"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/pennative/NeoPenNative;->INSTANCE:Lcom/onyx/android/sdk/pennative/NeoPenNative;

    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->toNativeConfig()Lcom/onyx/android/sdk/pennative/PenConfig;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/pennative/NeoPenNative;->createPen(ILcom/onyx/android/sdk/pennative/PenConfig;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/pen/NeoCharcoalPen;

    invoke-direct {v0, p0, p1, v1}, Lcom/onyx/android/sdk/pen/NeoCharcoalPen;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;

    invoke-direct {p0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setType(I)V

    return-object p0
.end method
