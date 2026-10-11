.class public final synthetic Lcom/sunia/HTREnginev2/u9f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocTocViewModel;->d(Lcom/onyx/android/sdk/base/data/Tree;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
