.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;",
        "Ljava/io/Serializable;",
        "()V",
        "item",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;",
        "getItem",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;",
        "setItem",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;)V",
        "Item",
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


# instance fields
.field private item:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;->item:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;

    return-void
.end method


# virtual methods
.method public final getItem()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;->item:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;

    return-object p0
.end method

.method public final setItem(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;->item:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;

    return-void
.end method
