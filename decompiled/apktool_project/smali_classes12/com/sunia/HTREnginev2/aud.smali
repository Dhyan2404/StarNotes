.class public final synthetic Lcom/sunia/HTREnginev2/aud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

.field public final synthetic b:[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/ClassBands;[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/aud;->a:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/aud;->b:[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/aud;->a:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/aud;->b:[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->d(Lorg/apache/commons/compress/harmony/unpack200/ClassBands;[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;I)I

    move-result p0

    return p0
.end method
