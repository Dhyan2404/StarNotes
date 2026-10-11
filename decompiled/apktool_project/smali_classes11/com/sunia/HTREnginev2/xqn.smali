.class public final synthetic Lcom/sunia/HTREnginev2/xqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IORunnable;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xqn;->a:Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xqn;->a:Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;

    invoke-static {p0}, Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;->f(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;)V

    return-void
.end method
