.class public Lcom/sunia/HTREnginev2/oek$a;
.super Landroidx/databinding/ObservableList$OnListChangedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/oek;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/oek;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/oek;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oek$a;->a:Lcom/sunia/HTREnginev2/oek;

    invoke-direct {p0}, Landroidx/databinding/ObservableList$OnListChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroidx/databinding/ObservableList;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oek$a;->a:Lcom/sunia/HTREnginev2/oek;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(Landroidx/databinding/ObservableList;II)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oek$a;->a:Lcom/sunia/HTREnginev2/oek;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeInserted(Landroidx/databinding/ObservableList;II)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oek$a;->a:Lcom/sunia/HTREnginev2/oek;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeMoved(Landroidx/databinding/ObservableList;III)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oek$a;->a:Lcom/sunia/HTREnginev2/oek;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeRemoved(Landroidx/databinding/ObservableList;II)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oek$a;->a:Lcom/sunia/HTREnginev2/oek;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
