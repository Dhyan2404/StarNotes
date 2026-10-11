.class public Lorg/apache/xerces/impl/dv/DatatypeException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x1aef209f3de7d52aL


# instance fields
.field protected final args:[Ljava/lang/Object;

.field protected final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/DatatypeException;->args:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/DatatypeException;->args:[Ljava/lang/Object;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    const-string v0, "org.apache.xerces.impl.msg.XMLSchemaMessages"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/DatatypeException;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FormatFailed"

    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v2, "BadMessageKey"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/MissingResourceException;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    invoke-direct {v2, v1, v0, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/util/MissingResourceException;

    const-string v2, "Property file not found!"

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/DatatypeException;->key:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
