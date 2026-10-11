.class public Lnet/sf/saxon/functions/IndexOf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/IndexOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:I

.field public final f:Lnet/sf/saxon/om/SequenceIterator;

.field public final g:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public final h:Lnet/sf/saxon/expr/sort/AtomicComparer;

.field public final i:Lnet/sf/saxon/value/AtomicValue;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/sort/AtomicComparer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/functions/IndexOf$a;->e:I

    iput-object p1, p0, Lnet/sf/saxon/functions/IndexOf$a;->f:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p2, p0, Lnet/sf/saxon/functions/IndexOf$a;->g:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p3, p0, Lnet/sf/saxon/functions/IndexOf$a;->i:Lnet/sf/saxon/value/AtomicValue;

    iput-object p4, p0, Lnet/sf/saxon/functions/IndexOf$a;->h:Lnet/sf/saxon/expr/sort/AtomicComparer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/IndexOf$a;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/IndexOf$a;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public f()Lnet/sf/saxon/value/Int64Value;
    .locals 4

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/functions/IndexOf$a;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_1

    iget v1, p0, Lnet/sf/saxon/functions/IndexOf$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/functions/IndexOf$a;->e:I

    iget-object v1, p0, Lnet/sf/saxon/functions/IndexOf$a;->g:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lnet/sf/saxon/type/Type;->isGuaranteedComparable(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/type/BuiltInAtomicType;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/functions/IndexOf$a;->h:Lnet/sf/saxon/expr/sort/AtomicComparer;

    iget-object v2, p0, Lnet/sf/saxon/functions/IndexOf$a;->i:Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v1, v0, v2}, Lnet/sf/saxon/expr/sort/AtomicComparer;->comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget p0, p0, Lnet/sf/saxon/functions/IndexOf$a;->e:I

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/NoDynamicContextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/IndexOf$a;->f()Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0
.end method
