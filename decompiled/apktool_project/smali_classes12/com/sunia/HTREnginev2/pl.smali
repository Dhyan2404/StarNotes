.class public final synthetic Lcom/sunia/HTREnginev2/pl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntToLongFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/pl;->a:I

    return-void
.end method


# virtual methods
.method public final applyAsLong(I)J
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/pl;->a:I

    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->a(II)J

    move-result-wide p0

    return-wide p0
.end method
