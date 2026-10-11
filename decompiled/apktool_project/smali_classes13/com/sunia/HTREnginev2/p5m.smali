.class public final synthetic Lcom/sunia/HTREnginev2/p5m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/xmlbeans/SchemaComponent$Ref;

    check-cast p2, Lorg/apache/xmlbeans/SchemaComponent$Ref;

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->g(Lorg/apache/xmlbeans/SchemaComponent$Ref;Lorg/apache/xmlbeans/SchemaComponent$Ref;)Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object p0

    return-object p0
.end method
