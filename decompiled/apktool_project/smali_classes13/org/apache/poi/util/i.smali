.class public final synthetic Lorg/apache/poi/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/XMLHelper$SecurityFeature;


# instance fields
.field public final synthetic a:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method public synthetic constructor <init>(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/i;->a:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/util/i;->a:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/XMLHelper;->a(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    return-void
.end method
