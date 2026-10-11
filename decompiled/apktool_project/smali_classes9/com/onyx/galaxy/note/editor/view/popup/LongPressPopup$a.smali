.class public final Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->l()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$a;->e:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$a;->e:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->access$generateAddTagContext(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$a;->a(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    move-result-object p0

    return-object p0
.end method
