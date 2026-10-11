.class public interface abstract Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctsignaturetime461dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getFormat()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract setFormat(Ljava/lang/String;)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method

.method public abstract xgetFormat()Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/STFormat;
.end method

.method public abstract xgetValue()Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/STValue;
.end method

.method public abstract xsetFormat(Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/STFormat;)V
.end method

.method public abstract xsetValue(Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/STValue;)V
.end method
