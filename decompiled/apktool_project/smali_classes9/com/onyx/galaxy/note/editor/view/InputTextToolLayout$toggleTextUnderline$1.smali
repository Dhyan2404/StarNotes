.class final Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextUnderline$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->E(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextUnderline$1;->this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextUnderline$1;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextUnderline$1;->this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/TextUnderlineEvent;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TextUnderlineEvent;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$postEvent(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Ljava/lang/Object;)V

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextUnderline$1;->this$0:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$getTextInputConfig(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextUnderline$1$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$toggleTextUnderline$1$1;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
