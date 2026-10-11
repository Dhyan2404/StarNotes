.class public final Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;->L(Ljava/lang/String;)V
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup$a;->e:Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup$a;->e:Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup;)Lcom/onyx/galaxy/note/databinding/PopupInkBeautifyBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupInkBeautifyBinding;->fontPreviewText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/InkBeautifyPopup$a;->a(Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;)V

    return-void
.end method
