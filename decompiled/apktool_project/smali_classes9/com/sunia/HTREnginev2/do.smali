.class public final synthetic Lcom/sunia/HTREnginev2/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter4/BaseDifferAdapter;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter4/BaseDifferAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/do;->a:Lcom/chad/library/adapter4/BaseDifferAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/do;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/do;->a:Lcom/chad/library/adapter4/BaseDifferAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/do;->b:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->b(Lcom/chad/library/adapter4/BaseDifferAdapter;Ljava/util/List;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
