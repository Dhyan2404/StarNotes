.class public interface abstract Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBData;",
        "",
        "type",
        "",
        "getType",
        "()I",
        "setType",
        "(I)V",
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


# virtual methods
.method public abstract collectDataExportToFile(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract collectDataToPBFromDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract copyDBToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract copyPBToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract exportToDBFromPB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getType()I
.end method

.method public abstract saveDataToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setType(I)V
.end method
