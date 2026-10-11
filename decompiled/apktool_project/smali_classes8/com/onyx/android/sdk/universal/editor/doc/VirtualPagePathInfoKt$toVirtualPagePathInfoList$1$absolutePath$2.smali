.class final Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt$toVirtualPagePathInfoList$1$absolutePath$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt;->toVirtualPagePathInfoList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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
.field final synthetic $pagePathInfo:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt$toVirtualPagePathInfoList$1$absolutePath$2;->$pagePathInfo:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt$toVirtualPagePathInfoList$1$absolutePath$2;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/data/common/path/ContentPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ContentPaths;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt$toVirtualPagePathInfoList$1$absolutePath$2;->$pagePathInfo:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt$toVirtualPagePathInfoList$1$absolutePath$2;->$pagePathInfo:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;->getRelativePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/common/path/ContentPaths;->contentAbsolutePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
