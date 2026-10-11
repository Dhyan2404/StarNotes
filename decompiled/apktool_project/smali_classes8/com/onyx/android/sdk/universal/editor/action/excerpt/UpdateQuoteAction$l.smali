.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->p(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/shape/Shape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$l;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$l;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)Lkotlin/Pair;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$l;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateExcerptResultArgs;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lonyx/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v0, Lkotlin/Pair;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$l;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$l;->a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
