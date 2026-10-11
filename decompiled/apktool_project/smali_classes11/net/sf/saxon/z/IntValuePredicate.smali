.class public Lnet/sf/saxon/z/IntValuePredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntPredicateProxy;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/z/IntValuePredicate;->a:I

    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntValuePredicate;->a:I

    return p0
.end method

.method public test(I)Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntValuePredicate;->a:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
