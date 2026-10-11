.class public final synthetic Lcom/sunia/HTREnginev2/q7e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/util/TreeMap;

.field public final synthetic f:Lorg/apache/commons/compress/compressors/CompressorStreamProvider;


# direct methods
.method public synthetic constructor <init>(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q7e;->e:Ljava/util/TreeMap;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/q7e;->f:Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q7e;->e:Ljava/util/TreeMap;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q7e;->f:Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->e(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/lang/String;)V

    return-void
.end method
