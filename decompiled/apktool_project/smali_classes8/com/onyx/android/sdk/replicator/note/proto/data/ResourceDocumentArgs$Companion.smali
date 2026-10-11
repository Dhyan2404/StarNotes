.class public final Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs$Companion;",
        "",
        "()V",
        "compare",
        "",
        "args1",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;",
        "args2",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;)I
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;->access$getCreateAt$p(Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;)J

    move-result-wide p0

    invoke-static {p2}, Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;->access$getCreateAt$p(Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    :goto_0
    return p0
.end method
