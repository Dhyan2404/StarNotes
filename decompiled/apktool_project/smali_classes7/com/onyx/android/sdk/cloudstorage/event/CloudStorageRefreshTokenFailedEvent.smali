.class public final Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;
.super Lcom/onyx/android/sdk/cloudstorage/event/BaseCloudStorageEvent;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;",
        "Lcom/onyx/android/sdk/cloudstorage/event/BaseCloudStorageEvent;",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "b",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "getProvider",
        "()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "provider",
        "<init>",
        "(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V",
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
.field public final b:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/event/BaseCloudStorageEvent;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;->b:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-void
.end method


# virtual methods
.method public final getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;->b:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-object p0
.end method
