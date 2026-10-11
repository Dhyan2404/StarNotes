.class public final synthetic Lorg/apache/poi/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/XMLHelper$SecurityProperty;


# instance fields
.field public final synthetic a:Ljavax/xml/validation/SchemaFactory;


# direct methods
.method public synthetic constructor <init>(Ljavax/xml/validation/SchemaFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/f;->a:Ljavax/xml/validation/SchemaFactory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/util/f;->a:Ljavax/xml/validation/SchemaFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/validation/SchemaFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
