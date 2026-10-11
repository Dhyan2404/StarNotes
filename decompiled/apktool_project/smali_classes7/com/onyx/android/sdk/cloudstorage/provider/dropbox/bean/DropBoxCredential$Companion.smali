.class public final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;",
        "",
        "()V",
        "isValid",
        "",
        "credential",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;",
        "toDropBoxCredential",
        "Lcom/dropbox/core/oauth/DbxCredential;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isValid(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toDropBoxCredential(Lcom/dropbox/core/oauth/DbxCredential;)Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;
    .locals 2
    .param p1    # Lcom/dropbox/core/oauth/DbxCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "credential"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    invoke-virtual {p1}, Lcom/dropbox/core/oauth/DbxCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAccessToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dropbox/core/oauth/DbxCredential;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->setRefreshToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dropbox/core/oauth/DbxCredential;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->setAppKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dropbox/core/oauth/DbxCredential;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->setAppSecret(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dropbox/core/oauth/DbxCredential;->getExpiresAt()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->setExpiresAt(Ljava/lang/Long;)V

    return-object p0
.end method
