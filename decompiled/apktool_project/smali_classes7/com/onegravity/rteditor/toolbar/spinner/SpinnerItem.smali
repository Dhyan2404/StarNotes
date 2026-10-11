.class public abstract Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem$OnChangedListener;
    }
.end annotation


# instance fields
.field protected mListenerTag:Ljava/lang/Object;

.field protected mOnChangedListener:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem$OnChangedListener;

.field protected final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    :cond_0
    return-void
.end method

.method public c(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem$OnChangedListener;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;->mOnChangedListener:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem$OnChangedListener;

    iput-object p2, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;->mListenerTag:Ljava/lang/Object;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
