.class public final synthetic Lcom/sunia/HTREnginev2/nud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Ljava/lang/reflect/Method;

.field public final synthetic c:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nud;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nud;->b:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/nud;->c:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final freeBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nud;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/nud;->b:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nud;->c:Ljava/lang/reflect/Method;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/poi/poifs/nio/CleanerUtil;->b(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/nio/ByteBuffer;)V

    return-void
.end method
