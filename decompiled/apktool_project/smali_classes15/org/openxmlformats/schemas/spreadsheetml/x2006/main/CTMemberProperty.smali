.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMemberProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMemberProperty;",
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

    const-string v2, "ctmemberpropertyd0d8type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMemberProperty;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMemberProperty;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getField()J
.end method

.method public abstract getLevel()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameLen()J
.end method

.method public abstract getPLen()J
.end method

.method public abstract getPPos()J
.end method

.method public abstract getShowAsCaption()Z
.end method

.method public abstract getShowCell()Z
.end method

.method public abstract getShowTip()Z
.end method

.method public abstract isSetLevel()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNameLen()Z
.end method

.method public abstract isSetPLen()Z
.end method

.method public abstract isSetPPos()Z
.end method

.method public abstract isSetShowAsCaption()Z
.end method

.method public abstract isSetShowCell()Z
.end method

.method public abstract isSetShowTip()Z
.end method

.method public abstract setField(J)V
.end method

.method public abstract setLevel(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNameLen(J)V
.end method

.method public abstract setPLen(J)V
.end method

.method public abstract setPPos(J)V
.end method

.method public abstract setShowAsCaption(Z)V
.end method

.method public abstract setShowCell(Z)V
.end method

.method public abstract setShowTip(Z)V
.end method

.method public abstract unsetLevel()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNameLen()V
.end method

.method public abstract unsetPLen()V
.end method

.method public abstract unsetPPos()V
.end method

.method public abstract unsetShowAsCaption()V
.end method

.method public abstract unsetShowCell()V
.end method

.method public abstract unsetShowTip()V
.end method

.method public abstract xgetField()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetLevel()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetNameLen()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetPLen()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetPPos()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetShowAsCaption()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowCell()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowTip()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetField(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetLevel(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetNameLen(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetPLen(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetPPos(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetShowAsCaption(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowCell(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowTip(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
