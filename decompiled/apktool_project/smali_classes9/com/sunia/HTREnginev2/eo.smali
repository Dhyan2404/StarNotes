.class public final synthetic Lcom/sunia/HTREnginev2/eo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/reactivex/rxjava3/core/ObservableEmitter;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/core/ObservableEmitter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/eo;->e:Lio/reactivex/rxjava3/core/ObservableEmitter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/eo;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/eo;->e:Lio/reactivex/rxjava3/core/ObservableEmitter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/eo;->f:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->a(Lio/reactivex/rxjava3/core/ObservableEmitter;Ljava/util/List;)V

    return-void
.end method
