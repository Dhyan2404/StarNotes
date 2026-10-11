.class public final Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;->U(Ljava/util/List;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup$e;->e:Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup$e;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup$e;->e:Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup$e;->f:I

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;->access$insertTemplatePage(Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;ILcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup$e;->a(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    return-void
.end method
