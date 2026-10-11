.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse$Companion;",
        "",
        "()V",
        "isValid",
        "",
        "response",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isValid(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, p0

    goto :goto_3

    :cond_4
    :goto_2
    move p1, v1

    :goto_3
    if-nez p1, :cond_5

    move p0, v1

    :cond_5
    return p0
.end method
