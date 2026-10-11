.class public final Lorg/apache/xerces/impl/xs/util/XSInputSource;
.super Lorg/apache/xerces/xni/parser/XMLInputSource;
.source "SourceFile"


# instance fields
.field public a:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

.field public b:[Lorg/apache/xerces/xs/XSObject;


# direct methods
.method public constructor <init>([Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/XSInputSource;->a:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/util/XSInputSource;->b:[Lorg/apache/xerces/xs/XSObject;

    return-void
.end method

.method public constructor <init>([Lorg/apache/xerces/xs/XSObject;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/util/XSInputSource;->a:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/XSInputSource;->b:[Lorg/apache/xerces/xs/XSObject;

    return-void
.end method


# virtual methods
.method public getComponents()[Lorg/apache/xerces/xs/XSObject;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/XSInputSource;->b:[Lorg/apache/xerces/xs/XSObject;

    return-object p0
.end method

.method public getGrammars()[Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/XSInputSource;->a:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    return-object p0
.end method

.method public setComponents([Lorg/apache/xerces/xs/XSObject;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/XSInputSource;->b:[Lorg/apache/xerces/xs/XSObject;

    return-void
.end method

.method public setGrammars([Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/XSInputSource;->a:[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    return-void
.end method
