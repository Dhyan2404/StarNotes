.class final Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->Z()V
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$4;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$4;->invoke$lambda$0(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Ljava/lang/Boolean;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const-string v0, "drawerLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/extension/DrawerLayoutKt;->openOrClose$default(Landroidx/drawerlayout/widget/DrawerLayout;ZZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$4;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$4;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->drawerMenu:Landroidx/fragment/app/FragmentContainerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$4;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/k;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/ui/k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
