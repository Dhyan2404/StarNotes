.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeAnimateValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeAnimateValue;",
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

    const-string v2, "cttltimeanimatevalue07d0type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeAnimateValue;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeAnimateValue;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewVal()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariant;
.end method

.method public abstract getFmla()Ljava/lang/String;
.end method

.method public abstract getTm()Ljava/lang/Object;
.end method

.method public abstract getVal()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariant;
.end method

.method public abstract isSetFmla()Z
.end method

.method public abstract isSetTm()Z
.end method

.method public abstract isSetVal()Z
.end method

.method public abstract setFmla(Ljava/lang/String;)V
.end method

.method public abstract setTm(Ljava/lang/Object;)V
.end method

.method public abstract setVal(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariant;)V
.end method

.method public abstract unsetFmla()V
.end method

.method public abstract unsetTm()V
.end method

.method public abstract unsetVal()V
.end method

.method public abstract xgetFmla()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTm()Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeAnimateValueTime;
.end method

.method public abstract xsetFmla(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTm(Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLTimeAnimateValueTime;)V
.end method
