.class public interface abstract Lcom/onyx/galaxy/note/message/cloud/MessageService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u0006H\'J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0003H\'J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0003H\'J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0003H\'\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/cloud/MessageService;",
        "",
        "getActivityNotifications",
        "Lretrofit2/Call;",
        "Lcom/onyx/galaxy/note/message/data/GetActivityNotificationsResponse;",
        "channel",
        "",
        "version",
        "",
        "locale",
        "getMessageTemplates",
        "Lcom/onyx/galaxy/note/message/data/GetMessageTemplatesResponse;",
        "getUnreadMessageCount",
        "Lcom/onyx/galaxy/note/message/data/GetUnreadMessageCountResponse;",
        "setAllMessageRead",
        "Lcom/onyx/galaxy/note/message/data/SetAllMessageReadResponse;",
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
.method public abstract getActivityNotifications(Ljava/lang/String;JLjava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "channel"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "version"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "locale"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/galaxy/note/message/data/GetActivityNotificationsResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "app/messages/notifyMsg"
    .end annotation
.end method

.method public abstract getMessageTemplates()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/galaxy/note/message/data/GetMessageTemplatesResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "app/msgTemplate"
    .end annotation
.end method

.method public abstract getUnreadMessageCount()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/galaxy/note/message/data/GetUnreadMessageCountResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "app/messages/innerMsg/unreadCount"
    .end annotation
.end method

.method public abstract setAllMessageRead()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/galaxy/note/message/data/SetAllMessageReadResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "app/messages/innerMsg/readAll"
    .end annotation
.end method
