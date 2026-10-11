.class public final Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs$Companion;",
        "",
        "()V",
        "compare",
        "",
        "args1",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
        "args2",
        "isNullOrEmpty",
        "",
        "args",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs$Companion;->isNullOrEmpty(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs$Companion;->isNullOrEmpty(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs$Companion;->isNullOrEmpty(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs$Companion;->isNullOrEmpty(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->access$getRevisionId$p(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    invoke-static {p2}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->access$getRevisionId$p(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final isNullOrEmpty(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->access$getRevisionId$p(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
