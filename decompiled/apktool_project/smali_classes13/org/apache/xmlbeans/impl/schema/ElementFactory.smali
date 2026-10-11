.class public Lorg/apache/xmlbeans/impl/schema/ElementFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final type:Lorg/apache/xmlbeans/SchemaType;

.field private final typeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->typeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->type:Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method public getTypeLoader()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->typeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;

    return-object p0
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getTypeLoader()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->type:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->newInstance(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public newInstance(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/XmlOptions;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getTypeLoader()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0, p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->newInstance(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method
