.class public final Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->h(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$c;->e:Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$c;->f:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$c;->e:Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$c;->f:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->access$updateTextBoxViewPosition(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$c;->a(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

    return-void
.end method
