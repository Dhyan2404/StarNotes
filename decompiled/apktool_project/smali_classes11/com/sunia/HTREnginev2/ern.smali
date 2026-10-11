.class public final synthetic Lcom/sunia/HTREnginev2/ern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOTriFunction;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/input/UncheckedFilterReader;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ern;->a:Lonyx/org/apache/commons/io/input/UncheckedFilterReader;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ern;->a:Lonyx/org/apache/commons/io/input/UncheckedFilterReader;

    check-cast p1, [C

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/input/UncheckedFilterReader;->j(Lonyx/org/apache/commons/io/input/UncheckedFilterReader;[CII)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
