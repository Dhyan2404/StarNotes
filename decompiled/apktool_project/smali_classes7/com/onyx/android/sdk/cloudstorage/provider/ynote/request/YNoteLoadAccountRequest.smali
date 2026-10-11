.class public final Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteLoadAccountRequest;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteLoadAccountRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "providerAccountModel",
        "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;",
        "loadFromCloud",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;",
        "driverClient",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "driverClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->YNOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;-><init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteLoadAccountRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    return-void
.end method


# virtual methods
.method public loadFromCloud(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteLoadAccountRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    const-string p1, "https://note.youdao.com/"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;->getYNoteService(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;->user()Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteUser;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteLoadAccountRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ynote,account:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteUser;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteUser;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteUser;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
