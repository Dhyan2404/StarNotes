.class public final synthetic Lcom/sunia/HTREnginev2/see;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;

.field public final synthetic f:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/see;->e:Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/see;->f:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/see;->g:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/see;->e:Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/see;->f:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/see;->g:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->n(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;Landroid/view/View;Z)V

    return-void
.end method
