.class public final synthetic Lcom/sunia/HTREnginev2/i5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/LongPredicate;


# instance fields
.field public final synthetic a:Ljava/backport/function/LongPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/backport/function/LongPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i5j;->a:Ljava/backport/function/LongPredicate;

    return-void
.end method


# virtual methods
.method public final test(J)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i5j;->a:Ljava/backport/function/LongPredicate;

    invoke-static {p0, p1, p2}, Ljava/backport/function/LongPredicate;->a(Ljava/backport/function/LongPredicate;J)Z

    move-result p0

    return p0
.end method
