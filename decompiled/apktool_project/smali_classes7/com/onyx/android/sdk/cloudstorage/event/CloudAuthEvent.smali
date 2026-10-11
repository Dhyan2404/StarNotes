.class public final Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;
.super Lcom/onyx/android/sdk/cloudstorage/event/BaseCloudStorageEvent;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R$\u0010\u000f\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;",
        "Lcom/onyx/android/sdk/cloudstorage/event/BaseCloudStorageEvent;",
        "",
        "b",
        "Ljava/lang/String;",
        "getTag",
        "()Ljava/lang/String;",
        "tag",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "c",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "getAuthResult",
        "()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "setAuthResult",
        "(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V",
        "authResult",
        "<init>",
        "(Ljava/lang/String;)V",
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
.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/event/BaseCloudStorageEvent;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAuthResult()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;->c:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setAuthResult(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/event/CloudAuthEvent;->c:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    return-void
.end method
