.class final Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocOutlineSearchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOutlineSearchUtils.kt\ncom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,178:1\n256#2,2:179\n*S KotlinDebug\n*F\n+ 1 DocOutlineSearchUtils.kt\ncom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$1\n*L\n54#1:179,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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
        "SMAP\nDocOutlineSearchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocOutlineSearchUtils.kt\ncom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,178:1\n256#2,2:179\n*S KotlinDebug\n*F\n+ 1 DocOutlineSearchUtils.kt\ncom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$1\n*L\n54#1:179,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $textChangedCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_initLayout:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$1;->$this_initLayout:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iput-object p2, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$1;->$textChangedCallback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$1;->$this_initLayout:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->inputEditTextView:Lcom/onyx/android/sdk/theme/widgets/TouchModeTintTextInputEditTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$1;->$textChangedCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$1;->$this_initLayout:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchStatusLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v1, "searchStatusLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$1;->$this_initLayout:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->inputEditTextView:Lcom/onyx/android/sdk/theme/widgets/TouchModeTintTextInputEditTextView;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    .line 8
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils$initLayout$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
