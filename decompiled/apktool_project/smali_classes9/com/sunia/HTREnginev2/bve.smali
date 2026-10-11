.class public final synthetic Lcom/sunia/HTREnginev2/bve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bve;->e:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bve;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p0}, Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;->d(Landroidx/lifecycle/MutableLiveData;)V

    return-void
.end method
