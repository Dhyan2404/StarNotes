.class public final Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006J\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;",
        "",
        "()V",
        "bkGroundRes",
        "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;",
        "config",
        "Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;",
        "documentId",
        "",
        "getBkGroundRes",
        "getConfig",
        "getDocumentId",
        "setBkGroundRes",
        "setConfig",
        "setDocumentId",
        "sdk-replicator_overseasRelease"
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
.field private bkGroundRes:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private config:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private documentId:Ljava/lang/String;
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
.method public final getBkGroundRes()Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;->bkGroundRes:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    return-object p0
.end method

.method public final getConfig()Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;->config:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    return-object p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final setBkGroundRes(Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;->bkGroundRes:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    return-object p0
.end method

.method public final setConfig(Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;)Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;->config:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    return-object p0
.end method

.method public final setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;->documentId:Ljava/lang/String;

    return-object p0
.end method
