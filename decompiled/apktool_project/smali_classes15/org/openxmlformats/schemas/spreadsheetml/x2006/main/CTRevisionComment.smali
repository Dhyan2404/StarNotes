.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionComment;",
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

    const-string v2, "ctrevisioncomment6c63type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionComment;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionComment;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRevisionAction$Enum;
.end method

.method public abstract getAlwaysShow()Z
.end method

.method public abstract getAuthor()Ljava/lang/String;
.end method

.method public abstract getCell()Ljava/lang/String;
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getHiddenColumn()Z
.end method

.method public abstract getHiddenRow()Z
.end method

.method public abstract getNewLength()J
.end method

.method public abstract getOld()Z
.end method

.method public abstract getOldLength()J
.end method

.method public abstract getSheetId()J
.end method

.method public abstract isSetAction()Z
.end method

.method public abstract isSetAlwaysShow()Z
.end method

.method public abstract isSetHiddenColumn()Z
.end method

.method public abstract isSetHiddenRow()Z
.end method

.method public abstract isSetNewLength()Z
.end method

.method public abstract isSetOld()Z
.end method

.method public abstract isSetOldLength()Z
.end method

.method public abstract setAction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRevisionAction$Enum;)V
.end method

.method public abstract setAlwaysShow(Z)V
.end method

.method public abstract setAuthor(Ljava/lang/String;)V
.end method

.method public abstract setCell(Ljava/lang/String;)V
.end method

.method public abstract setGuid(Ljava/lang/String;)V
.end method

.method public abstract setHiddenColumn(Z)V
.end method

.method public abstract setHiddenRow(Z)V
.end method

.method public abstract setNewLength(J)V
.end method

.method public abstract setOld(Z)V
.end method

.method public abstract setOldLength(J)V
.end method

.method public abstract setSheetId(J)V
.end method

.method public abstract unsetAction()V
.end method

.method public abstract unsetAlwaysShow()V
.end method

.method public abstract unsetHiddenColumn()V
.end method

.method public abstract unsetHiddenRow()V
.end method

.method public abstract unsetNewLength()V
.end method

.method public abstract unsetOld()V
.end method

.method public abstract unsetOldLength()V
.end method

.method public abstract xgetAction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRevisionAction;
.end method

.method public abstract xgetAlwaysShow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAuthor()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;
.end method

.method public abstract xgetGuid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetHiddenColumn()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHiddenRow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNewLength()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetOld()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetOldLength()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSheetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetAction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRevisionAction;)V
.end method

.method public abstract xsetAlwaysShow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAuthor(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;)V
.end method

.method public abstract xsetGuid(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetHiddenColumn(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHiddenRow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNewLength(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetOld(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetOldLength(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSheetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
