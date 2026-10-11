.class public final Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/Templates;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl$TransletClassLoader;
    }
.end annotation


# static fields
.field private static ABSTRACT_TRANSLET:Ljava/lang/String; = "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

.field static final serialVersionUID:J = 0x9574fc16eacab33L


# instance fields
.field private _auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

.field private _bytecodes:[[B

.field private _class:[Ljava/lang/Class;

.field private _indentNumber:I

.field private _name:Ljava/lang/String;

.field private _outputProperties:Ljava/util/Properties;

.field private transient _sdom:Ljava/lang/ThreadLocal;

.field private transient _tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

.field private _transletIndex:I

.field private transient _uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_bytecodes:[[B

    .line 31
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_transletIndex:I

    .line 33
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    .line 34
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    .line 35
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_sdom:Ljava/lang/ThreadLocal;

    .line 36
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Class;Ljava/lang/String;Ljava/util/Properties;ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_bytecodes:[[B

    .line 17
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_transletIndex:I

    .line 19
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    .line 20
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    .line 21
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_sdom:Ljava/lang/ThreadLocal;

    .line 22
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    .line 23
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_transletIndex:I

    .line 25
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_outputProperties:Ljava/util/Properties;

    .line 26
    iput p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_indentNumber:I

    .line 27
    iput-object p5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    return-void
.end method

.method public constructor <init>([[BLjava/lang/String;Ljava/util/Properties;ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_bytecodes:[[B

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_transletIndex:I

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_sdom:Ljava/lang/ThreadLocal;

    .line 9
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_bytecodes:[[B

    .line 10
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_outputProperties:Ljava/util/Properties;

    .line 12
    iput p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_indentNumber:I

    .line 13
    iput-object p5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    return-void
.end method

.method private defineTransletClasses()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_bytecodes:[[B

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl$1;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl$1;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl$TransletClassLoader;

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_bytecodes:[[B

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/Class;

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_bytecodes:[[B

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl$TransletClassLoader;->defineClass([B)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->ABSTRACT_TRANSLET:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_transletIndex:I

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    aget-object v5, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_transletIndex:I

    if-ltz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "NO_MAIN_TRANSLET_ERR"

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassFormatError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "TRANSLET_OBJECT_ERR"

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "TRANSLET_CLASS_ERR"

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v0, "NO_TRANSLET_CLASS_ERR"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTransletInstance()Lcom/sun/org/apache/xalan/internal/xsltc/Translet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    const-string v0, "TRANSLET_OBJECT_ERR"

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->defineTransletClasses()V

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_transletIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->postInitialization()V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->setTemplates(Ljavax/xml/transform/Templates;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_auxClasses:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->setAuxiliaryClasses(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/xml/transform/URIResolver;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    instance-of v0, v0, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    check-cast p0, Ljava/io/Serializable;

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getOutputProperties()Ljava/util/Properties;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/Transformer;->getOutputProperties()Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStylesheetDOM()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_sdom:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    return-object p0
.end method

.method public declared-synchronized getTransletBytecodes()[[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_bytecodes:[[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTransletClasses()[Ljava/lang/Class;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->defineTransletClasses()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTransletIndex()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_class:[Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->defineTransletClasses()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_transletIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTransletName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized newTransformer()Ljavax/xml/transform/Transformer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->getTransletInstance()Lcom/sun/org/apache/xalan/internal/xsltc/Translet;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_outputProperties:Ljava/util/Properties;

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_indentNumber:I

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Ljava/util/Properties;ILcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_tfactory:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;

    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerFactoryImpl;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->setSecureProcessing(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStylesheetDOM(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_sdom:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized setTransletBytecodes([[B)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_bytecodes:[[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTransletName(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TemplatesImpl;->_uriResolver:Ljavax/xml/transform/URIResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
