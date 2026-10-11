.class public final synthetic Lcom/sunia/HTREnginev2/o5m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

.field public final synthetic f:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o5m;->e:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/o5m;->f:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/o5m;->e:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o5m;->f:Ljava/util/function/BiConsumer;

    check-cast p1, Ljavax/xml/namespace/QName;

    check-cast p2, Lorg/apache/xmlbeans/SchemaComponent$Ref;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->m(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/util/function/BiConsumer;Ljavax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaComponent$Ref;)V

    return-void
.end method
