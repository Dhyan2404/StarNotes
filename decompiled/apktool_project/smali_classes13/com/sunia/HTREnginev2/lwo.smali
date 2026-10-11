.class public final synthetic Lcom/sunia/HTREnginev2/lwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/SchemaType;

.field public final synthetic f:Lorg/apache/xmlbeans/impl/common/ValidationContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lwo;->e:Lorg/apache/xmlbeans/SchemaType;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lwo;->f:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lwo;->e:Lorg/apache/xmlbeans/SchemaType;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lwo;->f:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->c(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p0

    return-object p0
.end method
