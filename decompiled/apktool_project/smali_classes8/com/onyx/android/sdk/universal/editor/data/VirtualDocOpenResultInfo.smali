.class public final Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;",
        "",
        "()V",
        "geoLayoutBackground",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "getGeoLayoutBackground",
        "()Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "setGeoLayoutBackground",
        "(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V",
        "virtualDocModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;",
        "getVirtualDocModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;",
        "setVirtualDocModel",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V",
        "virtualPageBoxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setVirtualPageBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
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


# instance fields
.field private geoLayoutBackground:Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private virtualDocModel:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGeoLayoutBackground()Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->geoLayoutBackground:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-object p0
.end method

.method public final getVirtualDocModel()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->virtualDocModel:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    return-object p0
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final setGeoLayoutBackground(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->geoLayoutBackground:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-void
.end method

.method public final setVirtualDocModel(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->virtualDocModel:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    return-void
.end method

.method public final setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method
