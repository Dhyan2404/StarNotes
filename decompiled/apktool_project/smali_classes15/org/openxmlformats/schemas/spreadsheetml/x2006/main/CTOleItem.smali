.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItem;",
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

    const-string v2, "ctoleiteme3fatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItem;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleItem;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAdvise()Z
.end method

.method public abstract getIcon()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPreferPic()Z
.end method

.method public abstract isSetAdvise()Z
.end method

.method public abstract isSetIcon()Z
.end method

.method public abstract isSetPreferPic()Z
.end method

.method public abstract setAdvise(Z)V
.end method

.method public abstract setIcon(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPreferPic(Z)V
.end method

.method public abstract unsetAdvise()V
.end method

.method public abstract unsetIcon()V
.end method

.method public abstract unsetPreferPic()V
.end method

.method public abstract xgetAdvise()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIcon()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetPreferPic()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAdvise(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIcon(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetPreferPic(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
