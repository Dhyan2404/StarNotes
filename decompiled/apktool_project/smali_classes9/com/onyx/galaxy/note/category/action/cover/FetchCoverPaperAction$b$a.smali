.class public final Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b;->a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
        "Ljava/lang/Object;",
        "T5:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function5;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b$a;->a:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;Lkotlin/Unit;Lkotlin/Unit;Lkotlin/Unit;Lkotlin/Unit;)Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 2>"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 3>"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 4>"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b$a;->a:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/Unit;

    check-cast p4, Lkotlin/Unit;

    check-cast p5, Lkotlin/Unit;

    invoke-virtual/range {p0 .. p5}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$b$a;->a(Lkotlin/Unit;Lkotlin/Unit;Lkotlin/Unit;Lkotlin/Unit;Lkotlin/Unit;)Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    move-result-object p0

    return-object p0
.end method
