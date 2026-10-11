.class public final synthetic Lcom/sunia/HTREnginev2/vfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lorg/apache/commons/compress/harmony/unpack200/CpBands;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vfe;->a:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vfe;->a:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->c(Lorg/apache/commons/compress/harmony/unpack200/CpBands;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
