.class public Lnet/sf/saxon/functions/Trace$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:Ljava/lang/String;

.field public final g:Lnet/sf/saxon/lib/Logger;

.field public h:Z

.field public i:I

.field public final synthetic j:Lnet/sf/saxon/functions/Trace;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/Trace;Lnet/sf/saxon/om/SequenceIterator;Ljava/lang/String;Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/Trace$a;->j:Lnet/sf/saxon/functions/Trace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/functions/Trace$a;->h:Z

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/functions/Trace$a;->i:I

    iput-object p2, p0, Lnet/sf/saxon/functions/Trace$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p3, p0, Lnet/sf/saxon/functions/Trace$a;->f:Ljava/lang/String;

    iput-object p4, p0, Lnet/sf/saxon/functions/Trace$a;->g:Lnet/sf/saxon/lib/Logger;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/Trace$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/Trace$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/functions/Trace$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/functions/Trace$a;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/functions/Trace$a;->i:I

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lnet/sf/saxon/functions/Trace$a;->h:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/sf/saxon/functions/Trace$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": empty sequence"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/functions/Trace$a;->g:Lnet/sf/saxon/lib/Logger;

    const/4 v2, 0x0

    invoke-static {v2, v1, p0}, Lnet/sf/saxon/functions/Trace;->traceItem(Lnet/sf/saxon/om/Item;Ljava/lang/String;Lnet/sf/saxon/lib/Logger;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/sf/saxon/functions/Trace$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/sf/saxon/functions/Trace$a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/functions/Trace$a;->g:Lnet/sf/saxon/lib/Logger;

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/functions/Trace;->traceItem(Lnet/sf/saxon/om/Item;Ljava/lang/String;Lnet/sf/saxon/lib/Logger;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sf/saxon/functions/Trace$a;->h:Z

    :cond_1
    :goto_0
    return-object v0
.end method
