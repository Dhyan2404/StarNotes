.class public abstract Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBData;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBData;",
        "()V",
        "collectDataExportToFile",
        "",
        "pbDataContext",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;",
        "collectDataToPBFromDB",
        "copyDBToDB",
        "copyPBToDB",
        "exportToDBFromPB",
        "saveDataToDB",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collectDataExportToFile(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public collectDataToPBFromDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public copyDBToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public copyPBToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public exportToDBFromPB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pbDataContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;->saveDataToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V

    return-void
.end method

.method public saveDataToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
