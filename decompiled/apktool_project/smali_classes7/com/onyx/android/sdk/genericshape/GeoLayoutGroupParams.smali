.class public final Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;",
        "Ljava/io/Serializable;",
        "()V",
        "alignLocation",
        "",
        "getAlignLocation",
        "()Ljava/lang/String;",
        "setAlignLocation",
        "(Ljava/lang/String;)V",
        "alignLocationOrigin",
        "Lcom/onyx/android/sdk/genericshape/DrawOrigin;",
        "getAlignLocationOrigin",
        "()Lcom/onyx/android/sdk/genericshape/DrawOrigin;",
        "setAlignLocationOrigin",
        "(Lcom/onyx/android/sdk/genericshape/DrawOrigin;)V",
        "orientation",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;",
        "getOrientation",
        "()Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;",
        "setOrientation",
        "(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;)V",
        "sdk-genericshape_overseasRelease"
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
.field private alignLocation:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private alignLocationOrigin:Lcom/onyx/android/sdk/genericshape/DrawOrigin;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private orientation:Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;->HORIZONTAL:Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;->orientation:Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;->alignLocationOrigin:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    return-void
.end method


# virtual methods
.method public final getAlignLocation()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;->alignLocation:Ljava/lang/String;

    return-object p0
.end method

.method public final getAlignLocationOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;->alignLocationOrigin:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    return-object p0
.end method

.method public final getOrientation()Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;->orientation:Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;

    return-object p0
.end method

.method public final setAlignLocation(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;->alignLocation:Ljava/lang/String;

    return-void
.end method

.method public final setAlignLocationOrigin(Lcom/onyx/android/sdk/genericshape/DrawOrigin;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/DrawOrigin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;->alignLocationOrigin:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    return-void
.end method

.method public final setOrientation(Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupParams;->orientation:Lcom/onyx/android/sdk/genericshape/GeoLayoutGroupOrientation;

    return-void
.end method
