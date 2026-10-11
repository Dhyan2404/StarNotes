.class public final synthetic Lcom/sunia/HTREnginev2/fkk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hsmf/datatypes/ChunkGroup;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hsmf/datatypes/ChunkGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fkk;->e:Lorg/apache/poi/hsmf/datatypes/ChunkGroup;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fkk;->e:Lorg/apache/poi/hsmf/datatypes/ChunkGroup;

    check-cast p1, Lorg/apache/poi/hsmf/datatypes/Chunk;

    invoke-interface {p0, p1}, Lorg/apache/poi/hsmf/datatypes/ChunkGroup;->record(Lorg/apache/poi/hsmf/datatypes/Chunk;)V

    return-void
.end method
