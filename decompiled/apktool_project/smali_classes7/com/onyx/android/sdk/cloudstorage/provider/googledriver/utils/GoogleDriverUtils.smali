.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoogleDriverUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleDriverUtils.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1549#2:84\n1620#2,3:85\n*S KotlinDebug\n*F\n+ 1 GoogleDriverUtils.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils\n*L\n72#1:84\n72#1:85,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004J\u0016\u0010\n\u001a\u00060\u000bj\u0002`\u000c2\n\u0010\r\u001a\u00060\u000bj\u0002`\u000cJ\u0014\u0010\u000e\u001a\u00060\u000bj\u0002`\u000c2\u0006\u0010\r\u001a\u00020\u000fH\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils;",
        "",
        "()V",
        "STORAGE_QUOTA_EXCEEDED",
        "",
        "getGoogleDriveAuthService",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveAuthService;",
        "logoutAccount",
        "",
        "accountId",
        "mapToStandardError",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "exception",
        "parse403ForbiddenError",
        "Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;",
        "toAccountInfo",
        "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;",
        "account",
        "Lcom/google/api/services/drive/model/User;",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGoogleDriverUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleDriverUtils.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1549#2:84\n1620#2,3:85\n*S KotlinDebug\n*F\n+ 1 GoogleDriverUtils.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils\n*L\n72#1:84\n72#1:85,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STORAGE_QUOTA_EXCEEDED:Ljava/lang/String; = "storageQuotaExceeded"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final parse403ForbiddenError(Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;)Ljava/lang/Exception;
    .locals 3

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getErrors()Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x2

    if-eqz v0, :cond_2

    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponseException;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_2
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;

    invoke-virtual {v2}, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponseException;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_4
    const-string p0, "storageQuotaExceeded"

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 v1, 0x3ea

    :cond_5
    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponseException;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;-><init>(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final getGoogleDriveAuthService()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveAuthService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/CloudStorageServiceFactory;

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveAuthService;

    const-string v1, "https://oauth2.googleapis.com/"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageServiceFactory;->getSpecifyService(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveAuthService;

    return-object p0
.end method

.method public final logoutAccount(Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "accountId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->GOOGLE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->deleteAccount(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final mapToStandardError(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    instance-of v0, p1, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/GoogleDriverUtils;->parse403ForbiddenError(Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;)Ljava/lang/Exception;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponseException;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final toAccountInfo(Lcom/google/api/services/drive/model/User;)Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 8
    .param p1    # Lcom/google/api/services/drive/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "account"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/User;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    new-instance v7, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, p0}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setAccountName(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setNickName(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/User;->getKind()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->setId(Ljava/lang/String;)V

    return-object v7
.end method
