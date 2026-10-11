.class Lcom/sun/org/apache/xalan/internal/xsltc/runtime/SecuritySupport12$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/runtime/SecuritySupport12;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/SecuritySupport12;

.field final synthetic val$cl:Ljava/lang/ClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/SecuritySupport12;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/SecuritySupport12$6;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/SecuritySupport12;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/SecuritySupport12$6;->val$cl:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/SecuritySupport12$6;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/SecuritySupport12$6;->val$cl:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/SecuritySupport12$6;->val$name:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/SecuritySupport12$6;->val$name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method
