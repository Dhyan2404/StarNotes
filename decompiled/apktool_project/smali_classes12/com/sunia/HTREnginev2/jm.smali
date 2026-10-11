.class public final synthetic Lcom/sunia/HTREnginev2/jm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jm;->a:[J

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jm;->a:[J

    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->a([JI)I

    move-result p0

    return p0
.end method
