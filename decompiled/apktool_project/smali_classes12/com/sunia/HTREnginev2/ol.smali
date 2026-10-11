.class public final synthetic Lcom/sunia/HTREnginev2/ol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ol;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ol;->b:[I

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ol;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ol;->b:[I

    invoke-static {v0, p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->a(Ljava/util/List;[II)I

    move-result p0

    return p0
.end method
