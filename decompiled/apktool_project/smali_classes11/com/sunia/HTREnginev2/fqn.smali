.class public final synthetic Lcom/sunia/HTREnginev2/fqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fqn;->a:Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fqn;->a:Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;->I(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;I)V

    return-void
.end method
