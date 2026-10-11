.class final Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->j2()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteTemplateFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$6\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,2176:1\n256#2,2:2177\n*S KotlinDebug\n*F\n+ 1 NoteTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$6\n*L\n1453#1:2177,2\n*E\n"
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteTemplateFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$6\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,2176:1\n256#2,2:2177\n*S KotlinDebug\n*F\n+ 1 NoteTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$6\n*L\n1453#1:2177,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$6;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$6;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$6;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvGotoMaterialCenter:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    const-string v1, "tvGotoMaterialCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$6;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getTemplateViewModel$p(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSourceType()Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->MATERIALS:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 4
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
