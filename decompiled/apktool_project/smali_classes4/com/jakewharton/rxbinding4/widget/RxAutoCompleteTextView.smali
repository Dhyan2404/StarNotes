.class public final Lcom/jakewharton/rxbinding4/widget/RxAutoCompleteTextView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "com/sunia/HTREnginev2/svl"
    }
    d2 = {}
    k = 0x4
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final itemClickEvents(Landroid/widget/AutoCompleteTextView;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p0    # Landroid/widget/AutoCompleteTextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AutoCompleteTextView;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/jakewharton/rxbinding4/widget/AdapterViewItemClickEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/sunia/HTREnginev2/svl;->a(Landroid/widget/AutoCompleteTextView;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
