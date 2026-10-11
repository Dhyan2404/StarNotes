.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticPr;",
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

    const-string v2, "ctphoneticpr898btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPhoneticPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticAlignment$Enum;
.end method

.method public abstract getFontId()J
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;
.end method

.method public abstract isSetAlignment()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setAlignment(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticAlignment$Enum;)V
.end method

.method public abstract setFontId(J)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;)V
.end method

.method public abstract unsetAlignment()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetAlignment()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticAlignment;
.end method

.method public abstract xgetFontId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontId;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType;
.end method

.method public abstract xsetAlignment(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticAlignment;)V
.end method

.method public abstract xsetFontId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFontId;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType;)V
.end method
