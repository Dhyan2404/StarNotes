.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createLightNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onyx/android/sdk/note/NoteBundle;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/note/NoteBundle;",
            "+TT;>;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt$c;->e:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt$c;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt$c;->e:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt$c;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt$c;->a(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
