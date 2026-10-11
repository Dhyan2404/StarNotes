.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->s(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$c;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
            ")",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$c;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->access$getWebDavProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$c;->a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0

    return-object p0
.end method
