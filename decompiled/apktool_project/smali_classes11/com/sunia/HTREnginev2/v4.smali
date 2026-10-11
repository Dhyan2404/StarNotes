.class public final synthetic Lcom/sunia/HTREnginev2/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v4;->a:Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v4;->a:Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->c(Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;I)I

    move-result p0

    return p0
.end method
