.class public final synthetic Lcom/sunia/HTREnginev2/n0n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:[Ljava/util/stream/DoubleStream;


# direct methods
.method public synthetic constructor <init>([Ljava/util/stream/DoubleStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/n0n;->e:[Ljava/util/stream/DoubleStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/n0n;->e:[Ljava/util/stream/DoubleStream;

    invoke-static {p0}, Lcom/google/common/collect/Streams;->h([Ljava/util/stream/DoubleStream;)V

    return-void
.end method
