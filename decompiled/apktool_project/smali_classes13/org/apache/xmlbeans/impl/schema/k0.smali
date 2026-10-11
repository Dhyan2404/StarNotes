.class public final synthetic Lorg/apache/xmlbeans/impl/schema/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/schema/XsbReader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/XsbReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/k0;->e:Lorg/apache/xmlbeans/impl/schema/XsbReader;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/k0;->e:Lorg/apache/xmlbeans/impl/schema/XsbReader;

    check-cast p1, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/XsbReader;->writeQName(Ljavax/xml/namespace/QName;)V

    return-void
.end method
