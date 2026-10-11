.class public Lnet/sf/saxon/expr/flwor/FLWORExpression$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/flwor/FLWORExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Lnet/sf/saxon/expr/flwor/WhereClause;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/sf/saxon/expr/flwor/FLWORExpression$b;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/expr/flwor/FLWORExpression$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lnet/sf/saxon/expr/flwor/FLWORExpression$b;-><init>()V

    return-void
.end method
