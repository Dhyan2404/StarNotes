.class public Lnet/sf/saxon/expr/ErrorIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# instance fields
.field public final e:Lnet/sf/saxon/trans/XPathException;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/trans/XPathException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/ErrorIterator;->e:Lnet/sf/saxon/trans/XPathException;

    return-void
.end method


# virtual methods
.method public next()Lnet/sf/saxon/om/Item;
    .locals 1

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    iget-object p0, p0, Lnet/sf/saxon/expr/ErrorIterator;->e:Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method
