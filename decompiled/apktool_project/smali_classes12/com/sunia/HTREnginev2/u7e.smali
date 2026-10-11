.class public final synthetic Lcom/sunia/HTREnginev2/u7e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/util/TreeMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u7e;->e:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u7e;->e:Ljava/util/TreeMap;

    check-cast p1, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->d(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;)V

    return-void
.end method
