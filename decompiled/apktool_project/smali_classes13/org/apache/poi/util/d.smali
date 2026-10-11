.class public final synthetic Lorg/apache/poi/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/XMLHelper$SecurityFeature;


# instance fields
.field public final synthetic a:Ljavax/xml/stream/XMLInputFactory;


# direct methods
.method public synthetic constructor <init>(Ljavax/xml/stream/XMLInputFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/d;->a:Ljavax/xml/stream/XMLInputFactory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/util/d;->a:Ljavax/xml/stream/XMLInputFactory;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljavax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
