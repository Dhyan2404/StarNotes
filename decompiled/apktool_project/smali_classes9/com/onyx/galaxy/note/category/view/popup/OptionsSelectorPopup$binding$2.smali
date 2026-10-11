.class final Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/onyx/android/sdk/ui/LayoutParamRes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;",
        "T",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup$binding$2;->this$0:Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup$binding$2;->this$0:Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->access$getUiContext$p(Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup$binding$2;->invoke()Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;

    move-result-object p0

    return-object p0
.end method
