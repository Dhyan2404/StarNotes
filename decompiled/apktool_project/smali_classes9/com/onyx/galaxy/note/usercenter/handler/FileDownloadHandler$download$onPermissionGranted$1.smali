.class final Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionGranted$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->download(Landroid/content/Context;Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic $args:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

.field final synthetic this$0:Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionGranted$1;->$args:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    iput-object p2, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionGranted$1;->this$0:Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionGranted$1;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 8

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/data/common/data/StorageLocation;->PUBLIC_FILE:Lcom/onyx/android/sdk/data/common/data/StorageLocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionGranted$1;->$args:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;->getSaveDir()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionGranted$1;->$args:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionGranted$1;->$args:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;->getExt()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 5
    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getFile$default(Lcom/onyx/android/sdk/data/common/path/PathManager;Lcom/onyx/android/sdk/data/common/data/StorageLocation;Lcom/onyx/android/sdk/data/common/data/DataScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->appendSuffixIfExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionGranted$1;->this$0:Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionGranted$1;->$args:Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->access$download(Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Ljava/lang/String;)V

    return-void
.end method
