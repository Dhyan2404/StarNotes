.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionAutoFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionAutoFormatting;",
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

    const-string v2, "ctrevisionautoformatting8c78type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionAutoFormatting;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionAutoFormatting;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getApplyAlignmentFormats()Z
.end method

.method public abstract getApplyBorderFormats()Z
.end method

.method public abstract getApplyFontFormats()Z
.end method

.method public abstract getApplyNumberFormats()Z
.end method

.method public abstract getApplyPatternFormats()Z
.end method

.method public abstract getApplyWidthHeightFormats()Z
.end method

.method public abstract getAutoFormatId()J
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getSheetId()J
.end method

.method public abstract isSetApplyAlignmentFormats()Z
.end method

.method public abstract isSetApplyBorderFormats()Z
.end method

.method public abstract isSetApplyFontFormats()Z
.end method

.method public abstract isSetApplyNumberFormats()Z
.end method

.method public abstract isSetApplyPatternFormats()Z
.end method

.method public abstract isSetApplyWidthHeightFormats()Z
.end method

.method public abstract isSetAutoFormatId()Z
.end method

.method public abstract setApplyAlignmentFormats(Z)V
.end method

.method public abstract setApplyBorderFormats(Z)V
.end method

.method public abstract setApplyFontFormats(Z)V
.end method

.method public abstract setApplyNumberFormats(Z)V
.end method

.method public abstract setApplyPatternFormats(Z)V
.end method

.method public abstract setApplyWidthHeightFormats(Z)V
.end method

.method public abstract setAutoFormatId(J)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setSheetId(J)V
.end method

.method public abstract unsetApplyAlignmentFormats()V
.end method

.method public abstract unsetApplyBorderFormats()V
.end method

.method public abstract unsetApplyFontFormats()V
.end method

.method public abstract unsetApplyNumberFormats()V
.end method

.method public abstract unsetApplyPatternFormats()V
.end method

.method public abstract unsetApplyWidthHeightFormats()V
.end method

.method public abstract unsetAutoFormatId()V
.end method

.method public abstract xgetApplyAlignmentFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyBorderFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyFontFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyNumberFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyPatternFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyWidthHeightFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAutoFormatId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetSheetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetApplyAlignmentFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyBorderFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyFontFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyNumberFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyPatternFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyWidthHeightFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAutoFormatId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetSheetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
