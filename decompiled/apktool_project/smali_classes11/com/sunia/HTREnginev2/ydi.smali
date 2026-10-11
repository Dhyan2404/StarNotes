.class public final synthetic Lcom/sunia/HTREnginev2/ydi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOPredicate;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/function/IOPredicate;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ydi;->a:Lonyx/org/apache/commons/io/function/IOPredicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ydi;->a:Lonyx/org/apache/commons/io/function/IOPredicate;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOPredicate;->b(Lonyx/org/apache/commons/io/function/IOPredicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
