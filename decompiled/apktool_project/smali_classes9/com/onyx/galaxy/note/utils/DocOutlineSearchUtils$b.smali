.class public final Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->initLayout(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;ZZLkotlin/jvm/functions/Function1;)V
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
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocOutlineSearchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOutlineSearchUtils.kt\ncom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$5\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,178:1\n256#2,2:179\n256#2,2:181\n*S KotlinDebug\n*F\n+ 1 DocOutlineSearchUtils.kt\ncom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$5\n*L\n77#1:179,2\n80#1:181,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDocOutlineSearchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOutlineSearchUtils.kt\ncom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$5\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,178:1\n256#2,2:179\n256#2,2:181\n*S KotlinDebug\n*F\n+ 1 DocOutlineSearchUtils.kt\ncom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$5\n*L\n77#1:179,2\n80#1:181,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;ZLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$b;->e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$b;->f:Z

    iput-object p3, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$b;->g:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$b;->e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$b;->f:Z

    invoke-static {v0, v1, v2}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->access$updateAiSearchButtonVisibility(Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Z)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object v1, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$b;->e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->ivClear:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "ivClear"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$b;->g:Lkotlin/jvm/functions/Function1;

    const-string v1, ""

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$b;->e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchStatusLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v4, "searchStatusLayout"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$b;->e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchResult:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$b;->e:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    invoke-virtual {v0, p0, v2}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->updateFilterStatus(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$b;->a(Ljava/lang/String;)V

    return-void
.end method
