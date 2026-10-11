.class public final Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/cloudstorage/model/common/TreeEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/TreeEntry<",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0001B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018B\u0011\u0008\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0008R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R(\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00000\t8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00118WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00118WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/TreeEntry;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "entry",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "getEntry",
        "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "setEntry",
        "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
        "",
        "a",
        "Ljava/util/List;",
        "getChildren",
        "()Ljava/util/List;",
        "setChildren",
        "(Ljava/util/List;)V",
        "children",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "title",
        "getUniqueId",
        "uniqueId",
        "<init>",
        "()V",
        "cloudFile",
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
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public entry:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cloudFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;->a:Ljava/util/List;

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;->setEntry(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;->a:Ljava/util/List;

    return-object p0
.end method

.method public final getEntry()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;->entry:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "entry"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;->getEntry()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;->getEntry()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;->a:Ljava/util/List;

    return-void
.end method

.method public final setEntry(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;->entry:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method
