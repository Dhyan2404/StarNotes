.class public final Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->onTextEditStartEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TextEditStartEvent;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/TextEditStartEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/universal/editor/events/note/TextEditStartEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$i;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$i;->f:Lcom/onyx/android/sdk/universal/editor/events/note/TextEditStartEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$i;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$i;->f:Lcom/onyx/android/sdk/universal/editor/events/note/TextEditStartEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditStartEvent;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->access$onStartEditResult(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$i;->a(Lcom/onyx/android/sdk/textbox/action/TextBoxStartEditAction;)V

    return-void
.end method
