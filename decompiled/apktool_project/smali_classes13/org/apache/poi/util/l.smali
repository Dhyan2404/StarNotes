.class public final synthetic Lorg/apache/poi/util/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/XMLHelper$SecurityProperty;


# instance fields
.field public final synthetic a:Ljavax/xml/transform/TransformerFactory;


# direct methods
.method public synthetic constructor <init>(Ljavax/xml/transform/TransformerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/l;->a:Ljavax/xml/transform/TransformerFactory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/util/l;->a:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
