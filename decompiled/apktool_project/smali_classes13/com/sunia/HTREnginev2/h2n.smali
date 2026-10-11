.class public final synthetic Lcom/sunia/HTREnginev2/h2n;
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

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h2n;->e:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h2n;->e:Lorg/apache/xmlbeans/SchemaType;

    check-cast p1, Lorg/apache/xmlbeans/SchemaLocalAttribute;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->a(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaLocalAttribute;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p0

    return-object p0
.end method
