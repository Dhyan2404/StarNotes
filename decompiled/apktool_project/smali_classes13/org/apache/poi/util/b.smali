.class public final synthetic Lorg/apache/poi/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/XMLHelper$SecurityFeature;


# instance fields
.field public final synthetic a:Lorg/xml/sax/XMLReader;


# direct methods
.method public synthetic constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/b;->a:Lorg/xml/sax/XMLReader;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/util/b;->a:Lorg/xml/sax/XMLReader;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method
