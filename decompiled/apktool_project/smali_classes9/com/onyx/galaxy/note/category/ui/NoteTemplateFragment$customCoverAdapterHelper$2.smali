.class final Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customCoverAdapterHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/chad/library/adapter4/QuickAdapterHelper;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/chad/library/adapter4/QuickAdapterHelper;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customCoverAdapterHelper$2;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/chad/library/adapter4/QuickAdapterHelper;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customCoverAdapterHelper$2;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getCustomCoverAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;-><init>(Lcom/chad/library/adapter4/BaseQuickAdapter;)V

    invoke-virtual {v0}, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->build()Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customCoverAdapterHelper$2;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getCustomCoverHeaderAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->addBeforeAdapter(ILcom/chad/library/adapter4/BaseQuickAdapter;)Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customCoverAdapterHelper$2;->invoke()Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object p0

    return-object p0
.end method
