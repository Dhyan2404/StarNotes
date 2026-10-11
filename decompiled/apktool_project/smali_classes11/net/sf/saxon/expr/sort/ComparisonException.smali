.class public Lnet/sf/saxon/expr/sort/ComparisonException;
.super Ljava/lang/ClassCastException;
.source "SourceFile"


# instance fields
.field reason:Lnet/sf/saxon/trans/XPathException;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/trans/XPathException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/ComparisonException;->reason:Lnet/sf/saxon/trans/XPathException;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/ComparisonException;->reason:Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReason()Lnet/sf/saxon/trans/XPathException;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/ComparisonException;->reason:Lnet/sf/saxon/trans/XPathException;

    return-object p0
.end method
