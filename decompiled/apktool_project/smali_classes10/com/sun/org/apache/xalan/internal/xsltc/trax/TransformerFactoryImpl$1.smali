.class Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getBytecodesFromClasses(Ljavax/xml/transform/Source;Ljava/lang/String;)[[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

.field final synthetic val$transletAuxPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl$1;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl$1;->val$transletAuxPrefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, ".class"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl$1;->val$transletAuxPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
