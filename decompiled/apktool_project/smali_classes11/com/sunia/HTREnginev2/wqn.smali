.class public final synthetic Lcom/sunia/HTREnginev2/wqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wqn;->a:Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wqn;->a:Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;

    check-cast p1, [B

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;->H(Lonyx/org/apache/commons/io/output/UncheckedFilterOutputStream;[B)V

    return-void
.end method
