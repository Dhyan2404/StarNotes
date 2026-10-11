.class public final Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->onKeyboardOpen(I)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;II)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$b;->e:Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$b;->f:I

    iput p3, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$b;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$b;->e:Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;

    iget v0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$b;->f:I

    iget p0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$b;->g:I

    invoke-static {p1, v0, p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->access$resetToolPositionAndCalScrollOffset(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$b;->a(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
