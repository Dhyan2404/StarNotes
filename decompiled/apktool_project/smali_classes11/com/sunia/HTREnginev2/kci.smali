.class public final synthetic Lcom/sunia/HTREnginev2/kci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/function/IOBiConsumer;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOBiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kci;->e:Lonyx/org/apache/commons/io/function/IOBiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kci;->e:Lonyx/org/apache/commons/io/function/IOBiConsumer;

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOBiConsumer;->a(Lonyx/org/apache/commons/io/function/IOBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
