.class public final synthetic Lcom/sunia/HTREnginev2/a2l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a2l;->a:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a2l;->a:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->a(Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
