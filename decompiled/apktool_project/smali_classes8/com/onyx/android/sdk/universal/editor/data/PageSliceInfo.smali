.class public final Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;",
        "",
        "virtualPageBoxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "sliceInfo",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "contentSliceInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V",
        "getContentSliceInfo",
        "()Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "setContentSliceInfo",
        "(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V",
        "getSliceInfo",
        "setSliceInfo",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setVirtualPageBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sliceInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-void
.end method


# virtual methods
.method public final getContentSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-object p0
.end method

.method public final getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-object p0
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final setContentSliceInfo(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-void
.end method

.method public final setSliceInfo(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-void
.end method

.method public final setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method
