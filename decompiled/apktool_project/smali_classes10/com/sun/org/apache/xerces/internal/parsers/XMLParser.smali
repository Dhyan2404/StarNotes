.class public abstract Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;


# instance fields
.field protected fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->reset()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    return-void
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method
