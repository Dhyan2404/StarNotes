.class public Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;->k(Landroid/widget/Spinner;IILcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

.field public final synthetic g:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

.field public final synthetic h:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$a;->h:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar;

    iput-object p2, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$a;->f:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    iput-object p3, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$a;->g:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$a;->f:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {p1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->getSelectedItem()I

    move-result p1

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$a;->g:Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;

    iget-object p2, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$a;->f:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {p2, p3}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->getItem(I)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$f;->a(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;I)V

    :cond_0
    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/HorizontalRTToolbar$a;->f:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    invoke-virtual {p0, p3}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->setSelectedItem(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
