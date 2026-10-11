.class public final Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->j1()V
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
.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;


# direct methods
.method public constructor <init>(JJLcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$i;->e:J

    iput-wide p3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$i;->f:J

    iput-object p5, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$i;->g:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$i;->e:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$i;->f:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$i;->g:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getTemplateViewModel$p(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->loadData()V

    :cond_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$i;->a(J)V

    return-void
.end method
