.class public final synthetic Lcom/sunia/HTREnginev2/dqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IORunnable;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dqn;->a:Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dqn;->a:Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;->w(Lonyx/org/apache/commons/io/input/UncheckedBufferedReader;)V

    return-void
.end method
