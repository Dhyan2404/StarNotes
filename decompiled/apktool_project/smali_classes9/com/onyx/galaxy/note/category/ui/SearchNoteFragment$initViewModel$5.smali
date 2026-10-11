.class final Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->d1()V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Boolean;)V"
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$5;->this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$5;->invoke$lambda$0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$updateLayoutParams(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$5;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$5;->this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$5;->this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/x;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/x;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
