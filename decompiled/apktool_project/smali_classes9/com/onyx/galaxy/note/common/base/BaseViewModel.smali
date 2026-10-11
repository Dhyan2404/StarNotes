.class public Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/Observable;


# instance fields
.field public final h:Landroidx/databinding/PropertyChangeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/databinding/PropertyChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/PropertyChangeRegistry;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->h:Landroidx/databinding/PropertyChangeRegistry;

    return-void
.end method


# virtual methods
.method public addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->h:Landroidx/databinding/PropertyChangeRegistry;

    invoke-virtual {p0, p1}, Landroidx/databinding/CallbackRegistry;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyChange()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->h:Landroidx/databinding/PropertyChangeRegistry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public notifyPropertyChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->h:Landroidx/databinding/PropertyChangeRegistry;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/base/BaseViewModel;->h:Landroidx/databinding/PropertyChangeRegistry;

    invoke-virtual {p0, p1}, Landroidx/databinding/CallbackRegistry;->remove(Ljava/lang/Object;)V

    return-void
.end method
