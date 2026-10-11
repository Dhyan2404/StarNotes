.class public final synthetic Lcom/sunia/HTREnginev2/yfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/commons/compress/harmony/pack200/CpBands;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CpBands;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yfe;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yfe;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->p(Lorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/CPSignature;)V

    return-void
.end method
