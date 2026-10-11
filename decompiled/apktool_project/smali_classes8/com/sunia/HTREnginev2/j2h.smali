.class public final synthetic Lcom/sunia/HTREnginev2/j2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j2h;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j2h;->a:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/GetContentViewSizeAction;->m(Landroid/view/View;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
