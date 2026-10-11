.class public abstract Lcom/onegravity/rteditor/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:Landroid/text/Spannable;

.field public e:I

.field public f:I

.field public g:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Landroid/text/Spannable;Landroid/text/Spannable;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/onegravity/rteditor/a$a;->b:I

    iput p4, p0, Lcom/onegravity/rteditor/a$a;->c:I

    iput p5, p0, Lcom/onegravity/rteditor/a$a;->e:I

    iput p6, p0, Lcom/onegravity/rteditor/a$a;->f:I

    iput-object p1, p0, Lcom/onegravity/rteditor/a$a;->d:Landroid/text/Spannable;

    iput-object p2, p0, Lcom/onegravity/rteditor/a$a;->g:Landroid/text/Spannable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/onegravity/rteditor/a$a;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcom/onegravity/rteditor/a$a;)Z
    .locals 2

    iget-wide v0, p0, Lcom/onegravity/rteditor/a$a;->a:J

    iget-wide p0, p1, Lcom/onegravity/rteditor/a$a;->a:J

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 v0, 0x12c

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(Lcom/onegravity/rteditor/a$a;)Lcom/onegravity/rteditor/a$a;
    .locals 1

    iget-object v0, p1, Lcom/onegravity/rteditor/a$a;->d:Landroid/text/Spannable;

    iput-object v0, p0, Lcom/onegravity/rteditor/a$a;->d:Landroid/text/Spannable;

    iget v0, p1, Lcom/onegravity/rteditor/a$a;->b:I

    iput v0, p0, Lcom/onegravity/rteditor/a$a;->b:I

    iget p1, p1, Lcom/onegravity/rteditor/a$a;->c:I

    iput p1, p0, Lcom/onegravity/rteditor/a$a;->c:I

    return-object p0
.end method

.method public c(Lcom/onegravity/rteditor/RTEditText;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/RTEditText;->h()V

    iget-object v0, p0, Lcom/onegravity/rteditor/a$a;->g:Landroid/text/Spannable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/onegravity/rteditor/a$a;->e:I

    iget p0, p0, Lcom/onegravity/rteditor/a$a;->f:I

    invoke-virtual {p1, v0, p0}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {p1}, Lcom/onegravity/rteditor/RTEditText;->m()V

    return-void
.end method

.method public d(Lcom/onegravity/rteditor/RTEditText;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/RTEditText;->h()V

    iget-object v0, p0, Lcom/onegravity/rteditor/a$a;->d:Landroid/text/Spannable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/onegravity/rteditor/a$a;->b:I

    iget p0, p0, Lcom/onegravity/rteditor/a$a;->c:I

    invoke-virtual {p1, v0, p0}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {p1}, Lcom/onegravity/rteditor/RTEditText;->m()V

    return-void
.end method
