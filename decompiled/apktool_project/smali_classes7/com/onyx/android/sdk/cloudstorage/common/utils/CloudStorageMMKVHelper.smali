.class public final Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008J\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u000e\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008J\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\u0008J\u0016\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0013R\u0014\u0010\u0019\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0018R\u0014\u0010\u001f\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0018R\u0014\u0010!\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u0018R\u0014\u0010#\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u0018R\u0014\u0010%\u001a\u00020\u00088\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008$\u0010\u0018\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "init",
        "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;",
        "getProviderCertificates",
        "",
        "clientInfo",
        "saveGoogleDriveClientInfo",
        "getGoogleDriveClientInfo",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
        "response",
        "setOneNoteTokenResponse",
        "getOneNoteRefreshToken",
        "getOneNoteTokenResponse",
        "getOneNoteAccessToken",
        "providerName",
        "Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;",
        "getWebDAVAuthAccount",
        "account",
        "saveWebDAVAuthAccount",
        "a",
        "Ljava/lang/String;",
        "BAIDU_YUN_ACCESS_TOKEN_KEY",
        "b",
        "BAIDU_YUN_USER_INFO_KEY",
        "c",
        "ONE_DRIVE_TOKEN_INFO_KEY",
        "d",
        "DROPBOX_CREDENTIAL_KEY",
        "e",
        "ONE_NOTE_TOKEN_INFO_KEY",
        "f",
        "GOOGLE_DRIVE_CLIENT_KEY",
        "g",
        "WEB_DAV_ACCOUNT_PREFIX",
        "<init>",
        "()V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String; = "BAIDU_YUN_ACCESS_TOKEN_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "BAIDU_YUN_USER_INFO_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "ONE_DRIVE_TOKEN_INFO_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "DROPBOX_CREDENTIAL_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/lang/String; = "ONE_NOTE_TOKEN_INFO_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Ljava/lang/String; = "GOOGLE_DRIVE_CLIENT_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Ljava/lang/String; = "WebDAV_account_"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGoogleDriveClientInfo()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "GOOGLE_DRIVE_CLIENT_KEY"

    const-string v1, "{\n  \"web\": {\n    \"client_id\": \"771749065538-hqal3s9at4g7mtbqvf51qn1pg1qcb6bt.apps.googleusercontent.com\",\n    \"project_id\": \"starnote-1b166\",\n    \"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\",\n    \"token_uri\": \"https://oauth2.googleapis.com/token\",\n    \"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\",\n    \"client_secret\": \"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\",\n    \"redirect_uris\": [\n      \"https://starnote-1b166.firebaseapp.com/__/auth/handler\"\n    ],\n    \"javascript_origins\": [\n      \"http://localhost\",\n      \"http://localhost:5000\",\n      \"https://starnote-1b166.firebaseapp.com\"\n    ]\n  }\n}"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOneNoteAccessToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->getOneNoteTokenResponse()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOneNoteRefreshToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->getOneNoteTokenResponse()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOneNoteTokenResponse()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v1, "ONE_NOTE_TOKEN_INFO_KEY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    return-object p0
.end method

.method public final getProviderCertificates()Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVCertificate;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVCertificate;

    const-string v0, "provider_certificates_key"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/MMKVCertificate;->getProviderCertificates(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;

    move-result-object p0

    return-object p0
.end method

.method public final getWebDAVAuthAccount(Ljava/lang/String;)Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "providerName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebDAV_account_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;

    return-object p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->init(Landroid/content/Context;)V

    return-void
.end method

.method public final saveGoogleDriveClientInfo(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "clientInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "GOOGLE_DRIVE_CLIENT_KEY"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final saveWebDAVAuthAccount(Ljava/lang/String;Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "providerName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "account"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebDAV_account_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setOneNoteTokenResponse(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, ""

    const-string v0, "ONE_NOTE_TOKEN_INFO_KEY"

    if-nez p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    invoke-virtual {v1, v0, p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
