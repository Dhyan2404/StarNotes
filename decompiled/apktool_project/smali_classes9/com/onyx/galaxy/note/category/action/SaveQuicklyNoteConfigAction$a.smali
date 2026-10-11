.class public final Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction$a;->e:Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction$a;->e:Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->access$savedQuickNoteConfig(Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction$a;->a(Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
