.class Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->defineTransletClasses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl$1;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl$TransletClassLoader;

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl$TransletClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-object p0
.end method
