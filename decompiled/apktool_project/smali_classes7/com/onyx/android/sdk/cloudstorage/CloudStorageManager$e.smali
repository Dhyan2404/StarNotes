.class public final Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->b(Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$e;->e:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$e;->e:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->access$setCloudStorageProviders$p(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$e;->a(Ljava/util/List;)V

    return-void
.end method
