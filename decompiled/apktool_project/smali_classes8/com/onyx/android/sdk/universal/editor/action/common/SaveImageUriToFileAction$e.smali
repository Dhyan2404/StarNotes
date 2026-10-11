.class public final Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction;->n(Landroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Landroid/net/Uri;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction$e;->e:Landroid/net/Uri;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction$e;->f:Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/request/common/SaveUriToFileRequest;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/common/SaveUriToFileRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction$e;->e:Landroid/net/Uri;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction$e;->f:Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction;->getDir()Ljava/lang/String;

    move-result-object p0

    const-string v2, "<get-dir>(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/request/common/SaveUriToFileRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/request/common/SaveUriToFileRequest;->setFileName(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/common/SaveImageUriToFileAction$e;->a(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/request/common/SaveUriToFileRequest;

    move-result-object p0

    return-object p0
.end method
