.class public final synthetic Lorg/apache/xmlbeans/impl/schema/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

.field public final synthetic f:Lorg/apache/xmlbeans/impl/schema/XsbReader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;Lorg/apache/xmlbeans/impl/schema/XsbReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/a;->e:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/a;->f:Lorg/apache/xmlbeans/impl/schema/XsbReader;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/a;->e:Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/a;->f:Lorg/apache/xmlbeans/impl/schema/XsbReader;

    check-cast p1, Lorg/apache/xmlbeans/SchemaComponent;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;->a(Lorg/apache/xmlbeans/impl/schema/SchemaTypePool;Lorg/apache/xmlbeans/impl/schema/XsbReader;Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    return-void
.end method
