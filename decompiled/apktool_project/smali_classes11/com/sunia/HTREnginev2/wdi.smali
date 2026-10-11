.class public final synthetic Lcom/sunia/HTREnginev2/wdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOPredicate;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOPredicate;

.field public final synthetic b:Lonyx/org/apache/commons/io/function/IOPredicate;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOPredicate;Lonyx/org/apache/commons/io/function/IOPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wdi;->a:Lonyx/org/apache/commons/io/function/IOPredicate;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wdi;->b:Lonyx/org/apache/commons/io/function/IOPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wdi;->a:Lonyx/org/apache/commons/io/function/IOPredicate;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wdi;->b:Lonyx/org/apache/commons/io/function/IOPredicate;

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/IOPredicate;->f(Lonyx/org/apache/commons/io/function/IOPredicate;Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
