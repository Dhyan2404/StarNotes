.class public final Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunLoadTokenAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunLoadTokenAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunLoadTokenAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunLoadTokenAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunLoadTokenAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunLoadTokenAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunLoadTokenAction$a;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunLoadTokenAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunLoadTokenAction;->access$load(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunLoadTokenAction;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunLoadTokenAction$a;->a(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;

    move-result-object p0

    return-object p0
.end method
