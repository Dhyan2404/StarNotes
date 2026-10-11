.class public final Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction$a;->e:Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction$a;->e:Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->access$checkState(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction$a;->a(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)Z

    move-result p0

    return p0
.end method
