.class public final synthetic Lcom/sunia/HTREnginev2/yvl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/base/rx/RxFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/base/rx/RxFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yvl;->a:Lcom/onyx/android/sdk/base/rx/RxFilter;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yvl;->a:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->a(Lcom/onyx/android/sdk/base/rx/RxFilter;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
