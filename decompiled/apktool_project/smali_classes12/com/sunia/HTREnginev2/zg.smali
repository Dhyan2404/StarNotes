.class public final synthetic Lcom/sunia/HTREnginev2/zg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

.field public final synthetic f:[I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zg;->e:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/zg;->f:[I

    iput p3, p0, Lcom/sunia/HTREnginev2/zg;->g:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zg;->e:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/zg;->f:[I

    iget p0, p0, Lcom/sunia/HTREnginev2/zg;->g:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->l(Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;[IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
