.class public final synthetic Lcom/sunia/HTREnginev2/pwl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/widget/RadioGroup;)Lio/reactivex/rxjava3/functions/Consumer;
    .locals 1
    .param p0    # Landroid/widget/RadioGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RadioGroup;",
            ")",
            "Lio/reactivex/rxjava3/functions/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$checked"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/pwl$a;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/pwl$a;-><init>(Landroid/widget/RadioGroup;)V

    return-object v0
.end method
