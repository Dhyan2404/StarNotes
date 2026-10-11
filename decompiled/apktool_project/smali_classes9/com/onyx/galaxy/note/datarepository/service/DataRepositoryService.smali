.class public interface abstract Lcom/onyx/galaxy/note/datarepository/service/DataRepositoryService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'J\u001e\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00032\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000cH\'J\u001e\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00040\u00032\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u000cH\'J\u001e\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00040\u00032\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u000cH\'\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/service/DataRepositoryService;",
        "",
        "batchUpdateResource",
        "Lretrofit2/Call;",
        "Lcom/onyx/android/sdk/data/account/bean/ListDataResponse;",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "args",
        "Lcom/onyx/galaxy/note/datarepository/bean/BatchUpdateArgs;",
        "loadShareResource",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;",
        "code",
        "",
        "loadStickerAttachment",
        "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;",
        "id",
        "loadTemplateAttachment",
        "note_overseasRelease"
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
.method public abstract batchUpdateResource(Lcom/onyx/galaxy/note/datarepository/bean/BatchUpdateArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/galaxy/note/datarepository/bean/BatchUpdateArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/datarepository/bean/BatchUpdateArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/ListDataResponse<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "resource/batchUpdate"
    .end annotation
.end method

.method public abstract loadShareResource(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "resource/shareCode"
    .end annotation
.end method

.method public abstract loadStickerAttachment(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/ListDataResponse<",
            "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "user/resSticker/{id}/attachment"
    .end annotation
.end method

.method public abstract loadTemplateAttachment(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/ListDataResponse<",
            "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "user/template/{id}/attachment"
    .end annotation
.end method
