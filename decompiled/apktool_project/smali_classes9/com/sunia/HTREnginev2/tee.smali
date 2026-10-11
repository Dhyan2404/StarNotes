.class public final synthetic Lcom/sunia/HTREnginev2/tee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;

.field public final synthetic f:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tee;->e:Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tee;->f:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/tee;->g:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tee;->e:Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tee;->f:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/tee;->g:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->m(Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
