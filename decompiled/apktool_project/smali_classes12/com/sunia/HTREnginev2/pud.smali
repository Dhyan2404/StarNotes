.class public final synthetic Lcom/sunia/HTREnginev2/pud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Method;

.field public final synthetic b:Ljava/nio/ByteBuffer;

.field public final synthetic c:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;Ljava/nio/ByteBuffer;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pud;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pud;->b:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/pud;->c:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pud;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/pud;->b:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pud;->c:Ljava/lang/reflect/Method;

    invoke-static {v0, v1, p0}, Lorg/apache/poi/poifs/nio/CleanerUtil;->c(Ljava/lang/reflect/Method;Ljava/nio/ByteBuffer;Ljava/lang/reflect/Method;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method
