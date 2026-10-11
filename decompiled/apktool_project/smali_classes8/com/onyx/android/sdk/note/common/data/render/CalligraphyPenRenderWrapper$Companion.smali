.class public final Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper;",
        "neoPenConfig",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "segment",
        "",
        "sdk-note_overseasRelease"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper$Companion;Lcom/onyx/android/sdk/pen/NeoPenConfig;ZILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->getColor()I

    move-result p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ColorKt;->isColorOpaque(I)Z

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper$Companion;->create(Lcom/onyx/android/sdk/pen/NeoPenConfig;Z)Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Lcom/onyx/android/sdk/pen/NeoPenConfig;Z)Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pen/NeoPenConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "neoPenConfig"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/pen/NeoSquarePen;->Companion:Lcom/onyx/android/sdk/pen/NeoSquarePen$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/NeoSquarePen$Companion;->create(Lcom/onyx/android/sdk/pen/NeoPenConfig;)Lcom/onyx/android/sdk/pen/NeoPen;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper;

    invoke-direct {v0, p0, p2, p1}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper;-><init>(Lcom/onyx/android/sdk/pen/NeoPen;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
