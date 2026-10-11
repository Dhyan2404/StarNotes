.class final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2;->b(Ljava/util/Optional;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "davResource",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2$1;->invoke(Lcom/thegrizzlylabs/sardineandroid/DavResource;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/thegrizzlylabs/sardineandroid/DavResource;)V
    .locals 3
    .param p1    # Lcom/thegrizzlylabs/sardineandroid/DavResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "davResource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;->access$getWebDavProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;)Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;

    invoke-static {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;->access$getFileBean$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v2

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction$create$2$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;->access$getWebDavProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/EnsureCreateFolderPathAction;)Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->resetFilePath(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method
