.class public final Lcom/onyx/android/sdk/pen/NeoBallpointPen;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoBallpointPen;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/pen/NeoPen;",
        "segment",
        "",
        "defaultPenConfig",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/pen/NeoBallpointPen;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/pen/NeoBallpointPen;

    invoke-direct {v0}, Lcom/onyx/android/sdk/pen/NeoBallpointPen;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/pen/NeoBallpointPen;->INSTANCE:Lcom/onyx/android/sdk/pen/NeoBallpointPen;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/onyx/android/sdk/pen/NeoBallpointPen;ZILjava/lang/Object;)Lcom/onyx/android/sdk/pen/NeoPen;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/NeoBallpointPen;->create(Z)Lcom/onyx/android/sdk/pen/NeoPen;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Z)Lcom/onyx/android/sdk/pen/NeoPen;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;

    invoke-direct {p1, v1, v2, v0, p0}, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/pen/NeoSinglePathResultPen;

    invoke-direct {p1, v1, v2, v0, p0}, Lcom/onyx/android/sdk/pen/NeoSinglePathResultPen;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object p1
.end method

.method public final defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;

    invoke-direct {p0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;-><init>()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setType(I)V

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setSmoothLevel(F)V

    return-object p0
.end method
