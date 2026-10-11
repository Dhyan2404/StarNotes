.class public abstract Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$DOMSerializerWrapper;,
        Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerializer(Ljava/util/Properties;)Lcom/sun/org/apache/xalan/internal/serialize/Serializer;
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    move-result-object p0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerFactory$SerializerWrapper;-><init>(Lcom/sun/org/apache/xml/internal/serializer/Serializer;)V

    return-object v0
.end method
