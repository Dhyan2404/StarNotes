.class final Lcom/onyx/android/sdk/ui/CommonDialog$Builder$initDialogListener$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->i(Lcom/onyx/android/sdk/ui/CommonDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "lengthDisplay",
        "",
        "maxLengthDisplay",
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
.field final synthetic $dialog:Lcom/onyx/android/sdk/ui/CommonDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder$initDialogListener$3;->$dialog:Lcom/onyx/android/sdk/ui/CommonDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder$initDialogListener$3;->invoke(II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(II)V
    .locals 3

    .line 2
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/ui/R$string;->exit_length_display:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    .line 6
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    .line 7
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_error_color_01:I

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p1

    goto :goto_0

    .line 8
    :cond_0
    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_02:I

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p1

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder$initDialogListener$3;->$dialog:Lcom/onyx/android/sdk/ui/CommonDialog;

    invoke-static {p2}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p2

    const/4 v1, 0x0

    const-string v2, "binging"

    if-nez p2, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_1
    iget-object p2, p2, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvEditLengthDisplay:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    .line 10
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder$initDialogListener$3;->$dialog:Lcom/onyx/android/sdk/ui/CommonDialog;

    invoke-static {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    iget-object p0, v1, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvEditLengthDisplay:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
