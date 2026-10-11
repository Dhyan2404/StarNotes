.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariant;",
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

    const-string v2, "cttlanimvariantc9d3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariant;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariant;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBoolVal()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariantBooleanVal;
.end method

.method public abstract addNewClrVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract addNewFltVal()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariantFloatVal;
.end method

.method public abstract addNewIntVal()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariantIntegerVal;
.end method

.method public abstract addNewStrVal()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariantStringVal;
.end method

.method public abstract getBoolVal()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariantBooleanVal;
.end method

.method public abstract getClrVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.end method

.method public abstract getFltVal()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariantFloatVal;
.end method

.method public abstract getIntVal()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariantIntegerVal;
.end method

.method public abstract getStrVal()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariantStringVal;
.end method

.method public abstract isSetBoolVal()Z
.end method

.method public abstract isSetClrVal()Z
.end method

.method public abstract isSetFltVal()Z
.end method

.method public abstract isSetIntVal()Z
.end method

.method public abstract isSetStrVal()Z
.end method

.method public abstract setBoolVal(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariantBooleanVal;)V
.end method

.method public abstract setClrVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V
.end method

.method public abstract setFltVal(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariantFloatVal;)V
.end method

.method public abstract setIntVal(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariantIntegerVal;)V
.end method

.method public abstract setStrVal(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimVariantStringVal;)V
.end method

.method public abstract unsetBoolVal()V
.end method

.method public abstract unsetClrVal()V
.end method

.method public abstract unsetFltVal()V
.end method

.method public abstract unsetIntVal()V
.end method

.method public abstract unsetStrVal()V
.end method
