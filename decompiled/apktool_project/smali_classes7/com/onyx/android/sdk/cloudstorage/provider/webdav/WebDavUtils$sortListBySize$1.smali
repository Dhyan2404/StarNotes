.class final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils$sortListBySize$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->sortListBySize(Ljava/util/List;Lcom/onyx/android/sdk/base/data/SortOrder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "lhs",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        "rhs",
        "invoke",
        "(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/DavResource;)Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $sortOrder:Lcom/onyx/android/sdk/base/data/SortOrder;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/data/SortOrder;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils$sortListBySize$1;->$sortOrder:Lcom/onyx/android/sdk/base/data/SortOrder;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/DavResource;)Ljava/lang/Integer;
    .locals 7
    .param p1    # Lcom/thegrizzlylabs/sardineandroid/DavResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/thegrizzlylabs/sardineandroid/DavResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ComparatorUtils;

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->isDirectory()Z

    move-result v0

    invoke-virtual {p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->isDirectory()Z

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {v1, v0, v2, v3}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->booleanComparator(ZZLcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->getSize(Lcom/thegrizzlylabs/sardineandroid/DavResource;)J

    move-result-wide v2

    .line 4
    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->getSize(Lcom/thegrizzlylabs/sardineandroid/DavResource;)J

    move-result-wide v4

    .line 5
    iget-object v6, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils$sortListBySize$1;->$sortOrder:Lcom/onyx/android/sdk/base/data/SortOrder;

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->longComparator(JJLcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    check-cast p2, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils$sortListBySize$1;->invoke(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/DavResource;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
