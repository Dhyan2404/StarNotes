.class public final synthetic Lcom/sunia/HTREnginev2/tfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntToDoubleFunction;


# instance fields
.field public final synthetic a:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tfe;->a:[J

    return-void
.end method


# virtual methods
.method public final applyAsDouble(I)D
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tfe;->a:[J

    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->d([JI)D

    move-result-wide p0

    return-wide p0
.end method
