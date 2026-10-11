.class public final Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;
.super Lcom/onyx/android/sdk/ui/BasePopWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u00126\u0010\u001d\u001a2\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u00040\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0002R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0014RD\u0010\u001d\u001a2\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u00040\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0017\u0010#\u001a\u00020\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;",
        "Lcom/onyx/android/sdk/ui/BasePopWindow;",
        "Landroid/view/View;",
        "view",
        "",
        "setContentView",
        "u",
        "l",
        "Landroid/widget/TextView;",
        "textView",
        "v",
        "m",
        "Landroid/content/Context;",
        "k",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "currSortBy",
        "Lcom/onyx/android/sdk/base/data/SortOrder;",
        "Lcom/onyx/android/sdk/base/data/SortOrder;",
        "currSortOrder",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "sortBy",
        "sortOrder",
        "n",
        "Lkotlin/jvm/functions/Function2;",
        "onSort",
        "Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;",
        "o",
        "Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;",
        "binding",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;Lkotlin/jvm/functions/Function2;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final k:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/android/sdk/base/data/SortBy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lcom/onyx/android/sdk/base/data/SortOrder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/onyx/android/sdk/base/data/SortBy;",
            "Lcom/onyx/android/sdk/base/data/SortOrder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/SortBy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/SortOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/base/data/SortBy;",
            "Lcom/onyx/android/sdk/base/data/SortOrder;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onyx/android/sdk/base/data/SortBy;",
            "-",
            "Lcom/onyx/android/sdk/base/data/SortOrder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currSortBy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currSortOrder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSort"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/BasePopWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->l:Lcom/onyx/android/sdk/base/data/SortBy;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->m:Lcom/onyx/android/sdk/base/data/SortOrder;

    iput-object p4, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->n:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->u()V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->q(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->t(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->r(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->n(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->p(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->s(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->n:Lkotlin/jvm/functions/Function2;

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortBy;->UpdateAt:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortOrder;->Asc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->n:Lkotlin/jvm/functions/Function2;

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortBy;->UpdateAt:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->n:Lkotlin/jvm/functions/Function2;

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortBy;->CreationTime:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortOrder;->Asc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->n:Lkotlin/jvm/functions/Function2;

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortBy;->CreationTime:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->n:Lkotlin/jvm/functions/Function2;

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortOrder;->Asc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->n:Lkotlin/jvm/functions/Function2;

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->n:Lkotlin/jvm/functions/Function2;

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortBy;->Manual:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortOrder;->Asc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    return-object p0
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->l:Lcom/onyx/android/sdk/base/data/SortBy;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->m:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->UpdateAt:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v2, Lcom/onyx/android/sdk/base/data/SortOrder;->Asc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnUpdateAsc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "btnUpdateAsc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->v(Landroid/widget/TextView;)V

    goto/16 :goto_0

    :cond_0
    sget-object v3, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnUpdateDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "btnUpdateDesc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->v(Landroid/widget/TextView;)V

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->CreationTime:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnCreateAsc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "btnCreateAsc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->v(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_2
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnCreateDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "btnCreateDesc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->v(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnNameAsc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "btnNameAsc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->v(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_4
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnNameDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "btnNameDesc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->v(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->Manual:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnCustom:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "btnCustom"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->v(Landroid/widget/TextView;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnUpdateAsc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "btnUpdateAsc"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/dyj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/dyj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnUpdateDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "btnUpdateDesc"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/eyj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/eyj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnCreateAsc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "btnCreateAsc"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/fyj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/fyj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnCreateDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "btnCreateDesc"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/gyj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/gyj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnNameAsc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "btnNameAsc"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/hyj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/hyj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnNameDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "btnNameDesc"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/iyj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/iyj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->o:Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteListSortBinding;->btnCustom:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "btnCustom"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/jyj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/jyj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->popup_shadow_bg:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p1, Lcom/onyx/galaxy/note/R$style;->popupWindowAnimation:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public final u()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->m()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListSortPopup;->l()V

    return-void
.end method

.method public final v(Landroid/widget/TextView;)V
    .locals 4

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_sort_check:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
