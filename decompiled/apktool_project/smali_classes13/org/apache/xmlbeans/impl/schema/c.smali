.class public final synthetic Lorg/apache/xmlbeans/impl/schema/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/c;->e:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/c;->e:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    check-cast p1, Lorg/apache/xmlbeans/SchemaAnnotation;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    return-void
.end method
