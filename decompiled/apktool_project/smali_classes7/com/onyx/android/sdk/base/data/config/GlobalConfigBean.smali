.class public final Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0006\"\u0004\u0008\u0012\u0010\u0008R\u001a\u0010\u0013\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\"\u0004\u0008\u0015\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;",
        "Ljava/io/Serializable;",
        "()V",
        "filterByDocTypes",
        "",
        "getFilterByDocTypes",
        "()Z",
        "setFilterByDocTypes",
        "(Z)V",
        "internalRecognizerLangList",
        "",
        "",
        "getInternalRecognizerLangList",
        "()Ljava/util/List;",
        "setInternalRecognizerLangList",
        "(Ljava/util/List;)V",
        "shareResourceEnable",
        "getShareResourceEnable",
        "setShareResourceEnable",
        "storageManagerEnable",
        "getStorageManagerEnable",
        "setStorageManagerEnable",
        "sdk-base_release"
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
.field private filterByDocTypes:Z

.field private internalRecognizerLangList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shareResourceEnable:Z

.field private storageManagerEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->internalRecognizerLangList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getFilterByDocTypes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->filterByDocTypes:Z

    return p0
.end method

.method public final getInternalRecognizerLangList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->internalRecognizerLangList:Ljava/util/List;

    return-object p0
.end method

.method public final getShareResourceEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->shareResourceEnable:Z

    return p0
.end method

.method public final getStorageManagerEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->storageManagerEnable:Z

    return p0
.end method

.method public final setFilterByDocTypes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->filterByDocTypes:Z

    return-void
.end method

.method public final setInternalRecognizerLangList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->internalRecognizerLangList:Ljava/util/List;

    return-void
.end method

.method public final setShareResourceEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->shareResourceEnable:Z

    return-void
.end method

.method public final setStorageManagerEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->storageManagerEnable:Z

    return-void
.end method
