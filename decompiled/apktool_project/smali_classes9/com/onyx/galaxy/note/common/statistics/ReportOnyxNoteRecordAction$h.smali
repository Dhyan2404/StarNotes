.class public final Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$h;->e:Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$h;->e:Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->access$getUnUploadNoteIds$p(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$h;->a(Lkotlin/Unit;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
