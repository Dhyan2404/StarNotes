.class public final synthetic Lcom/sunia/HTREnginev2/lde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;

.field public final synthetic f:Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lde;->e:Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lde;->f:Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/lde;->g:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lde;->e:Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lde;->f:Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/lde;->g:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->n(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;Lcom/onyx/galaxy/note/databinding/ItemCountDownRecordBinding;Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
