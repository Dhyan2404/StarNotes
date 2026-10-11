.class public final Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->W1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$n;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)V
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$n;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$initData(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$n;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$initListener(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$n;->a(Lkotlin/Unit;)V

    return-void
.end method
