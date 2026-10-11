.class public final synthetic Lcom/sunia/HTREnginev2/w4m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w4m;->e:Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w4m;->e:Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->a(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p0

    return-object p0
.end method
