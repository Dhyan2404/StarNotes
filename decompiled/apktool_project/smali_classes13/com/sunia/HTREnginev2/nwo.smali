.class public final synthetic Lcom/sunia/HTREnginev2/nwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nwo;->e:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nwo;->e:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->a(Lorg/apache/xmlbeans/SchemaType;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p0

    return-object p0
.end method
