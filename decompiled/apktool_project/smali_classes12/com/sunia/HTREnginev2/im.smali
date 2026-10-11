.class public final synthetic Lcom/sunia/HTREnginev2/im;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic e:Lorg/apache/commons/compress/harmony/pack200/IntList;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/pack200/IntList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/im;->e:Lorg/apache/commons/compress/harmony/pack200/IntList;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/im;->e:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method
