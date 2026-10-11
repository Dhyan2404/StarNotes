.class public Lnet/sf/saxon/expr/CurrentItemExpression;
.super Lnet/sf/saxon/expr/ContextItemExpression;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    const-string v0, "XTDE1360"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/ContextItemExpression;->setErrorCodeForUndefinedContext(Ljava/lang/String;Z)V

    return-void
.end method
