.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->j(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$e;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$e;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->access$getVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$e;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->access$ensureVirtualBoxInfo(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$e;->a(Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    return-object p0
.end method
