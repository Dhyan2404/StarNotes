.class public interface abstract Lcom/onyx/android/sdk/data/sync/OnyxSyncService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\'J \u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00040\u00032\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u0007H\'J\u001e\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00040\u00032\u0008\u0008\u0001\u0010\u000c\u001a\u00020\rH\'J,\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u00040\u00032\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u00072\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\'\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/sync/OnyxSyncService;",
        "",
        "checkSyncUser",
        "Lretrofit2/Call;",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "",
        "userName",
        "",
        "getSyncGateway",
        "Lcom/onyx/android/sdk/data/sync/bean/SyncGatewayResponse;",
        "token",
        "submitNoteUsageInfo",
        "info",
        "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;",
        "updateSyncChannels",
        "Lcom/onyx/android/sdk/data/sync/bean/ChannelResponseBean;",
        "body",
        "Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;",
        "sdk-data_release"
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
.method public abstract checkSyncUser(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "mac"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/checkSyncUser"
    .end annotation
.end method

.method public abstract getSyncGateway(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/sync/bean/SyncGatewayResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/syncToken"
    .end annotation
.end method

.method public abstract submitNoteUsageInfo(Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "note/submit"
    .end annotation
.end method

.method public abstract updateSyncChannels(Ljava/lang/String;Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/sync/bean/ChannelResponseBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/updateSyncChannels"
    .end annotation
.end method
