.class public final synthetic Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->downloadCloudFile(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Ljava/util/List;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$c;->e:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$c;->e:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;->create(Ljava/util/List;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$c;->a(Ljava/util/List;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    move-result-object p0

    return-object p0
.end method
