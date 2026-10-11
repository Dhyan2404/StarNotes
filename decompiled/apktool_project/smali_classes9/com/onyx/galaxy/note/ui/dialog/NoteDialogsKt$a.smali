.class public final Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt;->activateHwrEngine(Landroid/content/Context;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;Lkotlin/jvm/functions/Function0;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

.field public final synthetic f:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt$a;->e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt$a;->f:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt$a;->e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt$a;->f:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt$a;->a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
