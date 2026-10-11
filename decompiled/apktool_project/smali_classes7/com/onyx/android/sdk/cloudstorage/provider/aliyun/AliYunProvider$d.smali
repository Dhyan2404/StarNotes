.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->a(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V
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
.field public final synthetic e:Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$d;->e:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$d;->f:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

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

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$d;->e:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$d;->f:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-static {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->access$onAuthSuccess(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$d;->e:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onComplete()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$d;->a(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    return-void
.end method
