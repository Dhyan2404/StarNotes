.class public final synthetic Lorg/apache/xmlbeans/impl/schema/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/schema/XsbReader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/XsbReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/m0;->e:Lorg/apache/xmlbeans/impl/schema/XsbReader;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/m0;->e:Lorg/apache/xmlbeans/impl/schema/XsbReader;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->a(Lorg/apache/xmlbeans/impl/schema/XsbReader;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
