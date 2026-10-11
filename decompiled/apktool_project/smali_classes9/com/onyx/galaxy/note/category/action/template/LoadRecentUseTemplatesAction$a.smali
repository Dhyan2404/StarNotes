.class public final Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction$a;->e:Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction$a;->e:Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;->access$load(Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction$a;->a(Lcom/onyx/galaxy/note/category/action/template/LoadRecentUseTemplatesAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
