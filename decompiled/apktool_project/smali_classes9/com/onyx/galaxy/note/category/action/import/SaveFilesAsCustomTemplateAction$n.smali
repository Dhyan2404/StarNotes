.class public final Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->w(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;

.field public final synthetic f:Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$n;->e:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$n;->f:Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$n;->e:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$n;->f:Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->closeReaderDocument(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$n;->a(Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
