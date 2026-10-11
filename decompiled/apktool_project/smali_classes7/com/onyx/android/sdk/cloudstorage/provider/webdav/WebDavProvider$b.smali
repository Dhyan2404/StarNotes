.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->saveAccountInfo(Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider$b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider$b;->f:Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider$b;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider$b;->f:Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->saveWebDAVAuthAccount(Ljava/lang/String;Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider$b;->a(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    return-void
.end method
