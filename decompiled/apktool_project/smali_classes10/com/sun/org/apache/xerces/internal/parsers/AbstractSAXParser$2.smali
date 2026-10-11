.class Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$2;
.super Lorg/xml/sax/helpers/LocatorImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->parse(Lorg/xml/sax/InputSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$2;->this$0:Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$2;->this$0:Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    return-object p0
.end method
