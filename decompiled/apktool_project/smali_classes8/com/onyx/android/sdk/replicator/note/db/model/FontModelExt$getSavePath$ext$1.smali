.class final Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt$getSavePath$ext$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;)Ljava/lang/String;
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
.field final synthetic $this_getSavePath:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt$getSavePath$ext$1;->$this_getSavePath:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt$getSavePath$ext$1;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt$getSavePath$ext$1;->$this_getSavePath:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getExtension(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
