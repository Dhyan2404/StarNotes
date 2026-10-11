.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;",
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

    const-string v2, "cttablestyleinfo499atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getShowColumnStripes()Z
.end method

.method public abstract getShowFirstColumn()Z
.end method

.method public abstract getShowLastColumn()Z
.end method

.method public abstract getShowRowStripes()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetShowColumnStripes()Z
.end method

.method public abstract isSetShowFirstColumn()Z
.end method

.method public abstract isSetShowLastColumn()Z
.end method

.method public abstract isSetShowRowStripes()Z
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setShowColumnStripes(Z)V
.end method

.method public abstract setShowFirstColumn(Z)V
.end method

.method public abstract setShowLastColumn(Z)V
.end method

.method public abstract setShowRowStripes(Z)V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetShowColumnStripes()V
.end method

.method public abstract unsetShowFirstColumn()V
.end method

.method public abstract unsetShowLastColumn()V
.end method

.method public abstract unsetShowRowStripes()V
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetShowColumnStripes()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowFirstColumn()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowLastColumn()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowRowStripes()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetShowColumnStripes(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowFirstColumn(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowLastColumn(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowRowStripes(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
