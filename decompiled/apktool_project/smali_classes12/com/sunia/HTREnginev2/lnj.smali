.class public final synthetic Lcom/sunia/HTREnginev2/lnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

.field public final synthetic b:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field public final synthetic c:[I

.field public final synthetic d:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lnj;->a:Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lnj;->b:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/lnj;->c:[I

    iput-object p4, p0, Lcom/sunia/HTREnginev2/lnj;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lnj;->a:Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lnj;->b:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/lnj;->c:[I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lnj;->d:Ljava/util/Iterator;

    invoke-static {v0, v1, v2, p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->b(Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    move-result-object p0

    return-object p0
.end method
