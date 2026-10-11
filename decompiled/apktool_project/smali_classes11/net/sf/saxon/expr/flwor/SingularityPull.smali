.class public Lnet/sf/saxon/expr/flwor/SingularityPull;
.super Lnet/sf/saxon/expr/flwor/TuplePull;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/TuplePull;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/flwor/SingularityPull;->a:Z

    return-void
.end method


# virtual methods
.method public nextTuple(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 0

    iget-boolean p1, p0, Lnet/sf/saxon/expr/flwor/SingularityPull;->a:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/expr/flwor/SingularityPull;->a:Z

    return p1
.end method
