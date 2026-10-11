.class public final Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->onTextEditFinishEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$g;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$g;->f:Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$g;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$g;->f:Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->access$saveShapeRect(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$g;->a(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
