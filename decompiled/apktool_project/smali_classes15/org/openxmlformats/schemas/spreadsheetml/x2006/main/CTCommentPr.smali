.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentPr;",
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

    const-string v2, "ctcommentprd920type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAnchor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectAnchor;
.end method

.method public abstract getAltText()Ljava/lang/String;
.end method

.method public abstract getAnchor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectAnchor;
.end method

.method public abstract getAutoFill()Z
.end method

.method public abstract getAutoLine()Z
.end method

.method public abstract getAutoScale()Z
.end method

.method public abstract getDefaultSize()Z
.end method

.method public abstract getDisabled()Z
.end method

.method public abstract getJustLastX()Z
.end method

.method public abstract getLockText()Z
.end method

.method public abstract getLocked()Z
.end method

.method public abstract getPrint()Z
.end method

.method public abstract getTextHAlign()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;
.end method

.method public abstract getTextVAlign()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextVAlign$Enum;
.end method

.method public abstract isSetAltText()Z
.end method

.method public abstract isSetAutoFill()Z
.end method

.method public abstract isSetAutoLine()Z
.end method

.method public abstract isSetAutoScale()Z
.end method

.method public abstract isSetDefaultSize()Z
.end method

.method public abstract isSetDisabled()Z
.end method

.method public abstract isSetJustLastX()Z
.end method

.method public abstract isSetLockText()Z
.end method

.method public abstract isSetLocked()Z
.end method

.method public abstract isSetPrint()Z
.end method

.method public abstract isSetTextHAlign()Z
.end method

.method public abstract isSetTextVAlign()Z
.end method

.method public abstract setAltText(Ljava/lang/String;)V
.end method

.method public abstract setAnchor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTObjectAnchor;)V
.end method

.method public abstract setAutoFill(Z)V
.end method

.method public abstract setAutoLine(Z)V
.end method

.method public abstract setAutoScale(Z)V
.end method

.method public abstract setDefaultSize(Z)V
.end method

.method public abstract setDisabled(Z)V
.end method

.method public abstract setJustLastX(Z)V
.end method

.method public abstract setLockText(Z)V
.end method

.method public abstract setLocked(Z)V
.end method

.method public abstract setPrint(Z)V
.end method

.method public abstract setTextHAlign(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign$Enum;)V
.end method

.method public abstract setTextVAlign(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextVAlign$Enum;)V
.end method

.method public abstract unsetAltText()V
.end method

.method public abstract unsetAutoFill()V
.end method

.method public abstract unsetAutoLine()V
.end method

.method public abstract unsetAutoScale()V
.end method

.method public abstract unsetDefaultSize()V
.end method

.method public abstract unsetDisabled()V
.end method

.method public abstract unsetJustLastX()V
.end method

.method public abstract unsetLockText()V
.end method

.method public abstract unsetLocked()V
.end method

.method public abstract unsetPrint()V
.end method

.method public abstract unsetTextHAlign()V
.end method

.method public abstract unsetTextVAlign()V
.end method

.method public abstract xgetAltText()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetAutoFill()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAutoLine()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAutoScale()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDefaultSize()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDisabled()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetJustLastX()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLockText()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLocked()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPrint()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTextHAlign()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign;
.end method

.method public abstract xgetTextVAlign()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextVAlign;
.end method

.method public abstract xsetAltText(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetAutoFill(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAutoLine(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAutoScale(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDefaultSize(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDisabled(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetJustLastX(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLockText(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLocked(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPrint(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTextHAlign(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextHAlign;)V
.end method

.method public abstract xsetTextVAlign(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextVAlign;)V
.end method
